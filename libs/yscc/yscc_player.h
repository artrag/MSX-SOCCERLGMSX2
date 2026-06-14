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

void YSCC_Init();
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
