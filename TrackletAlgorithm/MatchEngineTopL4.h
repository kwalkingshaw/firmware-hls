#ifndef MATCHENGINETOPL4_H
#define MATCHENGINETOPL4_H

#include "MatchEngine.h"

void MatchEngineTopL4(BXType bx,
		      BXType& bx_o,
		      const VMStubMEMemory<BARREL2S>* const instubdata,
		      const VMProjectionMemory<BARREL>* const inprojdata,
		      CandidateMatchMemory* const outcandmatch);


#endif
