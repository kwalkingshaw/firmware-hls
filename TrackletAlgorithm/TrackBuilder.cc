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

    unsigned short minID = 0x3FFF;
    unsigned short mID[30];
#pragma HLS array_partition variable=mID complete dim=0

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

    mID[0] = std::min(barrelID[barrel_read_index[0]][0], barrelID[barrel_read_index[1]][1]);
    mID[1] = std::min(barrelID[barrel_read_index[2]][2], barrelID[barrel_read_index[3]][3]);
    mID[2] = std::min(barrelID[barrel_read_index[4]][4], barrelID[barrel_read_index[5]][5]);
    mID[3] = std::min(barrelID[barrel_read_index[6]][6], barrelID[barrel_read_index[7]][7]);
    mID[4] = std::min(barrelID[barrel_read_index[8]][8], barrelID[barrel_read_index[9]][9]);
    mID[5] = std::min(barrelID[barrel_read_index[10]][10], barrelID[barrel_read_index[11]][11]);
    mID[6] = std::min(barrelID[barrel_read_index[12]][12], barrelID[barrel_read_index[13]][13]);
    mID[7] = std::min(barrelID[barrel_read_index[14]][14], barrelID[barrel_read_index[15]][15]);

    mID[8] = std::min(diskID[disk_read_index[0]][0], diskID[disk_read_index[1]][1]);
    mID[9] = std::min(diskID[disk_read_index[2]][2], diskID[disk_read_index[3]][3]);
    mID[10] = std::min(diskID[disk_read_index[4]][4], diskID[disk_read_index[5]][5]);
    mID[11] = std::min(diskID[disk_read_index[6]][6], diskID[disk_read_index[7]][7]);
    mID[12] = std::min(diskID[disk_read_index[8]][8], diskID[disk_read_index[9]][9]);
    mID[13] = std::min(diskID[disk_read_index[10]][10], diskID[disk_read_index[11]][11]);
    mID[14] = std::min(diskID[disk_read_index[12]][12], diskID[disk_read_index[13]][13]);
    mID[15] = std::min(diskID[disk_read_index[14]][14], diskID[disk_read_index[15]][15]);

    mID[16] = std::min(mID[0], mID[1]);
    mID[17] = std::min(mID[2], mID[3]);
    mID[18] = std::min(mID[4], mID[5]);
    mID[19] = std::min(mID[6], mID[7]);
    mID[20] = std::min(mID[8], mID[9]);
    mID[21] = std::min(mID[10], mID[11]);
    mID[22] = std::min(mID[12], mID[13]);
    mID[23] = std::min(mID[14], mID[15]);

    mID[24] = std::min(mID[16], mID[17]);
    mID[25] = std::min(mID[18], mID[19]);
    mID[26] = std::min(mID[20], mID[21]);
    mID[27] = std::min(mID[22], mID[23]);

    mID[28] = std::min(mID[24], mID[25]);
    mID[29] = std::min(mID[26], mID[27]);

    minID = std::min(mID[28], mID[29]);

    const unsigned short &TCID = (minID != 0x3FFF) ? (minID >> 7) : 0;
    const unsigned short &trackletIndex = (minID != 0x3FFF) ? (0x7F & minID) : 0;
    const TrackletParameters &tpar = trackletParameters[TCID].read_mem(bx, trackletIndex);
    TrackFit track(TCID >> 4, tpar.getRinv(), tpar.getPhi0(), tpar.getZ0(), tpar.getT());

    unsigned short stub0_i[2];
    unsigned short stub1_i[2];
    unsigned short stub2_i[2];
    unsigned short stub3_i[2];
    unsigned short stub4_i[2];
    unsigned short stub5_i[2];
    unsigned short stub6_i[2];
    unsigned short stub7_i[2];

    unsigned short stub0_index = 0;
    unsigned short stub1_index = 0;
    unsigned short stub2_index = 0;
    unsigned short stub3_index = 0;
    unsigned short stub4_index = 0;
    unsigned short stub5_index = 0;
    unsigned short stub6_index = 0;
    unsigned short stub7_index = 0;

    stub0_i[0] = (barrelID[barrel_read_index[0]][0] < barrelID[barrel_read_index[1]][1]) ? 0 : 1;
    stub0_i[1] = (barrelID[barrel_read_index[2]][2] < barrelID[barrel_read_index[3]][3]) ? 2 : 3;
    stub1_i[0] = (barrelID[barrel_read_index[4]][4] < barrelID[barrel_read_index[5]][5]) ? 4 : 5;
    stub1_i[1] = (barrelID[barrel_read_index[6]][6] < barrelID[barrel_read_index[7]][7]) ? 6 : 7;
    stub2_i[0] = (barrelID[barrel_read_index[8]][8] < barrelID[barrel_read_index[9]][9]) ? 8 : 9;
    stub2_i[1] = (barrelID[barrel_read_index[10]][10] < barrelID[barrel_read_index[11]][11]) ? 10 : 11;
    stub3_i[0] = (barrelID[barrel_read_index[12]][12] < barrelID[barrel_read_index[13]][13]) ? 12 : 13;
    stub3_i[1] = (barrelID[barrel_read_index[14]][14] < barrelID[barrel_read_index[15]][15]) ? 14 : 15;

    stub4_i[0] = (diskID[disk_read_index[0]][0] < diskID[disk_read_index[1]][1]) ? 0 : 1;
    stub4_i[1] = (diskID[disk_read_index[2]][2] < diskID[disk_read_index[3]][3]) ? 2 : 3;
    stub5_i[0] = (diskID[disk_read_index[4]][4] < diskID[disk_read_index[5]][5]) ? 4 : 5;
    stub5_i[1] = (diskID[disk_read_index[6]][6] < diskID[disk_read_index[7]][7]) ? 6 : 7;
    stub6_i[0] = (diskID[disk_read_index[8]][8] < diskID[disk_read_index[9]][9]) ? 8 : 9;
    stub6_i[1] = (diskID[disk_read_index[10]][10] < diskID[disk_read_index[11]][11]) ? 10 : 11;
    stub7_i[0] = (diskID[disk_read_index[12]][12] < diskID[disk_read_index[13]][13]) ? 12 : 13;
    stub7_i[1] = (diskID[disk_read_index[14]][14] < diskID[disk_read_index[15]][15]) ? 14 : 15;

    stub0_index = (barrelID[barrel_read_index[stub0_i[0]]][stub0_i[0]] < barrelID[barrel_read_index[stub0_i[1]]][stub0_i[1]]) ? stub0_i[0] : stub0_i[1];
    stub1_index = (barrelID[barrel_read_index[stub1_i[0]]][stub1_i[0]] < barrelID[barrel_read_index[stub1_i[1]]][stub1_i[1]]) ? stub1_i[0] : stub1_i[1];
    stub2_index = (barrelID[barrel_read_index[stub2_i[0]]][stub2_i[0]] < barrelID[barrel_read_index[stub2_i[1]]][stub2_i[1]]) ? stub2_i[0] : stub2_i[1];
    stub3_index = (barrelID[barrel_read_index[stub3_i[0]]][stub3_i[0]] < barrelID[barrel_read_index[stub3_i[1]]][stub3_i[1]]) ? stub3_i[0] : stub3_i[1];

    stub4_index = (diskID[disk_read_index[stub4_i[0]]][stub4_i[0]] < diskID[disk_read_index[stub4_i[1]]][stub4_i[1]]) ? stub4_i[0] : stub4_i[1];
    stub5_index = (diskID[disk_read_index[stub5_i[0]]][stub5_i[0]] < diskID[disk_read_index[stub5_i[1]]][stub5_i[1]]) ? stub5_i[0] : stub5_i[1];
    stub6_index = (diskID[disk_read_index[stub6_i[0]]][stub6_i[0]] < diskID[disk_read_index[stub6_i[1]]][stub6_i[1]]) ? stub6_i[0] : stub6_i[1];
    stub7_index = (diskID[disk_read_index[stub7_i[0]]][stub7_i[0]] < diskID[disk_read_index[stub7_i[1]]][stub7_i[1]]) ? stub7_i[0] : stub7_i[1];

    track.setStub0 (minID != 0x3FFF && barrelID[barrel_read_index[stub0_index]][stub0_index] == minID, barrelStubR[barrel_read_index[stub0_index]][stub0_index], barrelPhiRes[barrel_read_index[stub0_index]][stub0_index], barrelZRes[barrel_read_index[stub0_index]][stub0_index]);
    track.setStub1 (minID != 0x3FFF && barrelID[barrel_read_index[stub1_index]][stub1_index] == minID, barrelStubR[barrel_read_index[stub1_index]][stub1_index], barrelPhiRes[barrel_read_index[stub1_index]][stub1_index], barrelZRes[barrel_read_index[stub1_index]][stub1_index]);
    track.setStub2 (minID != 0x3FFF && barrelID[barrel_read_index[stub2_index]][stub2_index] == minID, barrelStubR[barrel_read_index[stub2_index]][stub2_index], barrelPhiRes[barrel_read_index[stub2_index]][stub2_index], barrelZRes[barrel_read_index[stub2_index]][stub2_index]);
    track.setStub3 (minID != 0x3FFF && barrelID[barrel_read_index[stub3_index]][stub3_index] == minID, barrelStubR[barrel_read_index[stub3_index]][stub3_index], barrelPhiRes[barrel_read_index[stub3_index]][stub3_index], barrelZRes[barrel_read_index[stub3_index]][stub3_index]);
    track.setStub4 (minID != 0x3FFF && diskID[disk_read_index[stub4_index]][stub4_index] == minID, diskStubR[disk_read_index[stub4_index]][stub4_index], diskPhiRes[disk_read_index[stub4_index]][stub4_index], diskZRes[disk_read_index[stub4_index]][stub4_index]);
    track.setStub5 (minID != 0x3FFF && diskID[disk_read_index[stub5_index]][stub5_index] == minID, diskStubR[disk_read_index[stub5_index]][stub5_index], diskPhiRes[disk_read_index[stub5_index]][stub5_index], diskZRes[disk_read_index[stub5_index]][stub5_index]);
    track.setStub6 (minID != 0x3FFF && diskID[disk_read_index[stub6_index]][stub6_index] == minID, diskStubR[disk_read_index[stub6_index]][stub6_index], diskPhiRes[disk_read_index[stub6_index]][stub6_index], diskZRes[disk_read_index[stub6_index]][stub6_index]);
    track.setStub7 (minID != 0x3FFF && diskID[disk_read_index[stub7_index]][stub7_index] == minID, diskStubR[disk_read_index[stub7_index]][stub7_index], diskPhiRes[disk_read_index[stub7_index]][stub7_index], diskZRes[disk_read_index[stub7_index]][stub7_index]);

    track.setTrackIndex(nTracks);

    if (track.getNMatches() >= 2)
      tracks.write_mem(bx, track, nTracks++);

    barrel_read_index[stub0_index] += (barrelID[barrel_read_index[stub0_index]][stub0_index] == minID) ? 1 : 0;
    barrel_read_index[stub1_index] += (barrelID[barrel_read_index[stub1_index]][stub1_index] == minID) ? 1 : 0;
    barrel_read_index[stub2_index] += (barrelID[barrel_read_index[stub2_index]][stub2_index] == minID) ? 1 : 0;
    barrel_read_index[stub3_index] += (barrelID[barrel_read_index[stub3_index]][stub3_index] == minID) ? 1 : 0;

    disk_read_index[stub4_index] += (diskID[disk_read_index[stub4_index]][stub4_index] == minID) ? 1 : 0;
    disk_read_index[stub5_index] += (diskID[disk_read_index[stub5_index]][stub5_index] == minID) ? 1 : 0;
    disk_read_index[stub6_index] += (diskID[disk_read_index[stub6_index]][stub6_index] == minID) ? 1 : 0;
    disk_read_index[stub7_index] += (diskID[disk_read_index[stub7_index]][stub7_index] == minID) ? 1 : 0;
  }
}
