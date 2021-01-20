#include "TrackMerger.h"


void TrackMerger(const BXType bx, static TrackFitMemory inputTracks, static TrackFitMemory outputTracks){
ifstream fin_inputTracks("../../../../../emData/TM/TM_L1L2/TrackFit_BT_L1L2_04.dat");
writeMemFromFile<TrackFitMemory>(inputTracks, fin_inputTracks);
// loop over all tracks to copy input tracks to output tracks
int number_of_entries = inputTracks.read_mem(0);
for(int i = 0; i < number_of_entries; i++) {
    auto inputTrack = inputTracks.read_mem(i);
    outputTracks.write_mem(i, inputTrack);
}
}