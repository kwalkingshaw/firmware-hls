#ifndef MATCHENGINE_H
#define MATCHENGINE_H

// cms-tracklet/firmware-hls Headers
#include "Constants.h"
#include "VMProjectionMemory.h"
#include "VMStubMEMemory.h"
#include "CandidateMatchMemory.h"

// HLS Headers
#include "hls_math.h"

// STL Headers
#include <iostream>
#include <fstream>
#include <bitset>

/////////////////////////////
// -- PREPROCESSOR FUNCTIONS
#define IS_REPRESENTIBLE_IN_D_BITS(D, N)                \
   (((unsigned long) N >= (1UL << (D - 1)) && (unsigned long) N < (1UL << D)) ? D : -1)
#define BITS_TO_REPRESENT(N)                             \
   (N == 0 ? 1 : (31                                     \
				  + IS_REPRESENTIBLE_IN_D_BITS( 1, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS( 2, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS( 3, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS( 4, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS( 5, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS( 6, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS( 7, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS( 8, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS( 9, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(10, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(11, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(12, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(13, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(14, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(15, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(16, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(17, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(18, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(19, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(20, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(21, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(22, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(23, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(24, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(25, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(26, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(27, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(28, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(29, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(30, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(31, N)    \
				  + IS_REPRESENTIBLE_IN_D_BITS(32, N)    \
				  )                                      \
	  )
#define LAYER 3
//Options: BARREL and DISK
#define PROJECTIONTYPE BARREL
#if (LAYER >= 1) && (LAYER <= 3)
	#define MODULETYPE BARRELPS
#elif (LAYER >= 4) && (LAYER <= 6)
	#define MODULETYPE BARREL2S
#endif

  //Initialize table for bend-rinv consistency
  bool table[(L<4)?256:512]; //FIXME Need to figure out how to replace 256 with meaningful const.
  readTable<L>(table);

  outcandmatch->clear();

  //Buffer of projections. Projection memory is read and if projections points
  //to nonempty zbin for the stubs it is stored on this buffer. The buffer is 
  //circular, and the projection reading will stop if buffer is full and continue 
  //after the buffer is drained

  constexpr unsigned int kNBitsBuffer=3;
  constexpr int kNBits_ProjBuffer =kNBits_MemAddrBinned + VMProjectionBase<BARREL>::kVMProjectionSize + 1 +kNBits_z +1;

  ap_uint<kNBitsBuffer> writeindex=0;
  ap_uint<kNBitsBuffer> readindex=0;
  ap_uint<kNBits_ProjBuffer> projbuffer[1<<kNBitsBuffer];  //projbuffer = nstub+projdata+finez
#pragma HLS ARRAY_PARTITION variable=projbuffer complete dim=0

  //The next projection to read, the number of projections and flag if we have
  //more projections to read
  ap_uint<kNBits_MemAddr> iproj=0; //counter
  auto const nproj=inprojdata->getEntries(bx);
  bool moreproj=iproj<nproj;

  //Projection that is read from the buffer and compared to stubs  
  ap_uint<TEBinsBits> zbin=0;
  VMProjection<BARREL>::VMPID projindex;
  VMProjection<BARREL>::VMPFINEZ projfinez;
  ap_int<5> projfinezadj; //FIXME Need replace 5 with const
  VMProjection<BARREL>::VMPRINV projrinv;
  bool isPSseed;
  bool second;

  //Number of stubs for current zbin and the stub being processed on this clock
  ap_uint<kNBits_MemAddrBinned> nstubs=0;
  ap_uint<kNBits_MemAddrBinned> istub=0;
#pragma HLS dependence variable=istub intra WAR true
  
// declare counter for output to CandidateMatch // !!!                                                                                                                                                       
  int ncmatchout = 0;

  //Main processing loops starts here  
  for (ap_uint<kNBits_MemAddr> istep=0;istep<kMaxProc-8;istep++) {
#pragma HLS PIPELINE II=1

    //prefetch and calculate write pointers for buffer
    auto const qdata=projbuffer[readindex];
        /* FIXME
        std::cout << "initial pulled from buffer" << std::endl;
        std::cout << std::hex << "data=" << qdata.range(25,4) << std::endl;
        */
    ap_uint<kNBitsBuffer> writeindexplus=writeindex+1;
    ap_uint<kNBitsBuffer> writeindexplusplus=writeindex+2;

    //Determine if buffere is full - or near full as a projection
    //can point to two z bins we might fill two slots in the buffer
    bool buffernotfull=(writeindexplus!=readindex)&&(writeindexplusplus!=readindex);
    //Determin if buffere is empty
    bool buffernotempty=(writeindex!=readindex);

    //If we have more projections and the buffer is not full we read
    //next projection and put in buffer if there are stubs in the 
    //memory the projection points to
    if (moreproj&&buffernotfull){
      auto const iprojtmp=iproj;
      auto const projdata=inprojdata->read_mem(bx,iprojtmp);
      auto const projzbin=projdata.getZBin();
        /* FIXME
      std::cout << "putting into buffer" << std::endl;
      std::cout << std::hex << "data=" << projdata.raw() << std::endl;
      std::cout << "zbin=" << projzbin << std::endl;
      */
      iproj++;
      moreproj=iproj<nproj;

      //The first and last zbin the projection points to
      ap_uint<TEBinsBits> zfirst=projzbin.range(3,1);
      ap_uint<TEBinsBits> zlast=zfirst+projzbin.range(0,0);
        /* FIXME
      std::cout << "zfirst=" << zfirst << "\t"
                << "zlast=" << zlast << std::endl;
      */

      //Check if there are stubs in the memory
      auto const nstubfirst=instubdata->getEntries(bx,zfirst);
      auto const  nstublast=instubdata->getEntries(bx,zlast);
        /* FIXME
      std::cout << "nstubfirst=" << nstubfirst << "\t"
                << "nstublast=" << nstublast << std::endl;
      */
      bool savefirst=nstubfirst!=0;
      bool savelast=nstublast!=0&&projzbin.range(0,0);
      auto const writeindextmp=writeindex;

      if (savefirst&&savelast) {
	writeindex=writeindexplusplus;
      } else if (savefirst||savelast) {
	writeindex=writeindexplus;
      }

      if (savefirst) { //FIXME code needs to be cleaner
	ap_uint<1> zero=0;
	ap_uint<4> tmp=zfirst.concat(zero);
	ap_uint<26> tmp2=projdata.raw().concat(tmp);
	projbuffer[writeindextmp]=nstubfirst.concat(tmp2);
      }
      if (savelast) {
	ap_uint<1> one=1;
	ap_uint<4> tmp=zlast.concat(one);
	ap_uint<26> tmp2=projdata.raw().concat(tmp);
	if (savefirst) {
	  ap_uint<kNBitsBuffer> writeindextmpplus=writeindextmp+1;
	  projbuffer[writeindextmpplus]=nstublast.concat(tmp2);
	} else {
	  projbuffer[writeindextmp]=nstublast.concat(tmp2);
	}
      }
    }


    //If the buffer is not empty we have a projection that we need to 
    //process. 
    if (buffernotempty) {

      ap_uint<kNBits_MemAddrBinned> istubtmp=istub;

      //New projection
      if (istub==0) {

	//Need to read the information about the proj in the buffer
        nstubs=qdata.range(29,26);
        std::cout << "nstubs=" << nstubs << std::endl;
	zbin=qdata.range(3,1);
	VMProjection<BARREL> data(qdata.range(25,4));

	projindex=data.getIndex();
	projfinez=data.getFineZ();
	projrinv=data.getRInv();
	isPSseed=data.getIsPSSeed();

	second=qdata.range(0,0);	

        /* FIXME
        std::cout << "pulled from buffer" << std::endl;
        std::cout << std::hex << "data=" << data.raw() << std::endl;
        std::cout << "zbin=" << zbin << "\tistubtmp=" << istubtmp << std::endl;
        std::cout << "qdata=" << std::bitset<4>(qdata.range(3,0)) << std::endl;
        std::cout << "concat=" << zbin.concat(istubtmp) << std::endl;
        std::cout << "tproj" << std::endl;
    std::cout << std::dec <<  "index=" << projindex << std::endl
              << std::hex << "projfinez=" << projfinez << std::endl
              << "rinv=" << projrinv << std::endl
              << "isPSSeed=" << isPSseed << std::endl << std::endl;
        VMProjection<BARREL> vmproj(projindex, data.getZBin(), projfinez, projrinv, isPSseed);
        std::cout << std::hex << "vmproj=" << std::bitset<VMProjectionBase<BARREL>::kVMProjectionSize>( vmproj.raw() ) << std::endl;
        std::cout << std::hex << "projid=" << vmproj.getIndex() << std::endl;
        std::cout << std::dec << "nstubs=" << nstubs << std::endl;
        std::cout << "###" << std::endl;
        */
	//Calculate fine z position
	if (second) {
	  projfinezadj=projfinez-8;
	} else {
	  projfinezadj=projfinez;
	}

	if (nstubs==1) {
	  istub=0;
	  readindex++;
	} else {
	  istub++;
	}
      } else {
	//Check if last stub, if so, go to next buffer entry 
	if (istub+1>=nstubs){
	  istub=0;
	  readindex++;
	} else {
	  istub++;
	}
      }
      
      //Read stub memory and extract data fields
      auto const  stubadd=zbin.concat(istubtmp);
      std::cout << "stubadd=" << stubadd << std::endl;
        std::cout << std::hex << "zbin=" << zbin << "\tistubtmp=" << istubtmp << std::endl;
      //typename VMStubME<VMSMEType> stubdata=instubdata->read_mem(bx,stubadd);
      //typename VMStubME<VMSMEType>::VMSMEID stubindex=stubdata.getIndex();
      //typename VMStubME<VMSMEType>::VMSMEFINEZ stubfinez=stubdata.getFineZ();
      //typename VMStubME<VMSMEType>::VMSMEBEND stubbend=stubdata.getBend();
      auto stubdata=instubdata->read_mem(bx,stubadd);
      auto stubindex=stubdata.getIndex();
      auto stubfinez=stubdata.getFineZ();
      auto stubbend=stubdata.getBend();

      //Check if stub z position consistent
      ap_int<5> idz=stubfinez-projfinezadj;
      std::cout << "stubfinez=" << stubfinez << "\tprojfinez=" << projfinez << "\tprojfinezadj=" << projfinezadj << std::endl;
      std::cout << "stubdata=" << stubdata.raw() << std::endl;
      bool pass;
      if (isPSseed) {
	pass=idz>=-2&&idz<=2;
      } else {
	pass=idz>=-5&&idz<=5;
      }

      //Check if stub bend and proj rinv consistent
      auto const index=projrinv.concat(stubbend);
      if (pass&&table[index]) {
	CandidateMatch cmatch(projindex.concat(stubindex));
          std::cout << std::hex << "projindex=" << projindex << " stubindex=" << stubindex << std::endl;
          std::cout << "stubadd=" << stubadd << std::endl;
          std::cout << "cmatch=" << cmatch.raw() << std::endl;
	outcandmatch->write_mem(bx,cmatch,ncmatchout);
	ncmatchout ++;
      } // if(pass&&table[index])
      
    } // if(buffernotempty)

    if (istep==kMaxProc-1-8) bx_o = bx;
  } // for (ap_uint<kNBits_MemAddr> istep=0;istep<kMaxProc;istep++) 

} // void MatchEngine()

#endif



#if CODEVERSION==1

//
// This version closely follows the code in the emulations. This version can
// not be pipelined
// This version has not been updated to be compatible with the new memory formats

void MatchEngine(const BXType bx, BXType& bx_o,
		 const VMStubMEMemory* instubdata,
		 const VMProjectionMemory* inprojdata,
		 CandidateMatchMemory* outcandmatch){


#ifndef __SYNTHESIS__
  std::cout << "In MatchEngine #proj ="<<std::hex<<inprojdata->getEntries(bx)<<" #stubs=";
  for (unsigned int zbin=0;zbin<8;zbin++){
    std::cout <<" "<<instubdata->getEntries(bx,zbin);
  }
  std::cout<<std::dec<<std::endl;
#endif

  // Initialize the pt-bend lookup table
  bool table[256]; //Need to figure out how to replace 256 with some 
                   //meaning full constant
  readTable(table);

  outcandmatch->clear();

  auto const nproj=inprojdata->getEntries(bx);

  // declare counter for output to CandidateMatch // !!!
  int ncmatchout = 0;
  //Outermost loop is over the projections
  for (ap_uint<kNBits_MemAddr> iproj=0;iproj<nproj;iproj++) {
    //Read projection from memory and extract the elements of the projection
    VMProjection proj=inprojdata->read_mem(bx,iproj);
    VMProjection::VMPID projindex=proj.getIndex();
    VMProjection::VMPZBIN projzbin=proj.getZBin();
    VMProjection::VMPFINEZ projfinez=proj.getFineZ();
    VMProjection::VMPRINV projrinv=proj.getRInv();
    bool isPSseed=proj.getIsPSSeed();
    
    //Calculate first and last zbin that need to searched for stubs
    ap_uint<TEBinsBits> zfirst=projzbin.range(3,1);
    ap_uint<TEBinsBits> zlast=zfirst+projzbin.range(0,0);


    //Loop over the zbins. There are at most two zbins that needs to be searched
    for (ap_uint<TEBinsBits> zbin=zfirst;zbin<=zlast;zbin++){
      ap_uint<kNBits_MemAddrBinned> nstub=instubdata->getEntries(bx,zbin);

      //Loop over the stubs in the bin
      for (ap_uint<kNBits_MemAddrBinned> istub=0;istub<nstub;istub++) {
        //Read the stub memory and extract the elements of the projection
        //VMStubME stubdata=instubdata->read_mem(bx,zbin.concat(istub));
	//VMStubME::VMSMEID stubindex=stubdata.getIndex();
	//VMStubME::VMSMEFINEZ stubfinez=stubdata.getFineZ();
	//VMStubME::VMSMEBEND stubbend=stubdata.getBend();

        auto const stubdata=instubdata->read_mem(bx,zbin.concat(istub));
	auto const stubindex=stubdata.getIndex();
	auto const stubfinez=stubdata.getFineZ();
	auto const stubbend=stubdata.getBend();
	
	//Check is stub and projection satisfies the z cut 
	ap_int<5> idz=stubfinez-projfinez;
	if (zbin!=zfirst) idz+=8;
	bool pass=hls::abs(idz)<=5;
	if (isPSseed) {
	  pass=hls::abs(idz)<=2;
	}

	//Use lookup table for pt-bend matchcing and if stub passes
	//the cut save the projection-stub pair as a candidate match
	auto const index=projrinv.concat(stubbend);
	if (pass&&table[index]) {
	  CandidateMatch cmatch(projindex.concat(stubindex));
	  outcandmatch->write_mem(bx,cmatch,ncmatchout);
	  ncmatchout ++;
	}

      }
    }
  }
}

/////////////////////////////
// -- MATCH ENGINE FUNCTIONS
void readTable(bool table[LSIZE]);

//template<int L, regionType VMSMEType>
template<int L, int VMSMEType>
void MatchEngine(const BXType bx, BXType& bx_o,
		 		 const VMStubMEMemory<VMSMEType>& inputStubData,
		 		 const VMProjectionMemory<PROJECTIONTYPE>& inputProjectionData,
		 		 CandidateMatchMemory& outputCandidateMatch);

void MatchEngineTop(const BXType bx, BXType& bx_o,
					const VMStubMEMemory<MODULETYPE>& inputStubData,
					const VMProjectionMemory<PROJECTIONTYPE>& inputProjectionData,
					CandidateMatchMemory& outputCandidateMatch);

#endif
