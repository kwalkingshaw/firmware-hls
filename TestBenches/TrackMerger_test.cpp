// TrackMerger test bench
#include "TrackMergerTop.h"
#include "FileReadUtility.h"
#include "hls_math.h"

#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <iterator>

const int nevents = 100;

using namespace std;

int main(){
    //Error counter
    int err_count = 0;
    
  // Input memories
  static TrackFitMemory inputTracks;

  // Output memories
  static TrackFitMemory outputTracks;

  // Open input files
  ifstream fin_inputTracks("../../../../../emData/TM/TM_L1L2/TrackFit_BT_L1L2_04.dat");
  assert(fin_inputTracks.good());
  ifstream fin_outputTracks("../../../../../emData/TM/TM_L1L2/TrackFit_PT_L1L2_04.dat");
  assert(fin_outputTracks.good());

  // Loop over events
  for (int ievt = 0; ievt < nevents; ++ievt) {
    cout << "Event: " << dec << ievt << endl;

    outputTracks.clear();

    // Read in next event from input
    writeMemFromFile<TrackFitMemory> (outputTracks, fin_outputTracks, ievt);

    // Set bunch crossing
    ap_uint<3> bx=ievt&0x7;

    // Unit under test
    TrackMergerTop(bx, inputTracks, outputTracks);

    // Comparing outputs
    err_count += compareMemWithFile<TrackFitMemory>(outputTracks, fin_outputTracks, ievt, "Tracks")

  }

  // Close files
  fin_inputTracks.close();
  fin_outputTracks.close();

  // Handling case of err%256 == 0 
  if (err_count > 255) err_count = 255;
  return err_count;

}
