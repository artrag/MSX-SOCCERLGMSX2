// Snapshot of all playback state — use YSCC_SaveState / YSCC_LoadState
// to suspend a track and resume it later from the exact position.
typedef struct {
    u16  SamplePos;          // byte offset within current 8KB ROM bank
    u16  SamplePage;         // current ROM segment number
    u16  NumBlocksToPlay;    // 128-byte blocks remaining
    u16  CurrentSegment;     // g_currentSCCPlayingSegment (0xFFFF = stopped)
    u16  StartSeg;           // first segment of the track (for loop restart)
    u16  TotalBlocks;        // total blocks in the track (for loop restart)
    bool Loop;               // TRUE = infinite loop mode
} YSCC_State;

// Tracked OFFR value — updated by CallSpriteFrame each time OFFR changes.
// _YSCC_CopyPCMBlock uses this to save/restore OFFR around audio access.
extern volatile u8 g_YSCC_CurrentOFFR;

void YSCC_Init();
// Call from main-loop context only (never from ISR).
// Sets OFFR (0x7FFE) to match the current audio segment before WaitForVBlank,
// then call YSCC_RestoreOFFR after WaitForVBlank to put OFFR back to 0.
void YSCC_SetOFFRForAudio();
void YSCC_RestoreOFFR();
void YSCC_Play(u16 start_seg, u32 byte_size);
void YSCC_PlayLoop(u16 start_seg, u32 byte_size);
void YSCC_Stop();
void YSCC_Pause();
void YSCC_Resume();
bool YSCC_IsPlaying();
bool YSCC_IsPaused();
bool YSCC_Decode();
void _YSCC_CopyPCMBlock();
u16  YSCC_GetFirstSegmentOfCurrentPlaying();
void YSCC_SaveState(YSCC_State* out);
void YSCC_LoadState(const YSCC_State* in);
u8 _YSCC_GetVdpFrequency();
