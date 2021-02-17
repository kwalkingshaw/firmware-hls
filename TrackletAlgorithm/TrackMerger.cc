#include "TrackMerger.h"

void TrackMerger(const BXType bx, TrackFitMemory inputTracks, TrackFitMemory outputTracks){
    for(int i =0; i < inputTracks.getEntries(bx); i++){
        auto inputTrack = inputTracks.read_mem(bx, read_addr);
         outputTracks.write_mem(bx, inputTrack, read_addr);
    }



    // Comparison module
    //count stubs in common, looking at stubs with smallest phi residual


    // if there are > 3 stubs in common, merge tracks into single track

    // assign helix params according to best seed type


}