#ifndef TrackletAlgorithm_TrackBuilder_h
#define TrackletAlgorithm_TrackBuilder_h

#include "TrackletParameterMemory.h"
#include "FullMatchMemory.h"
#include "TrackFitMemory.h"

static const unsigned kNBitsTBBuffer = 8;

template<regionType RegionType> const unsigned getID(const BXType bx, const FullMatchMemory<RegionType> &fullMatches, const unsigned short i, typename FullMatch<RegionType>::FMSTUBR &stubr, typename FullMatch<RegionType>::FMPHIRES &phires, typename FullMatch<RegionType>::FMZRES &zres);

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
);

#endif
