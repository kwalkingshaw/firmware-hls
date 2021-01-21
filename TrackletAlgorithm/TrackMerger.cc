#include "TrackMerger.h"

void TrackMerger(const BXType bx, TrackFitMemory inputTracks, TrackFitMemory outputTracks){
    for(int i =0; i < inputTracks.getEntries(bx); i++){
        auto inputTrack = inputTracks.read_mem(bx, read_addr);
         outputTracks.write_mem(bx, inputTrack, read_addr);
    }
}