#include "TrackBuilder.h"

void
getFMIndices(
    const BXType bx,
    const FullMatchMemory<BARREL> barrelFullMatches[16],
    const FullMatchMemory<DISK> diskFullMatches[16],
    unsigned short &iFMMem,
    unsigned short &iFM,
    bool &done
)
{
#pragma HLS loop_merge
  bool set = false;

  iFMMem = 0;
  done = false;

  barrel_fm_ndex: for (unsigned short i = 0; i < 16; i++) {
    if (!set && iFM >= barrelFullMatches[i].getEntries(bx))
      iFM -= barrelFullMatches[i].getEntries(bx), iFMMem++;
    else
      set = true;
  }
  disk_fm_ndex: for (unsigned short i = 0; i < 16; i++) {
    if (!set && iFM >= diskFullMatches[i].getEntries(bx))
      iFM -= diskFullMatches[i].getEntries(bx), iFMMem++;
    else
      set = true;
  }

  done = !set || iFMMem >= 32;
}

void
getTPARIndices(
    const BXType bx,
    const TrackletParameterMemory trackletParameters[12],
    unsigned short &iTPARMem,
    unsigned short &iTPAR,
    bool &done
)
{
  bool set = false;

  iTPARMem = 0;
  done = false;

  tpar_index: for (unsigned short i = 0; i < 12; i++) {
    if (!set && iTPAR >= trackletParameters[i].getEntries(bx))
      iTPAR -= trackletParameters[i].getEntries(bx), iTPARMem++;
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
//#pragma HLS inline recursive
#pragma HLS resource variable=trackletParameters.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches.get_mem() latency=2

  tracks.clear(bx);

  TrackFit unmergedTracks[12][kMemDepth];

  full_matches : for (unsigned i = 0; i < kMaxProc; i++) {
#pragma HLS pipeline II=1
#pragma HLS dependence variable=unmergedTracks inter false

    if (i < kMaxProc - 1) {
      unsigned short iFMMem;
      unsigned short iFM = i;
      bool done;
      getFMIndices(bx, barrelFullMatches, diskFullMatches, iFMMem, iFM, done);
      if (!done) {
        if (iFMMem < 16) {
          const FullMatch<BARREL> &fm = barrelFullMatches[iFMMem].read_mem(bx, iFM);
          const unsigned short &TCID = fm.getTCID();
          const unsigned short &trackletIndex = fm.getTrackletIndex();
          const TrackletParameters &tpar = trackletParameters[TCID].read_mem(bx, trackletIndex);
          TrackFit &track = unmergedTracks[TCID][trackletIndex];
          track.setTrackValid();
          track.setSeedType(TCID >> 4);
          track.setRinv(tpar.getRinv());
          track.setPhi0(tpar.getPhi0());
          track.setZ0(tpar.getZ0());
          track.setT(tpar.getT());
          switch (iFMMem >> 2) {
            case 0:
              track.setStub0(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
              break;
            case 1:
              track.setStub1(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
              break;
            case 2:
              track.setStub2(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
              break;
            case 3:
              track.setStub3(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
              break;
          }
        }
        else {
          const FullMatch<DISK> &fm = diskFullMatches[iFMMem - 16].read_mem(bx, iFM);
          const unsigned short &TCID = fm.getTCID();
          const unsigned short &trackletIndex = fm.getTrackletIndex();
          const TrackletParameters &tpar = trackletParameters[TCID].read_mem(bx, trackletIndex);
          TrackFit &track = unmergedTracks[TCID][trackletIndex];
          track.setTrackValid();
          track.setSeedType(TCID >> 4);
          track.setRinv(tpar.getRinv());
          track.setPhi0(tpar.getPhi0());
          track.setZ0(tpar.getZ0());
          track.setT(tpar.getT());
          switch (iFMMem >> 2) {
            case 0:
              track.setStub4(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
              break;
            case 1:
              track.setStub5(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
              break;
            case 2:
              track.setStub6(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
              break;
            case 3:
              track.setStub7(fm.getStubR(), fm.getPhiRes(), fm.getZRes());
              break;
          }
        }
      }
    }
    else {
#pragma HLS occurrence cycle=108
      mergeTracks (bx, unmergedTracks, tracks);
    }
  }
}

void
mergeTracks (const BXType bx, const TrackFit unmergedTracks[12][kMemDepth], TrackFitMemory &tracks)
{
  unsigned short nTracks = 0;
  merge_tracks : for (unsigned j = 0; j < 12 * kMemDepth; j++) {
#pragma HLS dependence variable=tracks.get_mem() inter false
    writeTrack (bx, unmergedTracks[j >> kNBits_MemAddr][j & 0x7F], tracks, nTracks);
  }
}

void
writeTrack (const BXType bx, const TrackFit &track, TrackFitMemory &tracks, unsigned short &nTracks)
{
  if (track.getNMatches() >= 2)
    tracks.write_mem(bx, track, nTracks++);
}
