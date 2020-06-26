#include "TrackBuilder.h"

void
getFMIndices(
    const BXType bx,
    const FullMatchMemory<BARREL> barrelFullMatches[16],
    const FullMatchMemory<DISK> diskFullMatches[16],
    short &iFMMem,
    short &iFM,
    bool &done
)
{
#pragma HLS loop_merge
  bool set = false;

  iFMMem = 0;
  done = false;

  barrel_index: for (short j = 0; j < 16; j++) {
    if (!set && iFM >= barrelFullMatches[j].getEntries(bx))
      iFM -= barrelFullMatches[j].getEntries(bx), iFMMem++;
    else
      set = true;
  }
  disk_index: for (short j = 0; j < 16; j++) {
    if (!set && iFM >= diskFullMatches[j].getEntries(bx))
      iFM -= diskFullMatches[j].getEntries(bx), iFMMem++;
    else
      set = true;
  }

  done = !set || iFMMem >= 32;
}

void
getTPARIndices(
    const BXType bx,
    const TrackletParameterMemory trackletParameters[12],
    short &iTPARMem,
    short &iTPAR,
    bool &done
)
{
  bool set = false;

  iTPARMem = 0;
  done = false;

  tpar_index: for (short j = 0; j < 12; j++) {
    if (!set && iTPAR >= trackletParameters[j].getEntries(bx))
      iTPAR -= trackletParameters[j].getEntries(bx), iTPARMem++;
    else
      set = true;
  }

  done = !set || iTPARMem >= 12;
}

void TrackBuilder(
    const BXType bx,
    const TrackletParameterMemory trackletParameters[12],
    const FullMatchMemory<BARREL> barrelFullMatches[16],
    const FullMatchMemory<DISK> diskFullMatches[16],
    TrackFitMemory &tracks
)
{
#pragma HLS inline recursive
#pragma HLS resource variable=trackletParameters.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches.get_mem() latency=2

  tracks.clear(bx);

  TrackFit unmergedTracks[12][kMemDepth];
  full_matches : for (unsigned short i = 0; i < kMaxProc; i++) {
#pragma HLS pipeline II=1
#pragma HLS dependence variable=unmergedTracks inter false

    short iFMMem;
    short iFM = i;
    bool done;

    getFMIndices(bx, barrelFullMatches, diskFullMatches, iFMMem, iFM, done);
    if (!done) {
      if (iFMMem < 16) {
        const FullMatch<BARREL> &fm = barrelFullMatches[iFMMem].read_mem(bx, iFM);
        const auto &TCID = fm.getTCID();
        const auto &trackletIndex = fm.getTrackletIndex();
        switch (iFMMem >> 2) {
          case 0:
            unmergedTracks[TCID][trackletIndex].setStub0(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
            break;
          case 1:
            unmergedTracks[TCID][trackletIndex].setStub1(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
            break;
          case 2:
            unmergedTracks[TCID][trackletIndex].setStub2(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
            break;
          case 3:
            unmergedTracks[TCID][trackletIndex].setStub3(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
            break;
        }
      }
      else {
        const FullMatch<DISK> &fm = diskFullMatches[iFMMem - 16].read_mem(bx, iFM);
        const auto &TCID = fm.getTCID();
        const auto &trackletIndex = fm.getTrackletIndex();
        switch (iFMMem >> 2) {
          case 0:
            unmergedTracks[TCID][trackletIndex].setStub4(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
            break;
          case 1:
            unmergedTracks[TCID][trackletIndex].setStub5(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
            break;
          case 2:
            unmergedTracks[TCID][trackletIndex].setStub6(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
            break;
          case 3:
            unmergedTracks[TCID][trackletIndex].setStub7(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
            break;
        }
      }
    }
  }

  unsigned short nTracks = 0;
  tracks : for (unsigned short i = 0; i < kMaxProc; i++) {
#pragma HLS pipeline II=1

    short iTPARMem;
    short iTPAR = i;
    bool done;

    getTPARIndices(bx, trackletParameters, iTPARMem, iTPAR, done);
    const short &TCID = iTPARMem;
    const TrackletParameters &tpar = trackletParameters[iTPARMem].read_mem(bx, iTPAR);
    TrackFit track(unmergedTracks[iTPARMem][iTPAR]);
    track.setTrackValid();
    track.setSeedType(TCID >> 4);
    track.setRinv(tpar.getRinv());
    track.setPhi0(tpar.getPhi0());
    track.setZ0(tpar.getZ0());
    track.setT(tpar.getT());
    if (track.getNMatches() >= 2) {
      track.setTrackIndex(nTracks);
      tracks.write_mem(bx, track, nTracks++);
    }
  }
}
