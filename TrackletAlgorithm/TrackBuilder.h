#pragma once

#include "TrackletParameterMemory.h"
#include "FullMatchMemory.h"
#include "TrackFitMemory.h"

void getIndices(
    const BXType bx,
    const TrackletParameterMemory trackletParameters[12],
    short &iTPARMem,
    short &iTPAR,
    bool &done
);

void TrackBuilder(
    const BXType bx,
    const TrackletParameterMemory trackletParameters[12],
    const FullMatchMemory<BARREL> barrelFullMatches[16],
    const FullMatchMemory<DISK> diskFullMatches[16],
    TrackFitMemory &tracks
);
