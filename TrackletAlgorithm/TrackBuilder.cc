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

  unsigned short nTracks = 0;
  unsigned barrelID[1<<kNBitsTBBuffer][16];
  unsigned diskID[1<<kNBitsTBBuffer][16];
  FullMatch<BARREL>::FMSTUBR barrelStubR[1<<kNBitsTBBuffer][16];
  FullMatch<DISK>::FMSTUBR diskStubR[1<<kNBitsTBBuffer][16];
  FullMatch<BARREL>::FMPHIRES barrelPhiRes[1<<kNBitsTBBuffer][16];
  FullMatch<DISK>::FMPHIRES diskPhiRes[1<<kNBitsTBBuffer][16];
  FullMatch<BARREL>::FMZRES barrelZRes[1<<kNBitsTBBuffer][16];
  FullMatch<DISK>::FMZRES diskZRes[1<<kNBitsTBBuffer][16];
  ap_uint<kNBitsTBBuffer> barrel_read_index[16];
  ap_uint<kNBitsTBBuffer> disk_read_index[16];
  ap_uint<kNBitsTBBuffer> barrel_write_index[16];
  ap_uint<kNBitsTBBuffer> disk_write_index[16];
#pragma HLS array_partition variable=barrelID complete dim=0
#pragma HLS array_partition variable=diskID complete dim=0
#pragma HLS array_partition variable=barrelStubR complete dim=0
#pragma HLS array_partition variable=diskStubR complete dim=0
#pragma HLS array_partition variable=barrelPhiRes complete dim=0
#pragma HLS array_partition variable=diskPhiRes complete dim=0
#pragma HLS array_partition variable=barrelZRes complete dim=0
#pragma HLS array_partition variable=diskZRes complete dim=0
#pragma HLS array_partition variable=barrel_read_index complete dim=0
#pragma HLS array_partition variable=disk_read_index complete dim=0
#pragma HLS array_partition variable=barrel_write_index complete dim=0
#pragma HLS array_partition variable=disk_write_index complete dim=0

  for (unsigned i = 0; i < 16; i++) {
#pragma HLS unroll
    barrel_read_index[i] = 0;
    disk_read_index[i] = 0;
    barrel_write_index[i] = 0;
    disk_write_index[i] = 0;
  }

  tracklets : for (unsigned short i = 0; i < kMaxProc; i++) {
#pragma HLS pipeline II=1

    unsigned minID = 0x3FFF;

    barrelID[barrel_write_index[0]][0] = getID<BARREL>(bx, barrelFullMatches_0, i, barrelStubR[barrel_write_index[0]][0], barrelPhiRes[barrel_write_index[0]][0], barrelZRes[barrel_write_index[0]][0]);
    barrel_write_index[0]++;
    barrelID[barrel_write_index[1]][1] = getID<BARREL>(bx, barrelFullMatches_1, i, barrelStubR[barrel_write_index[1]][1], barrelPhiRes[barrel_write_index[1]][1], barrelZRes[barrel_write_index[1]][1]);
    barrel_write_index[1]++;
    barrelID[barrel_write_index[2]][2] = getID<BARREL>(bx, barrelFullMatches_2, i, barrelStubR[barrel_write_index[2]][2], barrelPhiRes[barrel_write_index[2]][2], barrelZRes[barrel_write_index[2]][2]);
    barrel_write_index[2]++;
    barrelID[barrel_write_index[3]][3] = getID<BARREL>(bx, barrelFullMatches_3, i, barrelStubR[barrel_write_index[3]][3], barrelPhiRes[barrel_write_index[3]][3], barrelZRes[barrel_write_index[3]][3]);
    barrel_write_index[3]++;
    barrelID[barrel_write_index[4]][4] = getID<BARREL>(bx, barrelFullMatches_4, i, barrelStubR[barrel_write_index[4]][4], barrelPhiRes[barrel_write_index[4]][4], barrelZRes[barrel_write_index[4]][4]);
    barrel_write_index[4]++;
    barrelID[barrel_write_index[5]][5] = getID<BARREL>(bx, barrelFullMatches_5, i, barrelStubR[barrel_write_index[5]][5], barrelPhiRes[barrel_write_index[5]][5], barrelZRes[barrel_write_index[5]][5]);
    barrel_write_index[5]++;
    barrelID[barrel_write_index[6]][6] = getID<BARREL>(bx, barrelFullMatches_6, i, barrelStubR[barrel_write_index[6]][6], barrelPhiRes[barrel_write_index[6]][6], barrelZRes[barrel_write_index[6]][6]);
    barrel_write_index[6]++;
    barrelID[barrel_write_index[7]][7] = getID<BARREL>(bx, barrelFullMatches_7, i, barrelStubR[barrel_write_index[7]][7], barrelPhiRes[barrel_write_index[7]][7], barrelZRes[barrel_write_index[7]][7]);
    barrel_write_index[7]++;
    barrelID[barrel_write_index[8]][8] = getID<BARREL>(bx, barrelFullMatches_8, i, barrelStubR[barrel_write_index[8]][8], barrelPhiRes[barrel_write_index[8]][8], barrelZRes[barrel_write_index[8]][8]);
    barrel_write_index[8]++;
    barrelID[barrel_write_index[9]][9] = getID<BARREL>(bx, barrelFullMatches_9, i, barrelStubR[barrel_write_index[9]][9], barrelPhiRes[barrel_write_index[9]][9], barrelZRes[barrel_write_index[9]][9]);
    barrel_write_index[9]++;
    barrelID[barrel_write_index[10]][10] = getID<BARREL>(bx, barrelFullMatches_10, i, barrelStubR[barrel_write_index[10]][10], barrelPhiRes[barrel_write_index[10]][10], barrelZRes[barrel_write_index[10]][10]);
    barrel_write_index[10]++;
    barrelID[barrel_write_index[11]][11] = getID<BARREL>(bx, barrelFullMatches_11, i, barrelStubR[barrel_write_index[11]][11], barrelPhiRes[barrel_write_index[11]][11], barrelZRes[barrel_write_index[11]][11]);
    barrel_write_index[11]++;
    barrelID[barrel_write_index[12]][12] = getID<BARREL>(bx, barrelFullMatches_12, i, barrelStubR[barrel_write_index[12]][12], barrelPhiRes[barrel_write_index[12]][12], barrelZRes[barrel_write_index[12]][12]);
    barrel_write_index[12]++;
    barrelID[barrel_write_index[13]][13] = getID<BARREL>(bx, barrelFullMatches_13, i, barrelStubR[barrel_write_index[13]][13], barrelPhiRes[barrel_write_index[13]][13], barrelZRes[barrel_write_index[13]][13]);
    barrel_write_index[13]++;
    barrelID[barrel_write_index[14]][14] = getID<BARREL>(bx, barrelFullMatches_14, i, barrelStubR[barrel_write_index[14]][14], barrelPhiRes[barrel_write_index[14]][14], barrelZRes[barrel_write_index[14]][14]);
    barrel_write_index[14]++;
    barrelID[barrel_write_index[15]][15] = getID<BARREL>(bx, barrelFullMatches_15, i, barrelStubR[barrel_write_index[15]][15], barrelPhiRes[barrel_write_index[15]][15], barrelZRes[barrel_write_index[15]][15]);
    barrel_write_index[15]++;

    diskID[disk_write_index[0]][0] = getID<DISK>(bx, diskFullMatches_0, i, diskStubR[disk_write_index[0]][0], diskPhiRes[disk_write_index[0]][0], diskZRes[disk_write_index[0]][0]);
    disk_write_index[0]++;
    diskID[disk_write_index[1]][1] = getID<DISK>(bx, diskFullMatches_1, i, diskStubR[disk_write_index[1]][1], diskPhiRes[disk_write_index[1]][1], diskZRes[disk_write_index[1]][1]);
    disk_write_index[1]++;
    diskID[disk_write_index[2]][2] = getID<DISK>(bx, diskFullMatches_2, i, diskStubR[disk_write_index[2]][2], diskPhiRes[disk_write_index[2]][2], diskZRes[disk_write_index[2]][2]);
    disk_write_index[2]++;
    diskID[disk_write_index[3]][3] = getID<DISK>(bx, diskFullMatches_3, i, diskStubR[disk_write_index[3]][3], diskPhiRes[disk_write_index[3]][3], diskZRes[disk_write_index[3]][3]);
    disk_write_index[3]++;
    diskID[disk_write_index[4]][4] = getID<DISK>(bx, diskFullMatches_4, i, diskStubR[disk_write_index[4]][4], diskPhiRes[disk_write_index[4]][4], diskZRes[disk_write_index[4]][4]);
    disk_write_index[4]++;
    diskID[disk_write_index[5]][5] = getID<DISK>(bx, diskFullMatches_5, i, diskStubR[disk_write_index[5]][5], diskPhiRes[disk_write_index[5]][5], diskZRes[disk_write_index[5]][5]);
    disk_write_index[5]++;
    diskID[disk_write_index[6]][6] = getID<DISK>(bx, diskFullMatches_6, i, diskStubR[disk_write_index[6]][6], diskPhiRes[disk_write_index[6]][6], diskZRes[disk_write_index[6]][6]);
    disk_write_index[6]++;
    diskID[disk_write_index[7]][7] = getID<DISK>(bx, diskFullMatches_7, i, diskStubR[disk_write_index[7]][7], diskPhiRes[disk_write_index[7]][7], diskZRes[disk_write_index[7]][7]);
    disk_write_index[7]++;
    diskID[disk_write_index[8]][8] = getID<DISK>(bx, diskFullMatches_8, i, diskStubR[disk_write_index[8]][8], diskPhiRes[disk_write_index[8]][8], diskZRes[disk_write_index[8]][8]);
    disk_write_index[8]++;
    diskID[disk_write_index[9]][9] = getID<DISK>(bx, diskFullMatches_9, i, diskStubR[disk_write_index[9]][9], diskPhiRes[disk_write_index[9]][9], diskZRes[disk_write_index[9]][9]);
    disk_write_index[9]++;
    diskID[disk_write_index[10]][10] = getID<DISK>(bx, diskFullMatches_10, i, diskStubR[disk_write_index[10]][10], diskPhiRes[disk_write_index[10]][10], diskZRes[disk_write_index[10]][10]);
    disk_write_index[10]++;
    diskID[disk_write_index[11]][11] = getID<DISK>(bx, diskFullMatches_11, i, diskStubR[disk_write_index[11]][11], diskPhiRes[disk_write_index[11]][11], diskZRes[disk_write_index[11]][11]);
    disk_write_index[11]++;
    diskID[disk_write_index[12]][12] = getID<DISK>(bx, diskFullMatches_12, i, diskStubR[disk_write_index[12]][12], diskPhiRes[disk_write_index[12]][12], diskZRes[disk_write_index[12]][12]);
    disk_write_index[12]++;
    diskID[disk_write_index[13]][13] = getID<DISK>(bx, diskFullMatches_13, i, diskStubR[disk_write_index[13]][13], diskPhiRes[disk_write_index[13]][13], diskZRes[disk_write_index[13]][13]);
    disk_write_index[13]++;
    diskID[disk_write_index[14]][14] = getID<DISK>(bx, diskFullMatches_14, i, diskStubR[disk_write_index[14]][14], diskPhiRes[disk_write_index[14]][14], diskZRes[disk_write_index[14]][14]);
    disk_write_index[14]++;
    diskID[disk_write_index[15]][15] = getID<DISK>(bx, diskFullMatches_15, i, diskStubR[disk_write_index[15]][15], diskPhiRes[disk_write_index[15]][15], diskZRes[disk_write_index[15]][15]);
    disk_write_index[15]++;

    minID = (minID < barrelID[barrel_read_index[0]][0]) ? minID : barrelID[barrel_read_index[0]][0];
    minID = (minID < barrelID[barrel_read_index[1]][1]) ? minID : barrelID[barrel_read_index[1]][1];
    minID = (minID < barrelID[barrel_read_index[2]][2]) ? minID : barrelID[barrel_read_index[2]][2];
    minID = (minID < barrelID[barrel_read_index[3]][3]) ? minID : barrelID[barrel_read_index[3]][3];
    minID = (minID < barrelID[barrel_read_index[4]][4]) ? minID : barrelID[barrel_read_index[4]][4];
    minID = (minID < barrelID[barrel_read_index[5]][5]) ? minID : barrelID[barrel_read_index[5]][5];
    minID = (minID < barrelID[barrel_read_index[6]][6]) ? minID : barrelID[barrel_read_index[6]][6];
    minID = (minID < barrelID[barrel_read_index[7]][7]) ? minID : barrelID[barrel_read_index[7]][7];
    minID = (minID < barrelID[barrel_read_index[8]][8]) ? minID : barrelID[barrel_read_index[8]][8];
    minID = (minID < barrelID[barrel_read_index[9]][9]) ? minID : barrelID[barrel_read_index[9]][9];
    minID = (minID < barrelID[barrel_read_index[10]][10]) ? minID : barrelID[barrel_read_index[10]][10];
    minID = (minID < barrelID[barrel_read_index[11]][11]) ? minID : barrelID[barrel_read_index[11]][11];
    minID = (minID < barrelID[barrel_read_index[12]][12]) ? minID : barrelID[barrel_read_index[12]][12];
    minID = (minID < barrelID[barrel_read_index[13]][13]) ? minID : barrelID[barrel_read_index[13]][13];
    minID = (minID < barrelID[barrel_read_index[14]][14]) ? minID : barrelID[barrel_read_index[14]][14];
    minID = (minID < barrelID[barrel_read_index[15]][15]) ? minID : barrelID[barrel_read_index[15]][15];

    minID = (minID < diskID[disk_read_index[0]][0]) ? minID : diskID[disk_read_index[0]][0];
    minID = (minID < diskID[disk_read_index[1]][1]) ? minID : diskID[disk_read_index[1]][1];
    minID = (minID < diskID[disk_read_index[2]][2]) ? minID : diskID[disk_read_index[2]][2];
    minID = (minID < diskID[disk_read_index[3]][3]) ? minID : diskID[disk_read_index[3]][3];
    minID = (minID < diskID[disk_read_index[4]][4]) ? minID : diskID[disk_read_index[4]][4];
    minID = (minID < diskID[disk_read_index[5]][5]) ? minID : diskID[disk_read_index[5]][5];
    minID = (minID < diskID[disk_read_index[6]][6]) ? minID : diskID[disk_read_index[6]][6];
    minID = (minID < diskID[disk_read_index[7]][7]) ? minID : diskID[disk_read_index[7]][7];
    minID = (minID < diskID[disk_read_index[8]][8]) ? minID : diskID[disk_read_index[8]][8];
    minID = (minID < diskID[disk_read_index[9]][9]) ? minID : diskID[disk_read_index[9]][9];
    minID = (minID < diskID[disk_read_index[10]][10]) ? minID : diskID[disk_read_index[10]][10];
    minID = (minID < diskID[disk_read_index[11]][11]) ? minID : diskID[disk_read_index[11]][11];
    minID = (minID < diskID[disk_read_index[12]][12]) ? minID : diskID[disk_read_index[12]][12];
    minID = (minID < diskID[disk_read_index[13]][13]) ? minID : diskID[disk_read_index[13]][13];
    minID = (minID < diskID[disk_read_index[14]][14]) ? minID : diskID[disk_read_index[14]][14];
    minID = (minID < diskID[disk_read_index[15]][15]) ? minID : diskID[disk_read_index[15]][15];

    if (minID != 0x3FFF) {
      const unsigned short &TCID = (minID >> 7);
      const unsigned short &trackletIndex = 0x7F & minID;
      const TrackletParameters &tpar = trackletParameters[TCID].read_mem(bx, trackletIndex);
      TrackFit track(TCID >> 4, tpar.getRinv(), tpar.getPhi0(), tpar.getZ0(), tpar.getT());
      if (barrelID[barrel_read_index[0]][0] == minID)
        track.setStub0 (barrelStubR[barrel_read_index[0]][0], barrelPhiRes[barrel_read_index[0]][0], barrelZRes[barrel_read_index[0]][0]);
      if (barrelID[barrel_read_index[1]][1] == minID)
        track.setStub0 (barrelStubR[barrel_read_index[1]][1], barrelPhiRes[barrel_read_index[1]][1], barrelZRes[barrel_read_index[1]][1]);
      if (barrelID[barrel_read_index[2]][2] == minID)
        track.setStub0 (barrelStubR[barrel_read_index[2]][2], barrelPhiRes[barrel_read_index[2]][2], barrelZRes[barrel_read_index[2]][2]);
      if (barrelID[barrel_read_index[3]][3] == minID)
        track.setStub0 (barrelStubR[barrel_read_index[3]][3], barrelPhiRes[barrel_read_index[3]][3], barrelZRes[barrel_read_index[3]][3]);
      if (barrelID[barrel_read_index[4]][4] == minID)
        track.setStub1 (barrelStubR[barrel_read_index[4]][4], barrelPhiRes[barrel_read_index[4]][4], barrelZRes[barrel_read_index[4]][4]);
      if (barrelID[barrel_read_index[5]][5] == minID)
        track.setStub1 (barrelStubR[barrel_read_index[5]][5], barrelPhiRes[barrel_read_index[5]][5], barrelZRes[barrel_read_index[5]][5]);
      if (barrelID[barrel_read_index[6]][6] == minID)
        track.setStub1 (barrelStubR[barrel_read_index[6]][6], barrelPhiRes[barrel_read_index[6]][6], barrelZRes[barrel_read_index[6]][6]);
      if (barrelID[barrel_read_index[7]][7] == minID)
        track.setStub1 (barrelStubR[barrel_read_index[7]][7], barrelPhiRes[barrel_read_index[7]][7], barrelZRes[barrel_read_index[7]][7]);
      if (barrelID[barrel_read_index[8]][8] == minID)
        track.setStub2 (barrelStubR[barrel_read_index[8]][8], barrelPhiRes[barrel_read_index[8]][8], barrelZRes[barrel_read_index[8]][8]);
      if (barrelID[barrel_read_index[9]][9] == minID)
        track.setStub2 (barrelStubR[barrel_read_index[9]][9], barrelPhiRes[barrel_read_index[9]][9], barrelZRes[barrel_read_index[9]][9]);
      if (barrelID[barrel_read_index[10]][10] == minID)
        track.setStub2 (barrelStubR[barrel_read_index[10]][10], barrelPhiRes[barrel_read_index[10]][10], barrelZRes[barrel_read_index[10]][10]);
      if (barrelID[barrel_read_index[11]][11] == minID)
        track.setStub2 (barrelStubR[barrel_read_index[11]][11], barrelPhiRes[barrel_read_index[11]][11], barrelZRes[barrel_read_index[11]][11]);
      if (barrelID[barrel_read_index[12]][12] == minID)
        track.setStub3 (barrelStubR[barrel_read_index[12]][12], barrelPhiRes[barrel_read_index[12]][12], barrelZRes[barrel_read_index[12]][12]);
      if (barrelID[barrel_read_index[13]][13] == minID)
        track.setStub3 (barrelStubR[barrel_read_index[13]][13], barrelPhiRes[barrel_read_index[13]][13], barrelZRes[barrel_read_index[13]][13]);
      if (barrelID[barrel_read_index[14]][14] == minID)
        track.setStub3 (barrelStubR[barrel_read_index[14]][14], barrelPhiRes[barrel_read_index[14]][14], barrelZRes[barrel_read_index[14]][14]);
      if (barrelID[barrel_read_index[15]][15] == minID)
        track.setStub3 (barrelStubR[barrel_read_index[15]][15], barrelPhiRes[barrel_read_index[15]][15], barrelZRes[barrel_read_index[15]][15]);

      if (diskID[disk_read_index[0]][0] == minID)
        track.setStub4 (diskStubR[disk_read_index[0]][0], diskPhiRes[disk_read_index[0]][0], diskZRes[disk_read_index[0]][0]);
      if (diskID[disk_read_index[1]][1] == minID)
        track.setStub4 (diskStubR[disk_read_index[1]][1], diskPhiRes[disk_read_index[1]][1], diskZRes[disk_read_index[1]][1]);
      if (diskID[disk_read_index[2]][2] == minID)
        track.setStub4 (diskStubR[disk_read_index[2]][2], diskPhiRes[disk_read_index[2]][2], diskZRes[disk_read_index[2]][2]);
      if (diskID[disk_read_index[3]][3] == minID)
        track.setStub4 (diskStubR[disk_read_index[3]][3], diskPhiRes[disk_read_index[3]][3], diskZRes[disk_read_index[3]][3]);
      if (diskID[disk_read_index[4]][4] == minID)
        track.setStub5 (diskStubR[disk_read_index[4]][4], diskPhiRes[disk_read_index[4]][4], diskZRes[disk_read_index[4]][4]);
      if (diskID[disk_read_index[5]][5] == minID)
        track.setStub5 (diskStubR[disk_read_index[5]][5], diskPhiRes[disk_read_index[5]][5], diskZRes[disk_read_index[5]][5]);
      if (diskID[disk_read_index[6]][6] == minID)
        track.setStub5 (diskStubR[disk_read_index[6]][6], diskPhiRes[disk_read_index[6]][6], diskZRes[disk_read_index[6]][6]);
      if (diskID[disk_read_index[7]][7] == minID)
        track.setStub5 (diskStubR[disk_read_index[7]][7], diskPhiRes[disk_read_index[7]][7], diskZRes[disk_read_index[7]][7]);
      if (diskID[disk_read_index[8]][8] == minID)
        track.setStub6 (diskStubR[disk_read_index[8]][8], diskPhiRes[disk_read_index[8]][8], diskZRes[disk_read_index[8]][8]);
      if (diskID[disk_read_index[9]][9] == minID)
        track.setStub6 (diskStubR[disk_read_index[9]][9], diskPhiRes[disk_read_index[9]][9], diskZRes[disk_read_index[9]][9]);
      if (diskID[disk_read_index[10]][10] == minID)
        track.setStub6 (diskStubR[disk_read_index[10]][10], diskPhiRes[disk_read_index[10]][10], diskZRes[disk_read_index[10]][10]);
      if (diskID[disk_read_index[11]][11] == minID)
        track.setStub6 (diskStubR[disk_read_index[11]][11], diskPhiRes[disk_read_index[11]][11], diskZRes[disk_read_index[11]][11]);
      if (diskID[disk_read_index[12]][12] == minID)
        track.setStub7 (diskStubR[disk_read_index[12]][12], diskPhiRes[disk_read_index[12]][12], diskZRes[disk_read_index[12]][12]);
      if (diskID[disk_read_index[13]][13] == minID)
        track.setStub7 (diskStubR[disk_read_index[13]][13], diskPhiRes[disk_read_index[13]][13], diskZRes[disk_read_index[13]][13]);
      if (diskID[disk_read_index[14]][14] == minID)
        track.setStub7 (diskStubR[disk_read_index[14]][14], diskPhiRes[disk_read_index[14]][14], diskZRes[disk_read_index[14]][14]);
      if (diskID[disk_read_index[15]][15] == minID)
        track.setStub7 (diskStubR[disk_read_index[15]][15], diskPhiRes[disk_read_index[15]][15], diskZRes[disk_read_index[15]][15]);

      if (track.getNMatches() >= 2) {
        track.setTrackIndex(nTracks);
        tracks.write_mem(bx, track, nTracks++);
      }

      if (barrelID[barrel_read_index[0]][0] == minID)
        barrel_read_index[0]++;
      if (barrelID[barrel_read_index[1]][1] == minID)
        barrel_read_index[1]++;
      if (barrelID[barrel_read_index[2]][2] == minID)
        barrel_read_index[2]++;
      if (barrelID[barrel_read_index[3]][3] == minID)
        barrel_read_index[3]++;
      if (barrelID[barrel_read_index[4]][4] == minID)
        barrel_read_index[4]++;
      if (barrelID[barrel_read_index[5]][5] == minID)
        barrel_read_index[5]++;
      if (barrelID[barrel_read_index[6]][6] == minID)
        barrel_read_index[6]++;
      if (barrelID[barrel_read_index[7]][7] == minID)
        barrel_read_index[7]++;
      if (barrelID[barrel_read_index[8]][8] == minID)
        barrel_read_index[8]++;
      if (barrelID[barrel_read_index[9]][9] == minID)
        barrel_read_index[9]++;
      if (barrelID[barrel_read_index[10]][10] == minID)
        barrel_read_index[10]++;
      if (barrelID[barrel_read_index[11]][11] == minID)
        barrel_read_index[11]++;
      if (barrelID[barrel_read_index[12]][12] == minID)
        barrel_read_index[12]++;
      if (barrelID[barrel_read_index[13]][13] == minID)
        barrel_read_index[13]++;
      if (barrelID[barrel_read_index[14]][14] == minID)
        barrel_read_index[14]++;
      if (barrelID[barrel_read_index[15]][15] == minID)
        barrel_read_index[15]++;

      if (diskID[disk_read_index[0]][0] == minID)
        disk_read_index[0]++;
      if (diskID[disk_read_index[1]][1] == minID)
        disk_read_index[1]++;
      if (diskID[disk_read_index[2]][2] == minID)
        disk_read_index[2]++;
      if (diskID[disk_read_index[3]][3] == minID)
        disk_read_index[3]++;
      if (diskID[disk_read_index[4]][4] == minID)
        disk_read_index[4]++;
      if (diskID[disk_read_index[5]][5] == minID)
        disk_read_index[5]++;
      if (diskID[disk_read_index[6]][6] == minID)
        disk_read_index[6]++;
      if (diskID[disk_read_index[7]][7] == minID)
        disk_read_index[7]++;
      if (diskID[disk_read_index[8]][8] == minID)
        disk_read_index[8]++;
      if (diskID[disk_read_index[9]][9] == minID)
        disk_read_index[9]++;
      if (diskID[disk_read_index[10]][10] == minID)
        disk_read_index[10]++;
      if (diskID[disk_read_index[11]][11] == minID)
        disk_read_index[11]++;
      if (diskID[disk_read_index[12]][12] == minID)
        disk_read_index[12]++;
      if (diskID[disk_read_index[13]][13] == minID)
        disk_read_index[13]++;
      if (diskID[disk_read_index[14]][14] == minID)
        disk_read_index[14]++;
      if (diskID[disk_read_index[15]][15] == minID)
        disk_read_index[15]++;
    }
  }
}
