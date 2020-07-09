// Test bench for TrackBuilder
#include "TrackBuilder.h"

#include <algorithm>
#include <iterator>
#include <cstring>

#include "FileReadUtility.h"
#include "Constants.h"

const int nevents = 100;  //number of events to run

using namespace std;

int main()
{
  // error counts
  int err = 0;

  ///////////////////////////
  // input memories
  static TrackletParameterMemory trackletParameters[12];
  static FullMatchMemory<BARREL> barrelFullMatches[16];
  static FullMatchMemory<DISK> diskFullMatches[16];

  // output memories
  static TrackFitMemory tracks;

  ///////////////////////////
  // open input files
  cout << "Open files..." << endl;

  const string dir = "TB_L1L2";

  ifstream fin_tpar0;
  if (not openDataFile(fin_tpar0, dir + "/TrackletParameters_TPAR_L1L2A_04.dat")) return -1;

  ifstream fin_tpar1;
  if (not openDataFile(fin_tpar1, dir + "/TrackletParameters_TPAR_L1L2B_04.dat")) return -1;

  ifstream fin_tpar2;
  if (not openDataFile(fin_tpar2, dir + "/TrackletParameters_TPAR_L1L2C_04.dat")) return -1;

  ifstream fin_tpar3;
  if (not openDataFile(fin_tpar3, dir + "/TrackletParameters_TPAR_L1L2D_04.dat")) return -1;

  ifstream fin_tpar4;
  if (not openDataFile(fin_tpar4, dir + "/TrackletParameters_TPAR_L1L2E_04.dat")) return -1;

  ifstream fin_tpar5;
  if (not openDataFile(fin_tpar5, dir + "/TrackletParameters_TPAR_L1L2F_04.dat")) return -1;

  ifstream fin_tpar6;
  if (not openDataFile(fin_tpar6, dir + "/TrackletParameters_TPAR_L1L2G_04.dat")) return -1;

  ifstream fin_tpar7;
  if (not openDataFile(fin_tpar7, dir + "/TrackletParameters_TPAR_L1L2H_04.dat")) return -1;

  ifstream fin_tpar8;
  if (not openDataFile(fin_tpar8, dir + "/TrackletParameters_TPAR_L1L2I_04.dat")) return -1;

  ifstream fin_tpar9;
  if (not openDataFile(fin_tpar9, dir + "/TrackletParameters_TPAR_L1L2J_04.dat")) return -1;

  ifstream fin_tpar10;
  if (not openDataFile(fin_tpar10, dir + "/TrackletParameters_TPAR_L1L2K_04.dat")) return -1;

  ifstream fin_tpar11;
  if (not openDataFile(fin_tpar11, dir + "/TrackletParameters_TPAR_L1L2L_04.dat")) return -1;

  ifstream fin_barrelFM0;
  if (not openDataFile(fin_barrelFM0, dir + "/FullMatches_FM_L1L2_L3PHIA_04.dat")) return -1;

  ifstream fin_barrelFM1;
  if (not openDataFile(fin_barrelFM1, dir + "/FullMatches_FM_L1L2_L3PHIB_04.dat")) return -1;

  ifstream fin_barrelFM2;
  if (not openDataFile(fin_barrelFM2, dir + "/FullMatches_FM_L1L2_L3PHIC_04.dat")) return -1;

  ifstream fin_barrelFM3;
  if (not openDataFile(fin_barrelFM3, dir + "/FullMatches_FM_L1L2_L3PHID_04.dat")) return -1;

  ifstream fin_barrelFM4;
  if (not openDataFile(fin_barrelFM4, dir + "/FullMatches_FM_L1L2_L4PHIA_04.dat")) return -1;

  ifstream fin_barrelFM5;
  if (not openDataFile(fin_barrelFM5, dir + "/FullMatches_FM_L1L2_L4PHIB_04.dat")) return -1;

  ifstream fin_barrelFM6;
  if (not openDataFile(fin_barrelFM6, dir + "/FullMatches_FM_L1L2_L4PHIC_04.dat")) return -1;

  ifstream fin_barrelFM7;
  if (not openDataFile(fin_barrelFM7, dir + "/FullMatches_FM_L1L2_L4PHID_04.dat")) return -1;

  ifstream fin_barrelFM8;
  if (not openDataFile(fin_barrelFM8, dir + "/FullMatches_FM_L1L2_L5PHIA_04.dat")) return -1;

  ifstream fin_barrelFM9;
  if (not openDataFile(fin_barrelFM9, dir + "/FullMatches_FM_L1L2_L5PHIB_04.dat")) return -1;

  ifstream fin_barrelFM10;
  if (not openDataFile(fin_barrelFM10, dir + "/FullMatches_FM_L1L2_L5PHIC_04.dat")) return -1;

  ifstream fin_barrelFM11;
  if (not openDataFile(fin_barrelFM11, dir + "/FullMatches_FM_L1L2_L5PHID_04.dat")) return -1;

  ifstream fin_barrelFM12;
  if (not openDataFile(fin_barrelFM12, dir + "/FullMatches_FM_L1L2_L6PHIA_04.dat")) return -1;

  ifstream fin_barrelFM13;
  if (not openDataFile(fin_barrelFM13, dir + "/FullMatches_FM_L1L2_L6PHIB_04.dat")) return -1;

  ifstream fin_barrelFM14;
  if (not openDataFile(fin_barrelFM14, dir + "/FullMatches_FM_L1L2_L6PHIC_04.dat")) return -1;

  ifstream fin_barrelFM15;
  if (not openDataFile(fin_barrelFM15, dir + "/FullMatches_FM_L1L2_L6PHID_04.dat")) return -1;

  ifstream fin_diskFM0;
  if (not openDataFile(fin_diskFM0, dir + "/FullMatches_FM_L1L2_D1PHIA_04.dat")) return -1;

  ifstream fin_diskFM1;
  if (not openDataFile(fin_diskFM1, dir + "/FullMatches_FM_L1L2_D1PHIB_04.dat")) return -1;

  ifstream fin_diskFM2;
  if (not openDataFile(fin_diskFM2, dir + "/FullMatches_FM_L1L2_D1PHIC_04.dat")) return -1;

  ifstream fin_diskFM3;
  if (not openDataFile(fin_diskFM3, dir + "/FullMatches_FM_L1L2_D1PHID_04.dat")) return -1;

  ifstream fin_diskFM4;
  if (not openDataFile(fin_diskFM4, dir + "/FullMatches_FM_L1L2_D2PHIA_04.dat")) return -1;

  ifstream fin_diskFM5;
  if (not openDataFile(fin_diskFM5, dir + "/FullMatches_FM_L1L2_D2PHIB_04.dat")) return -1;

  ifstream fin_diskFM6;
  if (not openDataFile(fin_diskFM6, dir + "/FullMatches_FM_L1L2_D2PHIC_04.dat")) return -1;

  ifstream fin_diskFM7;
  if (not openDataFile(fin_diskFM7, dir + "/FullMatches_FM_L1L2_D2PHID_04.dat")) return -1;

  ifstream fin_diskFM8;
  if (not openDataFile(fin_diskFM8, dir + "/FullMatches_FM_L1L2_D3PHIA_04.dat")) return -1;

  ifstream fin_diskFM9;
  if (not openDataFile(fin_diskFM9, dir + "/FullMatches_FM_L1L2_D3PHIB_04.dat")) return -1;

  ifstream fin_diskFM10;
  if (not openDataFile(fin_diskFM10, dir + "/FullMatches_FM_L1L2_D3PHIC_04.dat")) return -1;

  ifstream fin_diskFM11;
  if (not openDataFile(fin_diskFM11, dir + "/FullMatches_FM_L1L2_D3PHID_04.dat")) return -1;

  ifstream fin_diskFM12;
  if (not openDataFile(fin_diskFM12, dir + "/FullMatches_FM_L1L2_D4PHIA_04.dat")) return -1;

  ifstream fin_diskFM13;
  if (not openDataFile(fin_diskFM13, dir + "/FullMatches_FM_L1L2_D4PHIB_04.dat")) return -1;

  ifstream fin_diskFM14;
  if (not openDataFile(fin_diskFM14, dir + "/FullMatches_FM_L1L2_D4PHIC_04.dat")) return -1;

  ifstream fin_diskFM15;
  if (not openDataFile(fin_diskFM15, dir + "/FullMatches_FM_L1L2_D4PHID_04.dat")) return -1;

  ///////////////////////////
  // open output files
  ifstream fout_tracks;
  if (not openDataFile(fout_tracks, dir + "/TrackFit_TF_L1L2_04.dat")) return -1;

  ///////////////////////////
  // loop over events
  cout << "Start event loop ..." << endl;
  for (unsigned int ievt = 0; ievt < nevents; ++ievt) {
    cout << "Event: " << dec << ievt << endl;

    // read event and write to memories
    writeMemFromFile<TrackletParameterMemory>(trackletParameters[0], fin_tpar0, ievt);
    writeMemFromFile<TrackletParameterMemory>(trackletParameters[1], fin_tpar1, ievt);
    writeMemFromFile<TrackletParameterMemory>(trackletParameters[2], fin_tpar2, ievt);
    writeMemFromFile<TrackletParameterMemory>(trackletParameters[3], fin_tpar3, ievt);
    writeMemFromFile<TrackletParameterMemory>(trackletParameters[4], fin_tpar4, ievt);
    writeMemFromFile<TrackletParameterMemory>(trackletParameters[5], fin_tpar5, ievt);
    writeMemFromFile<TrackletParameterMemory>(trackletParameters[6], fin_tpar6, ievt);
    writeMemFromFile<TrackletParameterMemory>(trackletParameters[7], fin_tpar7, ievt);
    writeMemFromFile<TrackletParameterMemory>(trackletParameters[8], fin_tpar8, ievt);
    writeMemFromFile<TrackletParameterMemory>(trackletParameters[9], fin_tpar9, ievt);
    writeMemFromFile<TrackletParameterMemory>(trackletParameters[10], fin_tpar10, ievt);
    writeMemFromFile<TrackletParameterMemory>(trackletParameters[11], fin_tpar11, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[0], fin_barrelFM0, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[1], fin_barrelFM1, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[2], fin_barrelFM2, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[3], fin_barrelFM3, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[4], fin_barrelFM4, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[5], fin_barrelFM5, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[6], fin_barrelFM6, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[7], fin_barrelFM7, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[8], fin_barrelFM8, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[9], fin_barrelFM9, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[10], fin_barrelFM10, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[11], fin_barrelFM11, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[12], fin_barrelFM12, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[13], fin_barrelFM13, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[14], fin_barrelFM14, ievt);
    writeMemFromFile<FullMatchMemory<BARREL> >(barrelFullMatches[15], fin_barrelFM15, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[0], fin_diskFM0, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[1], fin_diskFM1, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[2], fin_diskFM2, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[3], fin_diskFM3, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[4], fin_diskFM4, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[5], fin_diskFM5, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[6], fin_diskFM6, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[7], fin_diskFM7, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[8], fin_diskFM8, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[9], fin_diskFM9, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[10], fin_diskFM10, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[11], fin_diskFM11, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[12], fin_diskFM12, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[13], fin_diskFM13, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[14], fin_diskFM14, ievt);
    writeMemFromFile<FullMatchMemory<DISK> >(diskFullMatches[15], fin_diskFM15, ievt);

    // bx
    BXType bx = ievt;

    // Unit Under Test
    TrackBuilder(bx, trackletParameters,
      barrelFullMatches[0],
      barrelFullMatches[1],
      barrelFullMatches[2],
      barrelFullMatches[3],
      barrelFullMatches[4],
      barrelFullMatches[5],
      barrelFullMatches[6],
      barrelFullMatches[7],
      barrelFullMatches[8],
      barrelFullMatches[9],
      barrelFullMatches[10],
      barrelFullMatches[11],
      barrelFullMatches[12],
      barrelFullMatches[13],
      barrelFullMatches[14],
      barrelFullMatches[15],
      diskFullMatches[0],
      diskFullMatches[1],
      diskFullMatches[2],
      diskFullMatches[3],
      diskFullMatches[4],
      diskFullMatches[5],
      diskFullMatches[6],
      diskFullMatches[7],
      diskFullMatches[8],
      diskFullMatches[9],
      diskFullMatches[10],
      diskFullMatches[11],
      diskFullMatches[12],
      diskFullMatches[13],
      diskFullMatches[14],
      diskFullMatches[15],
      tracks);

    bool truncate;
    const auto &pos = fout_tracks.tellg();

    // compare the computed outputs with the expected ones
    err += compareMemWithFile<TrackFitMemory,16,16,TrackFit::kTFLMapLSB,TrackFit::kTFTrackValidMSB>(tracks, fout_tracks, ievt, "\nTrack word", truncate);
    fout_tracks.clear(), fout_tracks.seekg(pos);
    err += compareMemWithFile<TrackFitMemory,16,16,TrackFit::kTFStub0ZResidLSB,TrackFit::kTFStub0ValidMSB>(tracks, fout_tracks, ievt, "\nStub 0 word", truncate);
    fout_tracks.clear(), fout_tracks.seekg(pos);
    err += compareMemWithFile<TrackFitMemory,16,16,TrackFit::kTFStub1ZResidLSB,TrackFit::kTFStub1ValidMSB>(tracks, fout_tracks, ievt, "\nStub 1 word", truncate);
    fout_tracks.clear(), fout_tracks.seekg(pos);
    err += compareMemWithFile<TrackFitMemory,16,16,TrackFit::kTFStub2ZResidLSB,TrackFit::kTFStub2ValidMSB>(tracks, fout_tracks, ievt, "\nStub 2 word", truncate);
    fout_tracks.clear(), fout_tracks.seekg(pos);
    err += compareMemWithFile<TrackFitMemory,16,16,TrackFit::kTFStub3ZResidLSB,TrackFit::kTFStub3ValidMSB>(tracks, fout_tracks, ievt, "\nStub 3 word", truncate);
    fout_tracks.clear(), fout_tracks.seekg(pos);
    err += compareMemWithFile<TrackFitMemory,16,16,TrackFit::kTFStub4RResidLSB,TrackFit::kTFStub4ValidMSB>(tracks, fout_tracks, ievt, "\nStub 4 word", truncate);
    fout_tracks.clear(), fout_tracks.seekg(pos);
    err += compareMemWithFile<TrackFitMemory,16,16,TrackFit::kTFStub5RResidLSB,TrackFit::kTFStub5ValidMSB>(tracks, fout_tracks, ievt, "\nStub 5 word", truncate);
    fout_tracks.clear(), fout_tracks.seekg(pos);
    err += compareMemWithFile<TrackFitMemory,16,16,TrackFit::kTFStub6RResidLSB,TrackFit::kTFStub6ValidMSB>(tracks, fout_tracks, ievt, "\nStub 6 word", truncate);
    fout_tracks.clear(), fout_tracks.seekg(pos);
    err += compareMemWithFile<TrackFitMemory,16,16,TrackFit::kTFStub7RResidLSB,TrackFit::kTFStub7ValidMSB>(tracks, fout_tracks, ievt, "\nStub 7 word", truncate);
    cout << endl;

  } // end of event loop

  return err;

}
