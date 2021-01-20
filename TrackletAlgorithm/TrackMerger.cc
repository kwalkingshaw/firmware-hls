#include "TrackMerger.h"


void TrackMerger(const BXType bx, TrackFitMemory inputTracks, TrackFitMemory outputTracks){
    // loop over all tracks to copy input tracks to output tracks
    int number_of_entries = inputTracks.read_mem(0);
    for(int i = 0; i < number_of_entries; i++) {
        auto inputTrack = inputTracks.read_mem(i);
        outputTracks.write_mem(i, inputTrack);
    }
}