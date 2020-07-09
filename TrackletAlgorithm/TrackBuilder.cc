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
    const FullMatchMemory<BARREL> &barrelFullMatches_0,
    const FullMatchMemory<BARREL> &barrelFullMatches_1,
    const FullMatchMemory<BARREL> &barrelFullMatches_2,
    const FullMatchMemory<BARREL> &barrelFullMatches_3,
    const FullMatchMemory<BARREL> &barrelFullMatches_4,
    const FullMatchMemory<BARREL> &barrelFullMatches_5,
    const FullMatchMemory<BARREL> &barrelFullMatches_6,
    const FullMatchMemory<BARREL> &barrelFullMatches_7,
    const FullMatchMemory<BARREL> &barrelFullMatches_8,
    const FullMatchMemory<BARREL> &barrelFullMatches_9,
    const FullMatchMemory<BARREL> &barrelFullMatches_10,
    const FullMatchMemory<BARREL> &barrelFullMatches_11,
    const FullMatchMemory<BARREL> &barrelFullMatches_12,
    const FullMatchMemory<BARREL> &barrelFullMatches_13,
    const FullMatchMemory<BARREL> &barrelFullMatches_14,
    const FullMatchMemory<BARREL> &barrelFullMatches_15,
    const FullMatchMemory<DISK> diskFullMatches_0,
    const FullMatchMemory<DISK> diskFullMatches_1,
    const FullMatchMemory<DISK> diskFullMatches_2,
    const FullMatchMemory<DISK> diskFullMatches_3,
    const FullMatchMemory<DISK> diskFullMatches_4,
    const FullMatchMemory<DISK> diskFullMatches_5,
    const FullMatchMemory<DISK> diskFullMatches_6,
    const FullMatchMemory<DISK> diskFullMatches_7,
    const FullMatchMemory<DISK> diskFullMatches_8,
    const FullMatchMemory<DISK> diskFullMatches_9,
    const FullMatchMemory<DISK> diskFullMatches_10,
    const FullMatchMemory<DISK> diskFullMatches_11,
    const FullMatchMemory<DISK> diskFullMatches_12,
    const FullMatchMemory<DISK> diskFullMatches_13,
    const FullMatchMemory<DISK> diskFullMatches_14,
    const FullMatchMemory<DISK> diskFullMatches_15,
    TrackFitMemory &tracks
)
{
#pragma HLS inline recursive
#pragma HLS resource variable=trackletParameters.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_0.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_1.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_2.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_3.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_4.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_5.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_6.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_7.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_8.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_9.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_10.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_11.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_12.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_13.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_14.get_mem() latency=2
#pragma HLS resource variable=barrelFullMatches_15.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_0.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_1.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_2.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_3.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_4.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_5.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_6.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_7.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_8.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_9.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_10.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_11.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_12.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_13.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_14.get_mem() latency=2
#pragma HLS resource variable=diskFullMatches_15.get_mem() latency=2

  tracks.clear(bx);

  unsigned short nTracks = 0;
  unsigned short barrelFMIndices[16];
  unsigned short diskFMIndices[16];
#pragma HLS array_partition variable=barrelFMIndices complete dim=0
#pragma HLS array_partition variable=diskFMIndices complete dim=0
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
#pragma HLS array_partition variable=barrelID complete dim=0
#pragma HLS array_partition variable=diskID complete dim=0
#pragma HLS array_partition variable=barrelStubR complete dim=0
#pragma HLS array_partition variable=diskStubR complete dim=0
#pragma HLS array_partition variable=barrelPhiRes complete dim=0
#pragma HLS array_partition variable=diskPhiRes complete dim=0
#pragma HLS array_partition variable=barrelZRes complete dim=0
#pragma HLS array_partition variable=diskZRes complete dim=0

/*    barrel_id : for (unsigned short j = 0; j < 16; j++) {
      barrelID[j] = getID<BARREL>(bx, barrelFullMatches[j], barrelFMIndices[j], barrelStubR[j], barrelPhiRes[j], barrelZRes[j]);
      if (barrelID[j] < minID)
        minID = barrelID[j];
    }*/
    barrelID[0] = getID<BARREL>(bx, barrelFullMatches_0, barrelFMIndices[0], barrelStubR[0], barrelPhiRes[0], barrelZRes[0]);
    if (barrelID[0] < minID)
      minID = barrelID[0];
    barrelID[1] = getID<BARREL>(bx, barrelFullMatches_1, barrelFMIndices[1], barrelStubR[1], barrelPhiRes[1], barrelZRes[1]);
    if (barrelID[1] < minID)
      minID = barrelID[1];
    barrelID[2] = getID<BARREL>(bx, barrelFullMatches_2, barrelFMIndices[2], barrelStubR[2], barrelPhiRes[2], barrelZRes[2]);
    if (barrelID[2] < minID)
      minID = barrelID[2];
    barrelID[3] = getID<BARREL>(bx, barrelFullMatches_3, barrelFMIndices[3], barrelStubR[3], barrelPhiRes[3], barrelZRes[3]);
    if (barrelID[3] < minID)
      minID = barrelID[3];
    barrelID[4] = getID<BARREL>(bx, barrelFullMatches_4, barrelFMIndices[4], barrelStubR[4], barrelPhiRes[4], barrelZRes[4]);
    if (barrelID[4] < minID)
      minID = barrelID[4];
    barrelID[5] = getID<BARREL>(bx, barrelFullMatches_5, barrelFMIndices[5], barrelStubR[5], barrelPhiRes[5], barrelZRes[5]);
    if (barrelID[5] < minID)
      minID = barrelID[5];
    barrelID[6] = getID<BARREL>(bx, barrelFullMatches_6, barrelFMIndices[6], barrelStubR[6], barrelPhiRes[6], barrelZRes[6]);
    if (barrelID[6] < minID)
      minID = barrelID[6];
    barrelID[7] = getID<BARREL>(bx, barrelFullMatches_7, barrelFMIndices[7], barrelStubR[7], barrelPhiRes[7], barrelZRes[7]);
    if (barrelID[7] < minID)
      minID = barrelID[7];
    barrelID[8] = getID<BARREL>(bx, barrelFullMatches_8, barrelFMIndices[8], barrelStubR[8], barrelPhiRes[8], barrelZRes[8]);
    if (barrelID[8] < minID)
      minID = barrelID[8];
    barrelID[9] = getID<BARREL>(bx, barrelFullMatches_9, barrelFMIndices[9], barrelStubR[9], barrelPhiRes[9], barrelZRes[9]);
    if (barrelID[9] < minID)
      minID = barrelID[9];
    barrelID[10] = getID<BARREL>(bx, barrelFullMatches_10, barrelFMIndices[10], barrelStubR[10], barrelPhiRes[10], barrelZRes[10]);
    if (barrelID[10] < minID)
      minID = barrelID[10];
    barrelID[11] = getID<BARREL>(bx, barrelFullMatches_11, barrelFMIndices[11], barrelStubR[11], barrelPhiRes[11], barrelZRes[11]);
    if (barrelID[11] < minID)
      minID = barrelID[11];
    barrelID[12] = getID<BARREL>(bx, barrelFullMatches_12, barrelFMIndices[12], barrelStubR[12], barrelPhiRes[12], barrelZRes[12]);
    if (barrelID[12] < minID)
      minID = barrelID[12];
    barrelID[13] = getID<BARREL>(bx, barrelFullMatches_13, barrelFMIndices[13], barrelStubR[13], barrelPhiRes[13], barrelZRes[13]);
    if (barrelID[13] < minID)
      minID = barrelID[13];
    barrelID[14] = getID<BARREL>(bx, barrelFullMatches_14, barrelFMIndices[14], barrelStubR[14], barrelPhiRes[14], barrelZRes[14]);
    if (barrelID[14] < minID)
      minID = barrelID[14];
    barrelID[15] = getID<BARREL>(bx, barrelFullMatches_15, barrelFMIndices[15], barrelStubR[15], barrelPhiRes[15], barrelZRes[15]);
    if (barrelID[15] < minID)
      minID = barrelID[15];
/*    disk_id : for (unsigned short j = 0; j < 16; j++) {
      diskID[j] = getID<DISK>(bx, diskFullMatches[j], diskFMIndices[j], diskStubR[j], diskPhiRes[j], diskZRes[j]);
      if (diskID[j] < minID)
        minID = diskID[j];
    }*/
    diskID[0] = getID<DISK>(bx, diskFullMatches_0, diskFMIndices[0], diskStubR[0], diskPhiRes[0], diskZRes[0]);
    if (diskID[0] < minID)
      minID = diskID[0];
    diskID[1] = getID<DISK>(bx, diskFullMatches_1, diskFMIndices[1], diskStubR[1], diskPhiRes[1], diskZRes[1]);
    if (diskID[1] < minID)
      minID = diskID[1];
    diskID[2] = getID<DISK>(bx, diskFullMatches_2, diskFMIndices[2], diskStubR[2], diskPhiRes[2], diskZRes[2]);
    if (diskID[2] < minID)
      minID = diskID[2];
    diskID[3] = getID<DISK>(bx, diskFullMatches_3, diskFMIndices[3], diskStubR[3], diskPhiRes[3], diskZRes[3]);
    if (diskID[3] < minID)
      minID = diskID[3];
    diskID[4] = getID<DISK>(bx, diskFullMatches_4, diskFMIndices[4], diskStubR[4], diskPhiRes[4], diskZRes[4]);
    if (diskID[4] < minID)
      minID = diskID[4];
    diskID[5] = getID<DISK>(bx, diskFullMatches_5, diskFMIndices[5], diskStubR[5], diskPhiRes[5], diskZRes[5]);
    if (diskID[5] < minID)
      minID = diskID[5];
    diskID[6] = getID<DISK>(bx, diskFullMatches_6, diskFMIndices[6], diskStubR[6], diskPhiRes[6], diskZRes[6]);
    if (diskID[6] < minID)
      minID = diskID[6];
    diskID[7] = getID<DISK>(bx, diskFullMatches_7, diskFMIndices[7], diskStubR[7], diskPhiRes[7], diskZRes[7]);
    if (diskID[7] < minID)
      minID = diskID[7];
    diskID[8] = getID<DISK>(bx, diskFullMatches_8, diskFMIndices[8], diskStubR[8], diskPhiRes[8], diskZRes[8]);
    if (diskID[8] < minID)
      minID = diskID[8];
    diskID[9] = getID<DISK>(bx, diskFullMatches_9, diskFMIndices[9], diskStubR[9], diskPhiRes[9], diskZRes[9]);
    if (diskID[9] < minID)
      minID = diskID[9];
    diskID[10] = getID<DISK>(bx, diskFullMatches_10, diskFMIndices[10], diskStubR[10], diskPhiRes[10], diskZRes[10]);
    if (diskID[10] < minID)
      minID = diskID[10];
    diskID[11] = getID<DISK>(bx, diskFullMatches_11, diskFMIndices[11], diskStubR[11], diskPhiRes[11], diskZRes[11]);
    if (diskID[11] < minID)
      minID = diskID[11];
    diskID[12] = getID<DISK>(bx, diskFullMatches_12, diskFMIndices[12], diskStubR[12], diskPhiRes[12], diskZRes[12]);
    if (diskID[12] < minID)
      minID = diskID[12];
    diskID[13] = getID<DISK>(bx, diskFullMatches_13, diskFMIndices[13], diskStubR[13], diskPhiRes[13], diskZRes[13]);
    if (diskID[13] < minID)
      minID = diskID[13];
    diskID[14] = getID<DISK>(bx, diskFullMatches_14, diskFMIndices[14], diskStubR[14], diskPhiRes[14], diskZRes[14]);
    if (diskID[14] < minID)
      minID = diskID[14];
    diskID[15] = getID<DISK>(bx, diskFullMatches_15, diskFMIndices[15], diskStubR[15], diskPhiRes[15], diskZRes[15]);
    if (diskID[15] < minID)
      minID = diskID[15];

    if (minID != 0x3FFF) {
      const unsigned short &TCID = (minID >> 7);
      const unsigned short &trackletIndex = 0x7F & minID;
      const TrackletParameters &tpar = trackletParameters[TCID].read_mem(bx, trackletIndex);
      TrackFit track(TCID >> 4, tpar.getRinv(), tpar.getPhi0(), tpar.getZ0(), tpar.getT());
      /*barrel_matches : for (unsigned short j = 0; j < 16; j++) {
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
        }*/
      if (barrelID[0] == minID) {
        track.setStub0 (barrelStubR[0], barrelPhiRes[0], barrelZRes[0]);
        barrelFMIndices[0]++;
      }
      if (barrelID[1] == minID) {
        track.setStub0 (barrelStubR[1], barrelPhiRes[1], barrelZRes[1]);
        barrelFMIndices[1]++;
      }
      if (barrelID[2] == minID) {
        track.setStub0 (barrelStubR[2], barrelPhiRes[2], barrelZRes[2]);
        barrelFMIndices[2]++;
      }
      if (barrelID[3] == minID) {
        track.setStub0 (barrelStubR[3], barrelPhiRes[3], barrelZRes[3]);
        barrelFMIndices[3]++;
      }
      if (barrelID[4] == minID) {
        track.setStub1 (barrelStubR[4], barrelPhiRes[4], barrelZRes[4]);
        barrelFMIndices[4]++;
      }
      if (barrelID[5] == minID) {
        track.setStub1 (barrelStubR[5], barrelPhiRes[5], barrelZRes[5]);
        barrelFMIndices[5]++;
      }
      if (barrelID[6] == minID) {
        track.setStub1 (barrelStubR[6], barrelPhiRes[6], barrelZRes[6]);
        barrelFMIndices[6]++;
      }
      if (barrelID[7] == minID) {
        track.setStub1 (barrelStubR[7], barrelPhiRes[7], barrelZRes[7]);
        barrelFMIndices[7]++;
      }
      if (barrelID[8] == minID) {
        track.setStub2 (barrelStubR[8], barrelPhiRes[8], barrelZRes[8]);
        barrelFMIndices[8]++;
      }
      if (barrelID[9] == minID) {
        track.setStub2 (barrelStubR[9], barrelPhiRes[9], barrelZRes[9]);
        barrelFMIndices[9]++;
      }
      if (barrelID[10] == minID) {
        track.setStub2 (barrelStubR[10], barrelPhiRes[10], barrelZRes[10]);
        barrelFMIndices[10]++;
      }
      if (barrelID[11] == minID) {
        track.setStub2 (barrelStubR[11], barrelPhiRes[11], barrelZRes[11]);
        barrelFMIndices[11]++;
      }
      if (barrelID[12] == minID) {
        track.setStub3 (barrelStubR[12], barrelPhiRes[12], barrelZRes[12]);
        barrelFMIndices[12]++;
      }
      if (barrelID[13] == minID) {
        track.setStub3 (barrelStubR[13], barrelPhiRes[13], barrelZRes[13]);
        barrelFMIndices[13]++;
      }
      if (barrelID[14] == minID) {
        track.setStub3 (barrelStubR[14], barrelPhiRes[14], barrelZRes[14]);
        barrelFMIndices[14]++;
      }
      if (barrelID[15] == minID) {
        track.setStub3 (barrelStubR[15], barrelPhiRes[15], barrelZRes[15]);
        barrelFMIndices[15]++;
      }
      /*disk_matches : for (unsigned short j = 0; j < 16; j++) {
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
      }*/
      if (diskID[0] == minID) {
        track.setStub4 (diskStubR[0], diskPhiRes[0], diskZRes[0]);
        diskFMIndices[0]++;
      }
      if (diskID[1] == minID) {
        track.setStub4 (diskStubR[1], diskPhiRes[1], diskZRes[1]);
        diskFMIndices[1]++;
      }
      if (diskID[2] == minID) {
        track.setStub4 (diskStubR[2], diskPhiRes[2], diskZRes[2]);
        diskFMIndices[2]++;
      }
      if (diskID[3] == minID) {
        track.setStub4 (diskStubR[3], diskPhiRes[3], diskZRes[3]);
        diskFMIndices[3]++;
      }
      if (diskID[4] == minID) {
        track.setStub5 (diskStubR[4], diskPhiRes[4], diskZRes[4]);
        diskFMIndices[4]++;
      }
      if (diskID[5] == minID) {
        track.setStub5 (diskStubR[5], diskPhiRes[5], diskZRes[5]);
        diskFMIndices[5]++;
      }
      if (diskID[6] == minID) {
        track.setStub5 (diskStubR[6], diskPhiRes[6], diskZRes[6]);
        diskFMIndices[6]++;
      }
      if (diskID[7] == minID) {
        track.setStub5 (diskStubR[7], diskPhiRes[7], diskZRes[7]);
        diskFMIndices[7]++;
      }
      if (diskID[8] == minID) {
        track.setStub6 (diskStubR[8], diskPhiRes[8], diskZRes[8]);
        diskFMIndices[8]++;
      }
      if (diskID[9] == minID) {
        track.setStub6 (diskStubR[9], diskPhiRes[9], diskZRes[9]);
        diskFMIndices[9]++;
      }
      if (diskID[10] == minID) {
        track.setStub6 (diskStubR[10], diskPhiRes[10], diskZRes[10]);
        diskFMIndices[10]++;
      }
      if (diskID[11] == minID) {
        track.setStub6 (diskStubR[11], diskPhiRes[11], diskZRes[11]);
        diskFMIndices[11]++;
      }
      if (diskID[12] == minID) {
        track.setStub7 (diskStubR[12], diskPhiRes[12], diskZRes[12]);
        diskFMIndices[12]++;
      }
      if (diskID[13] == minID) {
        track.setStub7 (diskStubR[13], diskPhiRes[13], diskZRes[13]);
        diskFMIndices[13]++;
      }
      if (diskID[14] == minID) {
        track.setStub7 (diskStubR[14], diskPhiRes[14], diskZRes[14]);
        diskFMIndices[14]++;
      }
      if (diskID[15] == minID) {
        track.setStub7 (diskStubR[15], diskPhiRes[15], diskZRes[15]);
        diskFMIndices[15]++;
      }
      if (track.getNMatches() >= 2)
        tracks.write_mem(bx, track, nTracks++);
    }
  }
}
