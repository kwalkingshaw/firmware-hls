#ifndef TrackletAlgorithm_TrackBuilder_h
#define TrackletAlgorithm_TrackBuilder_h

#include "TrackletParameterMemory.h"
#include "FullMatchMemory.h"
#include "TrackFitMemory.h"

void
getFMIndices(
    const BXType bx,
    const FullMatchMemory<BARREL> barrelFullMatches[16],
    const FullMatchMemory<DISK> diskFullMatches[16],
    short &iFMMem,
    short &iFM,
    bool &done
);

void
getTPARIndices(
    const BXType bx,
    const TrackletParameterMemory trackletParameters[12],
    short &iTPARMem,
    short &iTPAR,
    bool &done
);

void mergeTracks (const BXType bx, const TrackFit unmergedTracks[12][kMemDepth], TrackFitMemory &tracks);

void writeTrack (const BXType bx, const TrackFit &track, TrackFitMemory &tracks, unsigned short &nTracks);

void TrackBuilder(
    const BXType bx,
    const TrackletParameterMemory trackletParameters[12],
    const FullMatchMemory<BARREL> barrelFullMatches[16],
    const FullMatchMemory<DISK> diskFullMatches[16],
    TrackFitMemory &tracks
);

#endif
