#include "VMRouterTop.hh"

// VMRouter Top Function for layer 1, AllStub region E

void VMRouterTop(BXType bx,
		const InputStubMemory<BARRELPS> *i0,
		const InputStubMemory<BARRELPS> *i1,
		const InputStubMemory<BARRELPS> *i2,
		const InputStubMemory<BARRELPS> *i3,
		const InputStubMemory<BARRELPS> *i4,
		const InputStubMemory<BARRELPS> *i5,
//		const InputStubMemory<BARRELPS> *i6,
//		const InputStubMemory<BARRELPS> *i7,
		AllStubMemory<BARRELPS> *allStub,
		VMStubMEMemory<BARRELPS> *m0,
		VMStubMEMemory<BARRELPS> *m1,
		VMStubMEMemory<BARRELPS> *m2,
		VMStubMEMemory<BARRELPS> *m3,
		VMStubMEMemory<BARRELPS> *m4,
		VMStubMEMemory<BARRELPS> *m5,
		VMStubMEMemory<BARRELPS> *m6,
		VMStubMEMemory<BARRELPS> *m7,
		VMStubTEInnerMemory<BARRELPS> *mtei0,
		VMStubTEInnerMemory<BARRELPS> *mtei1,
		VMStubTEInnerMemory<BARRELPS> *mtei2,
		VMStubTEInnerMemory<BARRELPS> *mtei3,
		VMStubTEInnerMemory<BARRELPS> *mtei4,
		VMStubTEInnerMemory<BARRELPS> *mtei5,
		VMStubTEInnerMemory<BARRELPS> *mtei6,
		VMStubTEInnerMemory<BARRELPS> *mtei7
		)
{

	// Variables for that are specified with regards to the test bench, should be set somewhere else
	const int layer(1); // Which barrel layer number the data is coming from, 0 if not barrel
	const int disk(0); // Which disk number the data is coming from, 0 if not disk
	const bool isPSmodule(true); // If the module is of the PS type, otherwise it's 2S

	ap_uint<32> memask(0x000F00F0); // Mask of which memories that are being used. What is UL?
	ap_uint<6> imask(7); // Mask of which inputs are being used
	ap_uint<32> teimask(0x000F00F0); // Mask of which TE Inner memories that are used

	VMRouter<BARRELPS, BARRELPS, layer, disk, isPSmodule>
		 (bx,imask, i0,i1,i2,i3,i4,i5,//i5,i6,i7,
		 allStub, memask,
		 0,0,0,0,m4,m5,m6,m7, // 0-7
		 0,0,0,0,0,0,0,0, // 8-15
		 m0,m1,m2,m3,0,0,0,0, // 16-23
		 0,0,0,0,0,0,0,0, // 24-31
		 teimask,
		 0,0,0,0,mtei4,mtei5,mtei6,mtei7, // 0-7
		 0,0,0,0,0,0,0,0, // 8-15
		 mtei0,mtei1,mtei2,mtei3,0,0,0,0, // 16-23
		 0,0,0,0,0,0,0,0 // 24-31
		 );

	return;
}
