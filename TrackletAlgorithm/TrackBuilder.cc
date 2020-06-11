#include "TrackBuilder.h"

void
getIndices(
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

  index: for (short j = 0; j < 12; j++) {
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
  tracks.clear(bx);
  unsigned short nTracks = 0;

  std::cout << "[" << __FILE__ << ":" << __LINE__ << "] " << __PRETTY_FUNCTION__ << std::endl; // HART
  tracks : for (unsigned short i = 0; i < kMaxProc; i++) {
#pragma HLS pipeline II=1

    short iTPARMem;
    short iTPAR = i;
    bool done;

    getIndices(bx, trackletParameters, iTPARMem, iTPAR, done);
    const short &TCID = iTPARMem;
    const TrackletParameters &tpar = trackletParameters[iTPARMem].read_mem(bx, iTPAR);
    TrackFit tf(1, TCID >> 4, tpar.getRinv(), tpar.getPhi0(), tpar.getZ0(), tpar.getT());
    std::cout << "  tracklet " << std::dec << i << std::hex << ": seed type = " << (TCID >> 4) << ", rinv = " << tpar.getRinv() << ", phi0 = " << tpar.getPhi0() << ", z0 = " << tpar.getZ0() << ", t = " << tpar.getT() << std::dec << std::endl; // HART
    std::cout << "    track fit object: seed type = " << std::hex << tf.getSeedType() << ", rinv = " << tf.getRinv() << ", phi0 = " << tf.getPhi0() << ", z0 = " << tf.getZ0() << ", t = " << tf.getT() << std::dec << std::endl; // HART

    if (!done) {
      barrel_full_match_memories : for (unsigned short j = 0; j < 16; j++) {
        barrel_full_matches : for (unsigned short k = 0; k < kMemDepth; k++) {
          if (k < barrelFullMatches[j].getEntries(bx)) {
            const FullMatch<BARREL> &fm = barrelFullMatches[j].read_mem(bx, k);
            if (fm.getTCID() == TCID && fm.getTrackletIndex() == iTPAR) {
              switch (j >> 2) {
                case 0:
                  tf.setStub0(1, nTracks, fm.getStubR(), fm.getPhiRes(), fm.getZRes());
                  break;
                case 1:
                  tf.setStub1(1, nTracks, fm.getStubR(), fm.getPhiRes(), fm.getZRes());
                  break;
                case 2:
                  tf.setStub2(1, nTracks, fm.getStubR(), fm.getPhiRes(), fm.getZRes());
                  break;
                case 3:
                  tf.setStub3(1, nTracks, fm.getStubR(), fm.getPhiRes(), fm.getZRes());
                  break;
              }
            }
          }
        }
      }
      disk_full_match_memories : for (unsigned short j = 0; j < 16; j++) {
        disk_full_matches : for (unsigned short k = 0; k < kMemDepth; k++) {
          if (k < diskFullMatches[j].getEntries(bx)) {
            const FullMatch<DISK> &fm = diskFullMatches[j].read_mem(bx, k);
            if (fm.getTCID() == TCID && fm.getTrackletIndex() == iTPAR) {
              switch (j >> 2) {
                case 0:
                  tf.setStub4(1, nTracks, fm.getStubR(), fm.getPhiRes(), fm.getZRes());
                  break;
                case 1:
                  tf.setStub5(1, nTracks, fm.getStubR(), fm.getPhiRes(), fm.getZRes());
                  break;
                case 2:
                  tf.setStub6(1, nTracks, fm.getStubR(), fm.getPhiRes(), fm.getZRes());
                  break;
                case 3:
                  tf.setStub7(1, nTracks, fm.getStubR(), fm.getPhiRes(), fm.getZRes());
                  break;
              }
            }
          }
        }
      }
    }
    if (tf.getNMatches() >= 2)
    { // HART
      std::cout << "  SAVING TRACK..." << std::endl; // HART
      tracks.write_mem(bx, tf, nTracks++);
    } // HART
  }
}
