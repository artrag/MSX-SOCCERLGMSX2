#include "msxgl.h"
#include "yscc_player.h"
#include "debug.h"

u16          g_YSCC_SamplePos;
u16          g_YSCC_SamplePage;
volatile u16 g_YSCC_NumBlocksToPlay;
u16          g_YSCC_Period;
static u16   s_YSCC_SavedSeg3;
u16           g_currentSCCPlayingSegment=0xFFFF;
static u16   s_YSCC_StartSeg;      // start segment (for loop/restart)
static u16   s_YSCC_TotalBlocks;   // Blocks amount (for loop/restart)
static bool  s_YSCC_Loop;          // TRUE = Infinite loop
static bool  s_YSCC_Paused;        // TRUE = riproduzione in pausa


// INTERNAL Wave SCC table SCC reset and channels deactivating
// NOTE: uses DJNZ direct-write loop instead of LDIR trick to avoid
// reading from SCC hardware registers during ISR context.
static void _YSCC_Silence() {
    __asm
        xor  a
        ld   (0x988F), a        ; CH_ENABLE = 0 (tutti i canali off)
        ld   b, #0x80           ; 128 bytes (0x9800-0x987F)
        ld   hl, #0x9800
    _YSCC_Silence_fill:
        ld   (hl), a            ; write 0 from register A (no SCC read)
        inc  hl
        djnz _YSCC_Silence_fill
    __endasm;
}

// Module initialization
void YSCC_Init() {
    if (_YSCC_GetVdpFrequency() == 0) {
        g_YSCC_Period = 0x08BD; 
    } else {
        g_YSCC_Period = 0x0749; 
    }
    s_YSCC_Loop    = FALSE;
    s_YSCC_Paused  = FALSE;

    SET_BANK_SEGMENT(2, 0x3F);

    __asm
        ld   hl, #0x9000
        ld   (hl), #0x3F        ; attiva SCC
        push af
        push hl
        ld   a, #0x20
        ld   (0x98E0), a        ; deformation register
        ld   (0x98C0), a        ; SCC+ compat
        xor  a
        ld   (0x988E), a        ; vol ch5 = 0
        ld   (0x988F), a        ; CH_ENABLE = 0
        ld   a, #0x0F
        ld   (0x988A), a        ; vol ch1 = max
        ld   (0x988B), a        ; vol ch2 = max
        ld   (0x988C), a        ; vol ch3 = max
        ld   (0x988D), a        ; vol ch4 = max
        ld   hl, (_g_YSCC_Period)
        ld   (0x9880), hl       ; periodo ch1
        ld   (0x9882), hl       ; periodo ch2
        ld   (0x9884), hl       ; periodo ch3
        ld   (0x9886), hl       ; periodo ch4
        ld   hl, #0
        ld   (0x9888), hl       ; periodo ch5 = 0
        pop  hl
        pop  af
    __endasm;
}

// Get the first segment of active song
u16 YSCC_GetFirstSegmentOfCurrentPlaying(){
    return g_currentSCCPlayingSegment; 
}
void YSCC_Stop() {
    g_currentSCCPlayingSegment=0xFFFF;
    g_YSCC_NumBlocksToPlay = 0;
    s_YSCC_Paused = FALSE;
    _YSCC_Silence();
}

// Palying pause
void YSCC_Pause() {
    if (!s_YSCC_Paused && g_YSCC_NumBlocksToPlay > 0) {
        s_YSCC_Paused = TRUE;
        __asm
            xor a
            ld  (0x988F), a     ; CH_ENABLE = 0
        __endasm;
    }
}

// Playing resume
void YSCC_Resume() {
    s_YSCC_Paused = FALSE;
}

// Check if playing is active
bool YSCC_IsPlaying() {
    return (g_YSCC_NumBlocksToPlay > 0) && !s_YSCC_Paused;
}

// Check if playing is paused
bool YSCC_IsPaused() {
    return s_YSCC_Paused;
}

// Play
void YSCC_Play(u16 start_seg, u32 byte_size) {
    YSCC_Stop();
    g_currentSCCPlayingSegment=start_seg;
    s_YSCC_StartSeg    = start_seg;
    s_YSCC_TotalBlocks = (u16)((byte_size + 127) / 128);
    s_YSCC_Loop        = FALSE;
    g_YSCC_SamplePage  = start_seg;
    g_YSCC_SamplePos   = 0;
    g_YSCC_NumBlocksToPlay = s_YSCC_TotalBlocks;
}

// Play with loop
void YSCC_PlayLoop(u16 start_seg, u32 byte_size) {
    YSCC_Play(start_seg, byte_size);
    s_YSCC_Loop = TRUE;
}


// Decode data
bool YSCC_Decode() {
    if (s_YSCC_Paused || g_YSCC_NumBlocksToPlay == 0)
        return FALSE;

    _YSCC_CopyPCMBlock();

    __asm
        ld   a, #0x0F
        ld   (0x988F), a        ; abilita canali 1-4
    __endasm;

    g_YSCC_NumBlocksToPlay--;

    if (g_YSCC_NumBlocksToPlay == 0) {
        if (s_YSCC_Loop) {
            // ricomincia dall'inizio
            g_YSCC_SamplePage      = s_YSCC_StartSeg;
            g_YSCC_SamplePos       = 0;
            g_YSCC_NumBlocksToPlay = s_YSCC_TotalBlocks;
        } else {
            if(!s_YSCC_Loop){
                g_currentSCCPlayingSegment=0xFFFF;
            }
            // Disable channels only; wave table will be zeroed by YSCC_Stop
            // at next YSCC_Play call. Calling _YSCC_Silence() from inside the
            // VBlank ISR (DJNZ loop over 128 bytes) was causing a HALT at
            // end-of-song due to context/timing issues.
            __asm
                xor  a
                ld   (0x988F), a    ; CH_ENABLE = 0 (tutti i canali off)
            __endasm;
        }
        return TRUE;            // segnala fine ciclo al chiamante
    }
    return FALSE;
}

// INTERNAL Copy block
void _YSCC_CopyPCMBlock() {
    s_YSCC_SavedSeg3 = GET_BANK_SEGMENT(3);
    // Write bank3 directly WITHOUT touching OFFR (0x7FFE).
    // SET_BANK_SEGMENT would overwrite OFFR, corrupting sprite rendering
    // that may be in progress in the main loop with OFFR = 0xC0.
    // Audio segments are always < 256 so OFFR = 0 is assumed (not written).
    __asm
        ld   a, (_g_YSCC_SamplePage)
        ld   ((_g_Bank0Segment + 6)), a   ; cache LOW = audio seg
        xor  a
        ld   ((_g_Bank0Segment + 7)), a   ; cache HIGH = 0
        ld   a, (_g_YSCC_SamplePage)
        ld   (#0xB000), a                  ; hardware bank3 (no OFFR write)
    __endasm;

    __asm
        ; HL = 0xA000 + g_YSCC_SamplePos  (sorgente diretta in Bank3)
        ld   hl, (_g_YSCC_SamplePos)
        ld   bc, #0xA000
        add  hl, bc

        ; --- CH1 PASS1: 21 byte HL → 0x9800 ---
        ld   de, #0x9800
        ld   bc, #0x0015
        ldir                        ; HL = base+21
        push hl                     ; salva per CH1 PASS2
        ld   a, (_g_YSCC_Period + 1)
        ld   (0x9881), a            ; phase reset CH1

        ; salta 11 byte a CH2 (base+32)
        ld   bc, #0x000B
        add  hl, bc

        ; --- CH2 PASS1: 21 byte HL → 0x9820 ---
        ld   de, #0x9820
        ld   bc, #0x0015
        ldir                        ; HL = base+53
        push hl                     ; salva per CH2 PASS2
        ld   (0x9883), a            ; phase reset CH2 (A ancora valido)

        ; salta 11 byte a CH3 (base+64)
        ld   bc, #0x000B
        add  hl, bc

        ; --- CH3 PASS1: 21 byte HL → 0x9840 ---
        ld   de, #0x9840
        ld   bc, #0x0015
        ldir                        ; HL = base+85
        push hl                     ; salva per CH3 PASS2
        ld   (0x9885), a            ; phase reset CH3

        ; salta 11 byte a CH4 (base+96)
        ld   bc, #0x000B
        add  hl, bc

        ; --- CH4 PASS1: 21 byte HL → 0x9860 ---
        ld   de, #0x9860
        ld   bc, #0x0015
        ldir                        ; HL = base+117
        ld   (0x9887), a            ; phase reset CH4

        ; --- PASS2: ultimi 11 byte per canale (stack in ordine inverso) ---

        ; CH4 PASS2 (HL = base+117)
        ld   de, #0x9875
        ld   bc, #0x000B
        ldir

        ; CH3 PASS2
        pop  hl                     ; HL = base+85
        ld   de, #0x9855
        ld   bc, #0x000B
        ldir

        ; CH2 PASS2
        pop  hl                     ; HL = base+53
        ld   de, #0x9835
        ld   bc, #0x000B
        ldir

        ; CH1 PASS2
        pop  hl                     ; HL = base+21
        ld   de, #0x9815
        ld   bc, #0x000B
        ldir
    __endasm;

    // Restore bank3 directly WITHOUT touching OFFR (same reason as above).
    __asm
        ld   de, (_s_YSCC_SavedSeg3)
        ld   ((_g_Bank0Segment + 6)), de   ; restore full u16 cache
        ld   a, e                           ; low byte of saved segment
        ld   (#0xB000), a                   ; hardware bank3 (no OFFR write)
    __endasm;

    g_YSCC_SamplePos += 128;
    if (g_YSCC_SamplePos >= (u16)0x2000) {
        g_YSCC_SamplePage++;
        g_YSCC_SamplePos = 0;
    }
}

// Save all playback state to *out. Playback continues uninterrupted.
void YSCC_SaveState(YSCC_State* out) {
    out->SamplePos       = g_YSCC_SamplePos;
    out->SamplePage      = g_YSCC_SamplePage;
    out->NumBlocksToPlay = g_YSCC_NumBlocksToPlay;
    out->CurrentSegment  = g_currentSCCPlayingSegment;
    out->StartSeg        = s_YSCC_StartSeg;
    out->TotalBlocks     = s_YSCC_TotalBlocks;
    out->Loop            = s_YSCC_Loop;
}

// Restore playback from a saved state.
// SCC channels are silenced for at most one VBlank; the next YSCC_Decode()
// writes the correct waveforms and re-enables them automatically.
void YSCC_LoadState(const YSCC_State* in) {
    __asm
        xor a
        ld  (0x988F), a     ; CH_ENABLE = 0  (silence during state switch)
    __endasm;
    g_YSCC_SamplePos           = in->SamplePos;
    g_YSCC_SamplePage          = in->SamplePage;
    g_YSCC_NumBlocksToPlay     = in->NumBlocksToPlay;
    g_currentSCCPlayingSegment = in->CurrentSegment;
    s_YSCC_StartSeg            = in->StartSeg;
    s_YSCC_TotalBlocks         = in->TotalBlocks;
    s_YSCC_Loop                = in->Loop;
    s_YSCC_Paused              = FALSE;
}
u8 _YSCC_GetVdpFrequency() {
    u8 result;
    
    __asm
        ld  a, (#0xFFE8)    ; Legge lo specchio del Registro 9 del VDP
        bit 1, a            ; Controlla il bit NT (0=50Hz, 1=60Hz)
        jr  z, is_pal
        ld  l, #1           ; SDCC restituisce i valori a 8 bit nel registro L
        jr  end_asm
    is_pal:
        ld  l, #0
    end_asm:
    __endasm;
    
    // Nota: Non serve un "return result" esplicito se hai caricato L in asm,
    // ma per chiarezza con il compilatore spesso si usa una variabile d'appoggio.
}