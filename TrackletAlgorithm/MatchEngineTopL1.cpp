#include "MatchEngineTopL1.h"

void MatchEngineTopL1(BXType bx,
		      BXType& bx_o,
		      const VMStubMEMemory<BARRELPS>* instubdata,
		      const VMProjectionMemory<BARREL>* inprojdata,
		      CandidateMatchMemory* outcandmatch){

  MatchEngine<1,BARRELPS>(bx,
			  bx_o,
			  instubdata,
			  inprojdata,
			  outcandmatch);
  
}

