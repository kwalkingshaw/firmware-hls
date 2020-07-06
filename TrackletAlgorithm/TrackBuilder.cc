#include "TrackBuilder.h"

template<regionType RegionType> const unsigned
getID(const BXType bx, const FullMatchMemory<RegionType> &fullMatches, const unsigned short i, typename FullMatch<RegionType>::FMSTUBR &stubr, typename FullMatch<RegionType>::FMPHIRES &phires, typename FullMatch<RegionType>::FMZRES &zres)
{
  if (i < fullMatches.getEntries(bx)) {
    const FullMatch<RegionType> &fm = fullMatches.read_mem(bx, i);
    const unsigned short &TCID = fm.getTCID();
    const unsigned short &trackletIndex = fm.getTrackletIndex();
    stubr = fm.getStubR();
    phires = fm.getPhiRes();
    zres = fm.getZRes();
    return ((TCID << 7) | trackletIndex);
  }
  else {
    stubr = 0;
    phires = 0;
    zres = 0;
    return 0x3FFF;
  }
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

  unsigned short nTracks = 0;
  unsigned short barrelFMIndices[16];
  unsigned short diskFMIndices[16];
  clear_barrel_indices : for (unsigned short i = 0; i < 16; i++) {
#pragma HLS unroll
    barrelFMIndices[i] = 0;
  }
  clear_disk_indices : for (unsigned short i = 0; i < 16; i++) {
#pragma HLS unroll
    diskFMIndices[i] = 0;
  }

  tracklets : for (unsigned short i = 0; i < kMaxProc; i++) {
#pragma HLS pipeline II=1
    unsigned barrelID[16];
    unsigned diskID[16];
    unsigned minID = 0x3FFF;
    FullMatch<BARREL>::FMSTUBR barrelStubR[16];
    FullMatch<DISK>::FMSTUBR diskStubR[16];
    FullMatch<BARREL>::FMPHIRES barrelPhiRes[16];
    FullMatch<DISK>::FMPHIRES diskPhiRes[16];
    FullMatch<BARREL>::FMZRES barrelZRes[16];
    FullMatch<DISK>::FMZRES diskZRes[16];

    barrel_id : for (unsigned short j = 0; j < 16; j++) {
      barrelID[j] = getID<BARREL>(bx, barrelFullMatches[j], barrelFMIndices[j], barrelStubR[j], barrelPhiRes[j], barrelZRes[j]);
      if (barrelID[j] < minID)
        minID = barrelID[j];
    }
    disk_id : for (unsigned short j = 0; j < 16; j++) {
      diskID[j] = getID<DISK>(bx, diskFullMatches[j], diskFMIndices[j], diskStubR[j], diskPhiRes[j], diskZRes[j]);
      if (diskID[j] < minID)
        minID = diskID[j];
    }

    if (minID != 0x3FFF) {
      const unsigned short &TCID = (minID >> 7);
      const unsigned short &trackletIndex = 0x7F & minID;
      const TrackletParameters &tpar = trackletParameters[TCID].read_mem(bx, trackletIndex);
      TrackFit track(TCID >> 4, tpar.getRinv(), tpar.getPhi0(), tpar.getZ0(), tpar.getT());
      barrel_matches : for (unsigned short j = 0; j < 16; j++) {
        if (barrelID[j] == minID) {
          switch (j >> 2) {
            case 0:
              track.setStub0 (barrelStubR[j], barrelPhiRes[j], barrelZRes[j]);
              break;
            case 1:
              track.setStub1 (barrelStubR[j], barrelPhiRes[j], barrelZRes[j]);
              break;
            case 2:
              track.setStub2 (barrelStubR[j], barrelPhiRes[j], barrelZRes[j]);
              break;
            case 3:
              track.setStub3 (barrelStubR[j], barrelPhiRes[j], barrelZRes[j]);
              break;
          }
          barrelFMIndices[j]++;
        }
      }
      disk_matches : for (unsigned short j = 0; j < 16; j++) {
        if (diskID[j] == minID) {
          switch (j >> 2) {
            case 0:
              track.setStub4 (diskStubR[j], diskPhiRes[j], diskZRes[j]);
              break;
            case 1:
              track.setStub5 (diskStubR[j], diskPhiRes[j], diskZRes[j]);
              break;
            case 2:
              track.setStub6 (diskStubR[j], diskPhiRes[j], diskZRes[j]);
              break;
            case 3:
              track.setStub7 (diskStubR[j], diskPhiRes[j], diskZRes[j]);
              break;
          }
          diskFMIndices[j]++;
        }
      }
      if (track.getNMatches() >= 2)
        tracks.write_mem(bx, track, nTracks++);
    }
  }
}
