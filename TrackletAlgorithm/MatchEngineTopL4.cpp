#include "MatchEngineTopL4.h"

void MatchEngineTopL4(BXType bx,
		      BXType& bx_o,
		      const VMStubMEMemory<BARREL2S>* const instubdata,
		      const VMProjectionMemory<BARREL>* const inprojdata,
		      CandidateMatchMemory* const outcandmatch){
  
#pragma HLS interface register port=bx_o
#pragma HLS resource variable=instubdata latency=2
#pragma HLS resource variable=inprojdata latency=2

  MatchEngine<4, BARREL2S>(bx,
			   bx_o,
			   instubdata,
			   inprojdata,
			   outcandmatch);
  
}

