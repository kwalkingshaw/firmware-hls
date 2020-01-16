#include "MatchEngineTopL4.h"

void MatchEngineTopL4(BXType bx,
		      BXType& bx_o,
		      const VMStubMEMemory<BARREL2S>* const instubdata,
		      const VMProjectionMemory<BARREL>* const inprojdata,
		      CandidateMatchMemory* const outcandmatch){
  

  MatchEngine<4, BARREL2S>(bx,
			   bx_o,
			   instubdata,
			   inprojdata,
			   outcandmatch);
  
}

