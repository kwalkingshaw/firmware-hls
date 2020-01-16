#ifndef MATCHENGINETOPL1_H
#define MATCHENGINETOPL1_H

#include "MatchEngine.h"

void MatchEngineTopL1(BXType bx,
		      BXType& bx_o,
		      const VMStubMEMemory<BARRELPS>* instubdata,
		      const VMProjectionMemory<BARREL>* inprojdata,
		      CandidateMatchMemory* outcandmatch);


#endif
