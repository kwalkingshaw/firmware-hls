#ifndef TrackletAlgorithm_TrackFitMemory_h
#define TrackletAlgorithm_TrackFitMemory_h

#include "Constants.h"
#include "MemoryTemplate.h"

// TrackFitBase is where we define the bit widths.
class TrackFitBase
{
public:
  enum BitWidths {
    // Bit size for track word fields
    kTFValidSize = 1,
    kTFSeedTypeSize = 1,
    kTFRinvSize = 14,
    kTFPhi0Size = 18,
    kTFZ0Size = 10,
    kTFTSize = 14,
    kTFLMapSize = 24,
    // Bit size for stub word fields
    kTFTrackIndexSize = 7,
    kTFBarrelStubRSize = 7,
    kTFDiskStubRSize = 12,
    kTFPhiResidSize = 12,
    kTFZResidSize = 9,
    kTFRResidSize = 7,
    // Bit size for full TrackFitMemory
    kTrackFitSize = kTFValidSize + kTFSeedTypeSize + kTFRinvSize + kTFPhi0Size + kTFZ0Size + kTFTSize + kTFLMapSize
                  // L3 stub word
                  + kTFValidSize + kTFTrackIndexSize + kTFBarrelStubRSize + kTFPhiResidSize + kTFZResidSize
                  // L4 stub word
                  + kTFValidSize + kTFTrackIndexSize + kTFBarrelStubRSize + kTFPhiResidSize + kTFZResidSize
                  // L5 stub word
                  + kTFValidSize + kTFTrackIndexSize + kTFBarrelStubRSize + kTFPhiResidSize + kTFZResidSize
                  // L6 stub word
                  + kTFValidSize + kTFTrackIndexSize + kTFBarrelStubRSize + kTFPhiResidSize + kTFZResidSize
                  // D1 stub word
                  + kTFValidSize + kTFTrackIndexSize + kTFDiskStubRSize + kTFPhiResidSize + kTFRResidSize
                  // D2 stub word
                  + kTFValidSize + kTFTrackIndexSize + kTFDiskStubRSize + kTFPhiResidSize + kTFRResidSize
                  // D3 stub word
                  + kTFValidSize + kTFTrackIndexSize + kTFDiskStubRSize + kTFPhiResidSize + kTFRResidSize
                  // D4 stub word
                  + kTFValidSize + kTFTrackIndexSize + kTFDiskStubRSize + kTFPhiResidSize + kTFRResidSize;
  };
};

// Data object definition
class TrackFit : public TrackFitBase
{
public:
  enum BitLocations {
    // The location of the least significant bit (LSB) and most significant bit (MSB) in the TrackFitMemory word for different fields
    kTFTrackValidLSB = 0,
    kTFTrackValidMSB = kTFTrackValidLSB + TrackFitBase::kTFValidSize - 1,
    kTFSeedTypeLSB = kTFValidMSB + 1,
    kTFSeedTypeMSB = kTFSeedTypeLSB + TrackFitBase::kTFSeedTypeSize - 1,
    kTFRinvLSB = kTFSeedTypeMSB + 1,
    kTFRinvMSB = kTFRinvLSB + TrackFitBase::kTFRinvSize - 1,
    kTFPhi0LSB = kTFRinvMSB + 1,
    kTFPhi0MSB = kTFPhi0LSB + TrackFitBase::kTFPhi0Size - 1,
    kTFZ0LSB = kTFPhi0MSB + 1,
    kTFZ0MSB = kTFZ0LSB + TrackFitBase::kTFZ0Size - 1,
    kTFTLSB = kTFZ0MSB + 1,
    kTFTMSB = kTFTLSB + TrackFitBase::kTFTSize - 1,
    kTFLMapLSB = kTFTMSB + 1,
    kTFLMapMSB = kTFLMapLSB + TrackFitBase::kTFLMapSize - 1,

    // L3 stub word
    kTFStub0ValidLSB = kTFLMapMSB + 1,
    kTFStub0ValidMSB = kTFStub0ValidLSB + TrackFitBase::kTFValidSize - 1,
    kTFStub0TrackIndexLSB = kTFStub0ValidMSB + 1,
    kTFStub0TrackIndexMSB = kTFStub0TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub0RLSB = kTFStub0TrackIndexMSB + 1,
    kTFStub0RMSB = kTFStub0RLSB + TrackFitBase::kTFBarrelStubRSize - 1,
    kTFStub0PhiResidLSB = kTFStub0RMSB + 1,
    kTFStub0PhiResidMSB = kTFStub0PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub0ZResidLSB = kTFStub0PhiResidMSB + 1,
    kTFStub0ZResidMSB = kTFStub0ZResidLSB + TrackFitBase::kTFZResidSize - 1,

    // L4 stub word
    kTFStub1ValidLSB = kTFStub0ZResidMSB + 1,
    kTFStub1ValidMSB = kTFStub1ValidLSB + TrackFitBase::kTFValidSize - 1,
    kTFStub1TrackIndexLSB = kTFStub1ValidMSB + 1,
    kTFStub1TrackIndexMSB = kTFStub1TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub1RLSB = kTFStub1TrackIndexMSB + 1,
    kTFStub1RMSB = kTFStub1RLSB + TrackFitBase::kTFBarrelStubRSize - 1,
    kTFStub1PhiResidLSB = kTFStub1RMSB + 1,
    kTFStub1PhiResidMSB = kTFStub1PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub1ZResidLSB = kTFStub1PhiResidMSB + 1,
    kTFStub1ZResidMSB = kTFStub1ZResidLSB + TrackFitBase::kTFZResidSize - 1,

    // L5 stub word
    kTFStub2ValidLSB = kTFStub1ZResidMSB + 1,
    kTFStub2ValidMSB = kTFStub2ValidLSB + TrackFitBase::kTFValidSize - 1,
    kTFStub2TrackIndexLSB = kTFStub2ValidMSB + 1,
    kTFStub2TrackIndexMSB = kTFStub2TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub2RLSB = kTFStub2TrackIndexMSB + 1,
    kTFStub2RMSB = kTFStub2RLSB + TrackFitBase::kTFBarrelStubRSize - 1,
    kTFStub2PhiResidLSB = kTFStub2RMSB + 1,
    kTFStub2PhiResidMSB = kTFStub2PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub2ZResidLSB = kTFStub2PhiResidMSB + 1,
    kTFStub2ZResidMSB = kTFStub2ZResidLSB + TrackFitBase::kTFZResidSize - 1,

    // L6 stub word
    kTFStub3ValidLSB = kTFStub2ZResidMSB + 1,
    kTFStub3ValidMSB = kTFStub3ValidLSB + TrackFitBase::kTFValidSize - 1,
    kTFStub3TrackIndexLSB = kTFStub3ValidMSB + 1,
    kTFStub3TrackIndexMSB = kTFStub3TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub3RLSB = kTFStub3TrackIndexMSB + 1,
    kTFStub3RMSB = kTFStub3RLSB + TrackFitBase::kTFBarrelStubRSize - 1,
    kTFStub3PhiResidLSB = kTFStub3RMSB + 1,
    kTFStub3PhiResidMSB = kTFStub3PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub3ZResidLSB = kTFStub3PhiResidMSB + 1,
    kTFStub3ZResidMSB = kTFStub3ZResidLSB + TrackFitBase::kTFZResidSize - 1,

    // D1 stub word
    kTFStub4ValidLSB = kTFStub3ZResidMSB + 1,
    kTFStub4ValidMSB = kTFStub4ValidLSB + TrackFitBase::kTFValidSize - 1,
    kTFStub4TrackIndexLSB = kTFStub4ValidMSB + 1,
    kTFStub4TrackIndexMSB = kTFStub4TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub4RLSB = kTFStub4TrackIndexMSB + 1,
    kTFStub4RMSB = kTFStub4RLSB + TrackFitBase::kTFDiskStubRSize - 1,
    kTFStub4PhiResidLSB = kTFStub4RMSB + 1,
    kTFStub4PhiResidMSB = kTFStub4PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub4RResidLSB = kTFStub4PhiResidMSB + 1,
    kTFStub4RResidMSB = kTFStub4RResidLSB + TrackFitBase::kTFRResidSize - 1,

    // D2 stub word
    kTFStub5ValidLSB = kTFStub4RResidMSB + 1,
    kTFStub5ValidMSB = kTFStub5ValidLSB + TrackFitBase::kTFValidSize - 1,
    kTFStub5TrackIndexLSB = kTFStub5ValidMSB + 1,
    kTFStub5TrackIndexMSB = kTFStub5TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub5RLSB = kTFStub5TrackIndexMSB + 1,
    kTFStub5RMSB = kTFStub5RLSB + TrackFitBase::kTFDiskStubRSize - 1,
    kTFStub5PhiResidLSB = kTFStub5RMSB + 1,
    kTFStub5PhiResidMSB = kTFStub5PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub5RResidLSB = kTFStub5PhiResidMSB + 1,
    kTFStub5RResidMSB = kTFStub5RResidLSB + TrackFitBase::kTFRResidSize - 1,

    // D3 stub word
    kTFStub6ValidLSB = kTFStub5RResidMSB + 1,
    kTFStub6ValidMSB = kTFStub6ValidLSB + TrackFitBase::kTFValidSize - 1,
    kTFStub6TrackIndexLSB = kTFStub6ValidMSB + 1,
    kTFStub6TrackIndexMSB = kTFStub6TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub6RLSB = kTFStub6TrackIndexMSB + 1,
    kTFStub6RMSB = kTFStub6RLSB + TrackFitBase::kTFDiskStubRSize - 1,
    kTFStub6PhiResidLSB = kTFStub6RMSB + 1,
    kTFStub6PhiResidMSB = kTFStub6PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub6RResidLSB = kTFStub6PhiResidMSB + 1,
    kTFStub6RResidMSB = kTFStub6RResidLSB + TrackFitBase::kTFRResidSize - 1,

    // D4 stub word
    kTFStub7ValidLSB = kTFStub6RResidMSB + 1,
    kTFStub7ValidMSB = kTFStub7ValidLSB + TrackFitBase::kTFValidSize - 1,
    kTFStub7TrackIndexLSB = kTFStub7ValidMSB + 1,
    kTFStub7TrackIndexMSB = kTFStub7TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub7RLSB = kTFStub7TrackIndexMSB + 1,
    kTFStub7RMSB = kTFStub7RLSB + TrackFitBase::kTFDiskStubRSize - 1,
    kTFStub7PhiResidLSB = kTFStub7RMSB + 1,
    kTFStub7PhiResidMSB = kTFStub7PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub7RResidLSB = kTFStub7PhiResidMSB + 1,
    kTFStub7RResidMSB = kTFStub7RResidLSB + TrackFitBase::kTFRResidSize - 1
  };

  typedef ap_int<TrackFitBase::kTFValidSize> TFTRACKVALID;
  typedef ap_int<TrackFitBase::kTFSeedTypeSize> TFSEEDTYPE;
  typedef ap_int<TrackFitBase::kTFRinvSize> TFRINV;
  typedef ap_int<TrackFitBase::kTFPhi0Size> TFPHI0;
  typedef ap_int<TrackFitBase::kTFZ0Size> TFZ0;
  typedef ap_int<TrackFitBase::kTFTSize> TFT;
  typedef ap_int<TrackFitBase::kTFLMapSize> TFLMAP;

  typedef ap_int<TrackFitBase::kTFValidSize> TFSTUB0VALID;
  typedef ap_int<TrackFitBase::kTFTrackIndexSize> TFSTUB0TRACKINDEX;
  typedef ap_int<TrackFitBase::kTFBarrelStubRSize> TFSTUB0R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB0PHIRESID;
  typedef ap_int<TrackFitBase::kTFZResidSize> TFSTUB0ZRESID;

  typedef ap_int<TrackFitBase::kTFValidSize> TFSTUB1VALID;
  typedef ap_int<TrackFitBase::kTFTrackIndexSize> TFSTUB1TRACKINDEX;
  typedef ap_int<TrackFitBase::kTFBarrelStubRSize> TFSTUB1R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB1PHIRESID;
  typedef ap_int<TrackFitBase::kTFZResidSize> TFSTUB1ZRESID;

  typedef ap_int<TrackFitBase::kTFValidSize> TFSTUB2VALID;
  typedef ap_int<TrackFitBase::kTFTrackIndexSize> TFSTUB2TRACKINDEX;
  typedef ap_int<TrackFitBase::kTFBarrelStubRSize> TFSTUB2R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB2PHIRESID;
  typedef ap_int<TrackFitBase::kTFZResidSize> TFSTUB2ZRESID;

  typedef ap_int<TrackFitBase::kTFValidSize> TFSTUB3VALID;
  typedef ap_int<TrackFitBase::kTFTrackIndexSize> TFSTUB3TRACKINDEX;
  typedef ap_int<TrackFitBase::kTFBarrelStubRSize> TFSTUB3R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB3PHIRESID;
  typedef ap_int<TrackFitBase::kTFZResidSize> TFSTUB3ZRESID;

  typedef ap_int<TrackFitBase::kTFValidSize> TFSTUB4VALID;
  typedef ap_int<TrackFitBase::kTFTrackIndexSize> TFSTUB4TRACKINDEX;
  typedef ap_int<TrackFitBase::kTFDiskStubRSize> TFSTUB4R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB4PHIRESID;
  typedef ap_int<TrackFitBase::kTFRResidSize> TFSTUB4RRESID;

  typedef ap_int<TrackFitBase::kTFValidSize> TFSTUB5VALID;
  typedef ap_int<TrackFitBase::kTFTrackIndexSize> TFSTUB5TRACKINDEX;
  typedef ap_int<TrackFitBase::kTFDiskStubRSize> TFSTUB5R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB5PHIRESID;
  typedef ap_int<TrackFitBase::kTFRResidSize> TFSTUB5RRESID;

  typedef ap_int<TrackFitBase::kTFValidSize> TFSTUB6VALID;
  typedef ap_int<TrackFitBase::kTFTrackIndexSize> TFSTUB6TRACKINDEX;
  typedef ap_int<TrackFitBase::kTFDiskStubRSize> TFSTUB6R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB6PHIRESID;
  typedef ap_int<TrackFitBase::kTFRResidSize> TFSTUB6RRESID;

  typedef ap_int<TrackFitBase::kTFValidSize> TFSTUB7VALID;
  typedef ap_int<TrackFitBase::kTFTrackIndexSize> TFSTUB7TRACKINDEX;
  typedef ap_int<TrackFitBase::kTFDiskStubRSize> TFSTUB7R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB7PHIRESID;
  typedef ap_int<TrackFitBase::kTFRResidSize> TFSTUB7RRESID;

  typedef ap_uint<TrackFitBase::kTrackFitSize> TrackFitData;

  // Constructors
  TrackFit(const TrackFitData& newdata):
    data_(newdata)
  {}

  TrackFit(const TFTRACKVALID trackvalid, const TFSEEDTYPE seedtype, const TFRINV rinv, const TFPHI0 phi0, const TFZ0 z0, const TFT t, const TFLMAP lmap,
           const TFSTUB0VALID stub0valid, const TFSTUB0TRACKINDEX stub0trackindex, const TFSTUB0R stub0r, const TFSTUB0PHIRESID stub0phiresid, const TFSTUB0ZRESID stub0zresid,
           const TFSTUB1VALID stub1valid, const TFSTUB1TRACKINDEX stub1trackindex, const TFSTUB1R stub1r, const TFSTUB1PHIRESID stub1phiresid, const TFSTUB1ZRESID stub1zresid,
           const TFSTUB2VALID stub2valid, const TFSTUB2TRACKINDEX stub2trackindex, const TFSTUB2R stub2r, const TFSTUB2PHIRESID stub2phiresid, const TFSTUB2ZRESID stub2zresid,
           const TFSTUB3VALID stub3valid, const TFSTUB3TRACKINDEX stub3trackindex, const TFSTUB3R stub3r, const TFSTUB3PHIRESID stub3phiresid, const TFSTUB3ZRESID stub3zresid,
           const TFSTUB4VALID stub4valid, const TFSTUB4TRACKINDEX stub4trackindex, const TFSTUB4R stub4r, const TFSTUB4PHIRESID stub4phiresid, const TFSTUB4RRESID stub4rresid,
           const TFSTUB5VALID stub5valid, const TFSTUB5TRACKINDEX stub5trackindex, const TFSTUB5R stub5r, const TFSTUB5PHIRESID stub5phiresid, const TFSTUB5RRESID stub5rresid,
           const TFSTUB6VALID stub6valid, const TFSTUB6TRACKINDEX stub6trackindex, const TFSTUB6R stub6r, const TFSTUB6PHIRESID stub6phiresid, const TFSTUB6RRESID stub6rresid,
           const TFSTUB7VALID stub7valid, const TFSTUB7TRACKINDEX stub7trackindex, const TFSTUB7R stub7r, const TFSTUB7PHIRESID stub7phiresid, const TFSTUB7RRESID stub7rresid
      ) :
    data_( ((((((((((((((((((((((((((((((((((((((((((((((trackvalid,seedtype),rinv),phi0),z0),t),lmap),
                                                         stub0valid),stub0trackindex),stub0r),stub0phiresid),stub0zresid),
                                                         stub1valid),stub1trackindex),stub1r),stub1phiresid),stub1zresid),
                                                         stub2valid),stub2trackindex),stub2r),stub2phiresid),stub2zresid),
                                                         stub3valid),stub3trackindex),stub3r),stub3phiresid),stub3zresid),
                                                         stub4valid),stub4trackindex),stub4r),stub4phiresid),stub4rresid),
                                                         stub5valid),stub5trackindex),stub5r),stub5phiresid),stub5rresid),
                                                         stub6valid),stub6trackindex),stub6r),stub6phiresid),stub6rresid),
                                                         stub7valid),stub7trackindex),stub7r),stub7phiresid),stub7rresid) )
  {}

  TrackFit():
    data_(0)
  {}

  #ifndef __SYNTHESIS__
  TrackFit(const char* datastr, int base = 16)
  {
    TrackFitData newdata(datastr, base);
    data_ = newdata;
  }
  #endif

  // Getter
  static constexpr int getWidth() {return TrackFitBase::kTrackFitSize;}

  TrackFitData raw() const {return data_;}

  TFTRACKVALID getTrackValid() const {
    return data_.range(kTFTRACKVALIDMSB,kTFTRACKVALIDLSB);
  }

  TFSEEDTYPE getSeedType() const {
    return data_.range(kTFSEEDTYPEMSB,kTFSEEDTYPELSB);
  }

  TFRINV getRinv() const {
    return data_.range(kTFRINVMSB,kTFRINVLSB);
  }

  TFPHI0 getPhi0() const {
    return data_.range(kTFPHI0MSB,kTFPHI0LSB);
  }

  TFZ0 getZ0() const {
    return data_.range(kTFZ0MSB,kTFZ0LSB);
  }

  TFT getT() const {
    return data_.range(kTFTMSB,kTFTLSB);
  }

  TFLMAP getLmap() const {
    return data_.range(kTFLMAPMSB,kTFLMAPLSB);
  }

  TFSTUB0VALID getStub0Valid() const {
    return data_.range(kTFSTUB0VALIDMSB,kTFSTUB0VALIDLSB);
  }

  TFSTUB0TRACKINDEX getStub0TrackIndex() const {
    return data_.range(kTFSTUB0TRACKINDEXMSB,kTFSTUB0TRACKINDEXLSB);
  }

  TFSTUB0R getStub0R() const {
    return data_.range(kTFSTUB0RMSB,kTFSTUB0RLSB);
  }

  TFSTUB0PHIRESID getStub0PhiResid() const {
    return data_.range(kTFSTUB0PHIRESIDMSB,kTFSTUB0PHIRESIDLSB);
  }

  TFSTUB0ZRESID getStub0ZResid() const {
    return data_.range(kTFSTUB0ZRESIDMSB,kTFSTUB0ZRESIDLSB);
  }

  TFSTUB1VALID getStub1Valid() const {
    return data_.range(kTFSTUB1VALIDMSB,kTFSTUB1VALIDLSB);
  }

  TFSTUB1TRACKINDEX getStub1TrackIndex() const {
    return data_.range(kTFSTUB1TRACKINDEXMSB,kTFSTUB1TRACKINDEXLSB);
  }

  TFSTUB1R getStub1R() const {
    return data_.range(kTFSTUB1RMSB,kTFSTUB1RLSB);
  }

  TFSTUB1PHIRESID getStub1PhiResid() const {
    return data_.range(kTFSTUB1PHIRESIDMSB,kTFSTUB1PHIRESIDLSB);
  }

  TFSTUB1ZRESID getStub1ZResid() const {
    return data_.range(kTFSTUB1ZRESIDMSB,kTFSTUB1ZRESIDLSB);
  }

  TFSTUB2VALID getStub2Valid() const {
    return data_.range(kTFSTUB2VALIDMSB,kTFSTUB2VALIDLSB);
  }

  TFSTUB2TRACKINDEX getStub2TrackIndex() const {
    return data_.range(kTFSTUB2TRACKINDEXMSB,kTFSTUB2TRACKINDEXLSB);
  }

  TFSTUB2R getStub2R() const {
    return data_.range(kTFSTUB2RMSB,kTFSTUB2RLSB);
  }

  TFSTUB2PHIRESID getStub2PhiResid() const {
    return data_.range(kTFSTUB2PHIRESIDMSB,kTFSTUB2PHIRESIDLSB);
  }

  TFSTUB2ZRESID getStub2ZResid() const {
    return data_.range(kTFSTUB2ZRESIDMSB,kTFSTUB2ZRESIDLSB);
  }

  TFSTUB3VALID getStub3Valid() const {
    return data_.range(kTFSTUB3VALIDMSB,kTFSTUB3VALIDLSB);
  }

  TFSTUB3TRACKINDEX getStub3TrackIndex() const {
    return data_.range(kTFSTUB3TRACKINDEXMSB,kTFSTUB3TRACKINDEXLSB);
  }

  TFSTUB3R getStub3R() const {
    return data_.range(kTFSTUB3RMSB,kTFSTUB3RLSB);
  }

  TFSTUB3PHIRESID getStub3PhiResid() const {
    return data_.range(kTFSTUB3PHIRESIDMSB,kTFSTUB3PHIRESIDLSB);
  }

  TFSTUB3ZRESID getStub3ZResid() const {
    return data_.range(kTFSTUB3ZRESIDMSB,kTFSTUB3ZRESIDLSB);
  }

  TFSTUB4VALID getStub4Valid() const {
    return data_.range(kTFSTUB4VALIDMSB,kTFSTUB4VALIDLSB);
  }

  TFSTUB4TRACKINDEX getStub4TrackIndex() const {
    return data_.range(kTFSTUB4TRACKINDEXMSB,kTFSTUB4TRACKINDEXLSB);
  }

  TFSTUB4R getStub4R() const {
    return data_.range(kTFSTUB4RMSB,kTFSTUB4RLSB);
  }

  TFSTUB4PHIRESID getStub4PhiResid() const {
    return data_.range(kTFSTUB4PHIRESIDMSB,kTFSTUB4PHIRESIDLSB);
  }

  TFSTUB4RRESID getStub4RResid() const {
    return data_.range(kTFSTUB4RRESIDMSB,kTFSTUB4RRESIDLSB);
  }

  TFSTUB5VALID getStub5Valid() const {
    return data_.range(kTFSTUB5VALIDMSB,kTFSTUB5VALIDLSB);
  }

  TFSTUB5TRACKINDEX getStub5TrackIndex() const {
    return data_.range(kTFSTUB5TRACKINDEXMSB,kTFSTUB5TRACKINDEXLSB);
  }

  TFSTUB5R getStub5R() const {
    return data_.range(kTFSTUB5RMSB,kTFSTUB5RLSB);
  }

  TFSTUB5PHIRESID getStub5PhiResid() const {
    return data_.range(kTFSTUB5PHIRESIDMSB,kTFSTUB5PHIRESIDLSB);
  }

  TFSTUB5RRESID getStub5RResid() const {
    return data_.range(kTFSTUB5RRESIDMSB,kTFSTUB5RRESIDLSB);
  }

  TFSTUB6VALID getStub6Valid() const {
    return data_.range(kTFSTUB6VALIDMSB,kTFSTUB6VALIDLSB);
  }

  TFSTUB6TRACKINDEX getStub6TrackIndex() const {
    return data_.range(kTFSTUB6TRACKINDEXMSB,kTFSTUB6TRACKINDEXLSB);
  }

  TFSTUB6R getStub6R() const {
    return data_.range(kTFSTUB6RMSB,kTFSTUB6RLSB);
  }

  TFSTUB6PHIRESID getStub6PhiResid() const {
    return data_.range(kTFSTUB6PHIRESIDMSB,kTFSTUB6PHIRESIDLSB);
  }

  TFSTUB6RRESID getStub6RResid() const {
    return data_.range(kTFSTUB6RRESIDMSB,kTFSTUB6RRESIDLSB);
  }

  TFSTUB7VALID getStub7Valid() const {
    return data_.range(kTFSTUB7VALIDMSB,kTFSTUB7VALIDLSB);
  }

  TFSTUB7TRACKINDEX getStub7TrackIndex() const {
    return data_.range(kTFSTUB7TRACKINDEXMSB,kTFSTUB7TRACKINDEXLSB);
  }

  TFSTUB7R getStub7R() const {
    return data_.range(kTFSTUB7RMSB,kTFSTUB7RLSB);
  }

  TFSTUB7PHIRESID getStub7PhiResid() const {
    return data_.range(kTFSTUB7PHIRESIDMSB,kTFSTUB7PHIRESIDLSB);
  }

  TFSTUB7RRESID getStub7RResid() const {
    return data_.range(kTFSTUB7RRESIDMSB,kTFSTUB7RRESIDLSB);
  }

  // Setter
  void setTrackValid(const TFTRACKVALID trackvalid) {
    data_.range(kTFTRACKVALIDMSB,kTFTRACKVALIDLSB) = trackvalid;
  }

  void setSeedType(const TFSEEDTYPE seedtype) {
    data_.range(kTFSEEDTYPEMSB,kTFSEEDTYPELSB) = seedtype;
  }

  void setRinv(const TFRINV rinv) {
    data_.range(kTFRINVMSB,kTFRINVLSB) = rinv;
  }

  void setPhi0(const TFPHI0 phi0) {
    data_.range(kTFPHI0MSB,kTFPHI0LSB) = phi0;
  }

  void setZ0(const TFZ0 z0) {
    data_.range(kTFZ0MSB,kTFZ0LSB) = z0;
  }

  void setT(const TFT t) {
    data_.range(kTFTMSB,kTFTLSB) = t;
  }

  void setLmap(const TFLMAP lmap) {
    data_.range(kTFLMAPMSB,kTFLMAPLSB) = lmap;
  }

  void setStub0Valid(const TFSTUB0VALID stub0valid) {
    data_.range(kTFSTUB0VALIDMSB,kTFSTUB0VALIDLSB) = stub0valid;
  }

  void setStub0TrackIndex(const TFSTUB0TRACKINDEX stub0trackindex) {
    data_.range(kTFSTUB0TRACKINDEXMSB,kTFSTUB0TRACKINDEXLSB) = stub0trackindex;
  }

  void setStub0R(const TFSTUB0R stub0r) {
    data_.range(kTFSTUB0RMSB,kTFSTUB0RLSB) = stub0r;
  }

  void setStub0PhiResid(const TFSTUB0PHIRESID stub0phiresid) {
    data_.range(kTFSTUB0PHIRESIDMSB,kTFSTUB0PHIRESIDLSB) = stub0phiresid;
  }

  void setStub0ZResid(const TFSTUB0ZRESID stub0zresid) {
    data_.range(kTFSTUB0ZRESIDMSB,kTFSTUB0ZRESIDLSB) = stub0zresid;
  }

  void setStub1Valid(const TFSTUB1VALID stub1valid) {
    data_.range(kTFSTUB1VALIDMSB,kTFSTUB1VALIDLSB) = stub1valid;
  }

  void setStub1TrackIndex(const TFSTUB1TRACKINDEX stub1trackindex) {
    data_.range(kTFSTUB1TRACKINDEXMSB,kTFSTUB1TRACKINDEXLSB) = stub1trackindex;
  }

  void setStub1R(const TFSTUB1R stub1r) {
    data_.range(kTFSTUB1RMSB,kTFSTUB1RLSB) = stub1r;
  }

  void setStub1PhiResid(const TFSTUB1PHIRESID stub1phiresid) {
    data_.range(kTFSTUB1PHIRESIDMSB,kTFSTUB1PHIRESIDLSB) = stub1phiresid;
  }

  void setStub1ZResid(const TFSTUB1ZRESID stub1zresid) {
    data_.range(kTFSTUB1ZRESIDMSB,kTFSTUB1ZRESIDLSB) = stub1zresid;
  }

  void setStub2Valid(const TFSTUB2VALID stub2valid) {
    data_.range(kTFSTUB2VALIDMSB,kTFSTUB2VALIDLSB) = stub2valid;
  }

  void setStub2TrackIndex(const TFSTUB2TRACKINDEX stub2trackindex) {
    data_.range(kTFSTUB2TRACKINDEXMSB,kTFSTUB2TRACKINDEXLSB) = stub2trackindex;
  }

  void setStub2R(const TFSTUB2R stub2r) {
    data_.range(kTFSTUB2RMSB,kTFSTUB2RLSB) = stub2r;
  }

  void setStub2PhiResid(const TFSTUB2PHIRESID stub2phiresid) {
    data_.range(kTFSTUB2PHIRESIDMSB,kTFSTUB2PHIRESIDLSB) = stub2phiresid;
  }

  void setStub2ZResid(const TFSTUB2ZRESID stub2zresid) {
    data_.range(kTFSTUB2ZRESIDMSB,kTFSTUB2ZRESIDLSB) = stub2zresid;
  }

  void setStub3Valid(const TFSTUB3VALID stub3valid) {
    data_.range(kTFSTUB3VALIDMSB,kTFSTUB3VALIDLSB) = stub3valid;
  }

  void setStub3TrackIndex(const TFSTUB3TRACKINDEX stub3trackindex) {
    data_.range(kTFSTUB3TRACKINDEXMSB,kTFSTUB3TRACKINDEXLSB) = stub3trackindex;
  }

  void setStub3R(const TFSTUB3R stub3r) {
    data_.range(kTFSTUB3RMSB,kTFSTUB3RLSB) = stub3r;
  }

  void setStub3PhiResid(const TFSTUB3PHIRESID stub3phiresid) {
    data_.range(kTFSTUB3PHIRESIDMSB,kTFSTUB3PHIRESIDLSB) = stub3phiresid;
  }

  void setStub3ZResid(const TFSTUB3ZRESID stub3zresid) {
    data_.range(kTFSTUB3ZRESIDMSB,kTFSTUB3ZRESIDLSB) = stub3zresid;
  }

  void setStub4Valid(const TFSTUB4VALID stub4valid) {
    data_.range(kTFSTUB4VALIDMSB,kTFSTUB4VALIDLSB) = stub4valid;
  }

  void setStub4TrackIndex(const TFSTUB4TRACKINDEX stub4trackindex) {
    data_.range(kTFSTUB4TRACKINDEXMSB,kTFSTUB4TRACKINDEXLSB) = stub4trackindex;
  }

  void setStub4R(const TFSTUB4R stub4r) {
    data_.range(kTFSTUB4RMSB,kTFSTUB4RLSB) = stub4r;
  }

  void setStub4PhiResid(const TFSTUB4PHIRESID stub4phiresid) {
    data_.range(kTFSTUB4PHIRESIDMSB,kTFSTUB4PHIRESIDLSB) = stub4phiresid;
  }

  void setStub4RResid(const TFSTUB4RRESID stub4rresid) {
    data_.range(kTFSTUB4RRESIDMSB,kTFSTUB4RRESIDLSB) = stub4rresid;
  }

  void setStub5Valid(const TFSTUB5VALID stub5valid) {
    data_.range(kTFSTUB5VALIDMSB,kTFSTUB5VALIDLSB) = stub5valid;
  }

  void setStub5TrackIndex(const TFSTUB5TRACKINDEX stub5trackindex) {
    data_.range(kTFSTUB5TRACKINDEXMSB,kTFSTUB5TRACKINDEXLSB) = stub5trackindex;
  }

  void setStub5R(const TFSTUB5R stub5r) {
    data_.range(kTFSTUB5RMSB,kTFSTUB5RLSB) = stub5r;
  }

  void setStub5PhiResid(const TFSTUB5PHIRESID stub5phiresid) {
    data_.range(kTFSTUB5PHIRESIDMSB,kTFSTUB5PHIRESIDLSB) = stub5phiresid;
  }

  void setStub5RResid(const TFSTUB5RRESID stub5rresid) {
    data_.range(kTFSTUB5RRESIDMSB,kTFSTUB5RRESIDLSB) = stub5rresid;
  }

  void setStub6Valid(const TFSTUB6VALID stub6valid) {
    data_.range(kTFSTUB6VALIDMSB,kTFSTUB6VALIDLSB) = stub6valid;
  }

  void setStub6TrackIndex(const TFSTUB6TRACKINDEX stub6trackindex) {
    data_.range(kTFSTUB6TRACKINDEXMSB,kTFSTUB6TRACKINDEXLSB) = stub6trackindex;
  }

  void setStub6R(const TFSTUB6R stub6r) {
    data_.range(kTFSTUB6RMSB,kTFSTUB6RLSB) = stub6r;
  }

  void setStub6PhiResid(const TFSTUB6PHIRESID stub6phiresid) {
    data_.range(kTFSTUB6PHIRESIDMSB,kTFSTUB6PHIRESIDLSB) = stub6phiresid;
  }

  void setStub6RResid(const TFSTUB6RRESID stub6rresid) {
    data_.range(kTFSTUB6RRESIDMSB,kTFSTUB6RRESIDLSB) = stub6rresid;
  }

  void setStub7Valid(const TFSTUB7VALID stub7valid) {
    data_.range(kTFSTUB7VALIDMSB,kTFSTUB7VALIDLSB) = stub7valid;
  }

  void setStub7TrackIndex(const TFSTUB7TRACKINDEX stub7trackindex) {
    data_.range(kTFSTUB7TRACKINDEXMSB,kTFSTUB7TRACKINDEXLSB) = stub7trackindex;
  }

  void setStub7R(const TFSTUB7R stub7r) {
    data_.range(kTFSTUB7RMSB,kTFSTUB7RLSB) = stub7r;
  }

  void setStub7PhiResid(const TFSTUB7PHIRESID stub7phiresid) {
    data_.range(kTFSTUB7PHIRESIDMSB,kTFSTUB7PHIRESIDLSB) = stub7phiresid;
  }

  void setStub7RResid(const TFSTUB7RRESID stub7rresid) {
    data_.range(kTFSTUB7RRESIDMSB,kTFSTUB7RRESIDLSB) = stub7rresid;
  }

private:

  TrackFitData data_;

};

// Memory definition
using TrackFitMemory = MemoryTemplate<TrackFit, 1, kNBits_MemAddr>;

#endif
