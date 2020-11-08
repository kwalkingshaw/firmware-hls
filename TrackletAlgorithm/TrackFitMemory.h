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
    kTFSeedTypeSize = 3,
    kTFRinvSize = 14,
    kTFPhi0Size = 18,
    kTFZ0Size = 10,
    kTFTSize = 14,
    kTFLMapSize = 24,
    kTFStubCountSize = 3,
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
                  + kTFValidSize + kTFTrackIndexSize + kTFDiskStubRSize + kTFPhiResidSize + kTFRResidSize
  };
};

// Data object definition
class TrackFit : public TrackFitBase
{
public:
  enum BitLocations {
    // The location of the least significant bit (LSB) and most significant bit (MSB) in the TrackFitMemory word for different fields
    kTFStub7RResidLSB = 0,
    kTFStub7RResidMSB = kTFStub7RResidLSB + TrackFitBase::kTFRResidSize - 1,
    kTFStub7PhiResidLSB = kTFStub7RResidMSB + 1,
    kTFStub7PhiResidMSB = kTFStub7PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub7RLSB = kTFStub7PhiResidMSB + 1,
    kTFStub7RMSB = kTFStub7RLSB + TrackFitBase::kTFDiskStubRSize - 1,
    kTFStub7TrackIndexLSB = kTFStub7RMSB + 1,
    kTFStub7TrackIndexMSB = kTFStub7TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub7ValidLSB = kTFStub7TrackIndexMSB + 1,
    kTFStub7ValidMSB = kTFStub7ValidLSB + TrackFitBase::kTFValidSize - 1,

    kTFStub6RResidLSB = kTFStub7ValidMSB + 1,
    kTFStub6RResidMSB = kTFStub6RResidLSB + TrackFitBase::kTFRResidSize - 1,
    kTFStub6PhiResidLSB = kTFStub6RResidMSB + 1,
    kTFStub6PhiResidMSB = kTFStub6PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub6RLSB = kTFStub6PhiResidMSB + 1,
    kTFStub6RMSB = kTFStub6RLSB + TrackFitBase::kTFDiskStubRSize - 1,
    kTFStub6TrackIndexLSB = kTFStub6RMSB + 1,
    kTFStub6TrackIndexMSB = kTFStub6TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub6ValidLSB = kTFStub6TrackIndexMSB + 1,
    kTFStub6ValidMSB = kTFStub6ValidLSB + TrackFitBase::kTFValidSize - 1,

    kTFStub5RResidLSB = kTFStub6ValidMSB + 1,
    kTFStub5RResidMSB = kTFStub5RResidLSB + TrackFitBase::kTFRResidSize - 1,
    kTFStub5PhiResidLSB = kTFStub5RResidMSB + 1,
    kTFStub5PhiResidMSB = kTFStub5PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub5RLSB = kTFStub5PhiResidMSB + 1,
    kTFStub5RMSB = kTFStub5RLSB + TrackFitBase::kTFDiskStubRSize - 1,
    kTFStub5TrackIndexLSB = kTFStub5RMSB + 1,
    kTFStub5TrackIndexMSB = kTFStub5TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub5ValidLSB = kTFStub5TrackIndexMSB + 1,
    kTFStub5ValidMSB = kTFStub5ValidLSB + TrackFitBase::kTFValidSize - 1,

    kTFStub4RResidLSB = kTFStub5ValidMSB + 1,
    kTFStub4RResidMSB = kTFStub4RResidLSB + TrackFitBase::kTFRResidSize - 1,
    kTFStub4PhiResidLSB = kTFStub4RResidMSB + 1,
    kTFStub4PhiResidMSB = kTFStub4PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub4RLSB = kTFStub4PhiResidMSB + 1,
    kTFStub4RMSB = kTFStub4RLSB + TrackFitBase::kTFDiskStubRSize - 1,
    kTFStub4TrackIndexLSB = kTFStub4RMSB + 1,
    kTFStub4TrackIndexMSB = kTFStub4TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub4ValidLSB = kTFStub4TrackIndexMSB + 1,
    kTFStub4ValidMSB = kTFStub4ValidLSB + TrackFitBase::kTFValidSize - 1,

    kTFStub3ZResidLSB = kTFStub4ValidMSB + 1,
    kTFStub3ZResidMSB = kTFStub3ZResidLSB + TrackFitBase::kTFZResidSize - 1,
    kTFStub3PhiResidLSB = kTFStub3ZResidMSB + 1,
    kTFStub3PhiResidMSB = kTFStub3PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub3RLSB = kTFStub3PhiResidMSB + 1,
    kTFStub3RMSB = kTFStub3RLSB + TrackFitBase::kTFBarrelStubRSize - 1,
    kTFStub3TrackIndexLSB = kTFStub3RMSB + 1,
    kTFStub3TrackIndexMSB = kTFStub3TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub3ValidLSB = kTFStub3TrackIndexMSB + 1,
    kTFStub3ValidMSB = kTFStub3ValidLSB + TrackFitBase::kTFValidSize - 1,

    kTFStub2ZResidLSB = kTFStub3ValidMSB + 1,
    kTFStub2ZResidMSB = kTFStub2ZResidLSB + TrackFitBase::kTFZResidSize - 1,
    kTFStub2PhiResidLSB = kTFStub2ZResidMSB + 1,
    kTFStub2PhiResidMSB = kTFStub2PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub2RLSB = kTFStub2PhiResidMSB + 1,
    kTFStub2RMSB = kTFStub2RLSB + TrackFitBase::kTFBarrelStubRSize - 1,
    kTFStub2TrackIndexLSB = kTFStub2RMSB + 1,
    kTFStub2TrackIndexMSB = kTFStub2TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub2ValidLSB = kTFStub2TrackIndexMSB + 1,
    kTFStub2ValidMSB = kTFStub2ValidLSB + TrackFitBase::kTFValidSize - 1,

    kTFStub1ZResidLSB = kTFStub2ValidMSB + 1,
    kTFStub1ZResidMSB = kTFStub1ZResidLSB + TrackFitBase::kTFZResidSize - 1,
    kTFStub1PhiResidLSB = kTFStub1ZResidMSB + 1,
    kTFStub1PhiResidMSB = kTFStub1PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub1RLSB = kTFStub1PhiResidMSB + 1,
    kTFStub1RMSB = kTFStub1RLSB + TrackFitBase::kTFBarrelStubRSize - 1,
    kTFStub1TrackIndexLSB = kTFStub1RMSB + 1,
    kTFStub1TrackIndexMSB = kTFStub1TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub1ValidLSB = kTFStub1TrackIndexMSB + 1,
    kTFStub1ValidMSB = kTFStub1ValidLSB + TrackFitBase::kTFValidSize - 1,

    kTFStub0ZResidLSB = kTFStub1ValidMSB + 1,
    kTFStub0ZResidMSB = kTFStub0ZResidLSB + TrackFitBase::kTFZResidSize - 1,
    kTFStub0PhiResidLSB = kTFStub0ZResidMSB + 1,
    kTFStub0PhiResidMSB = kTFStub0PhiResidLSB + TrackFitBase::kTFPhiResidSize - 1,
    kTFStub0RLSB = kTFStub0PhiResidMSB + 1,
    kTFStub0RMSB = kTFStub0RLSB + TrackFitBase::kTFBarrelStubRSize - 1,
    kTFStub0TrackIndexLSB = kTFStub0RMSB + 1,
    kTFStub0TrackIndexMSB = kTFStub0TrackIndexLSB + TrackFitBase::kTFTrackIndexSize - 1,
    kTFStub0ValidLSB = kTFStub0TrackIndexMSB + 1,
    kTFStub0ValidMSB = kTFStub0ValidLSB + TrackFitBase::kTFValidSize - 1,

    kTFLMapLSB = kTFStub0ValidMSB + 1,
    kTFLMapMSB = kTFLMapLSB + TrackFitBase::kTFLMapSize - 1,
    kTFDisk4CountLSB = kTFStub0ValidMSB + 1,
    kTFDisk4CountMSB = kTFDisk4CountLSB + TrackFitBase::kTFStubCountSize - 1,
    kTFDisk3CountLSB = kTFDisk4CountMSB + 1,
    kTFDisk3CountMSB = kTFDisk3CountLSB + TrackFitBase::kTFStubCountSize - 1,
    kTFDisk2CountLSB = kTFDisk3CountMSB + 1,
    kTFDisk2CountMSB = kTFDisk2CountLSB + TrackFitBase::kTFStubCountSize - 1,
    kTFDisk1CountLSB = kTFDisk2CountMSB + 1,
    kTFDisk1CountMSB = kTFDisk1CountLSB + TrackFitBase::kTFStubCountSize - 1,
    kTFLayer6CountLSB = kTFDisk1CountMSB + 1,
    kTFLayer6CountMSB = kTFLayer6CountLSB + TrackFitBase::kTFStubCountSize - 1,
    kTFLayer5CountLSB = kTFLayer6CountMSB + 1,
    kTFLayer5CountMSB = kTFLayer5CountLSB + TrackFitBase::kTFStubCountSize - 1,
    kTFLayer4CountLSB = kTFLayer5CountMSB + 1,
    kTFLayer4CountMSB = kTFLayer4CountLSB + TrackFitBase::kTFStubCountSize - 1,
    kTFLayer3CountLSB = kTFLayer4CountMSB + 1,
    kTFLayer3CountMSB = kTFLayer3CountLSB + TrackFitBase::kTFStubCountSize - 1,
    kTFTLSB = kTFLMapMSB + 1,
    kTFTMSB = kTFTLSB + TrackFitBase::kTFTSize - 1,
    kTFZ0LSB = kTFTMSB + 1,
    kTFZ0MSB = kTFZ0LSB + TrackFitBase::kTFZ0Size - 1,
    kTFPhi0LSB = kTFZ0MSB + 1,
    kTFPhi0MSB = kTFPhi0LSB + TrackFitBase::kTFPhi0Size - 1,
    kTFRinvLSB = kTFPhi0MSB + 1,
    kTFRinvMSB = kTFRinvLSB + TrackFitBase::kTFRinvSize - 1,
    kTFSeedTypeLSB = kTFRinvMSB + 1,
    kTFSeedTypeMSB = kTFSeedTypeLSB + TrackFitBase::kTFSeedTypeSize - 1,
    kTFTrackValidLSB = kTFSeedTypeMSB + 1,
    kTFTrackValidMSB = kTFTrackValidLSB + TrackFitBase::kTFValidSize - 1
  };

  typedef ap_uint<TrackFitBase::kTFValidSize> TFVALID;
  typedef ap_uint<TrackFitBase::kTFSeedTypeSize> TFSEEDTYPE;
  typedef ap_int<TrackFitBase::kTFRinvSize> TFRINV;
  typedef ap_uint<TrackFitBase::kTFPhi0Size> TFPHI0;
  typedef ap_int<TrackFitBase::kTFZ0Size> TFZ0;
  typedef ap_int<TrackFitBase::kTFTSize> TFT;
  typedef ap_uint<TrackFitBase::kTFLMapSize> TFLMAP;
  typedef ap_uint<TrackFitBase::kTFStubCountSize> TFSTUBCOUNT;
  typedef ap_uint<TrackFitBase::kTFTrackIndexSize> TFTRACKINDEX;

  typedef ap_uint<TrackFitBase::kTFBarrelStubRSize> TFSTUB0R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB0PHIRESID;
  typedef ap_int<TrackFitBase::kTFZResidSize> TFSTUB0ZRESID;

  typedef ap_uint<TrackFitBase::kTFBarrelStubRSize> TFSTUB1R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB1PHIRESID;
  typedef ap_int<TrackFitBase::kTFZResidSize> TFSTUB1ZRESID;

  typedef ap_uint<TrackFitBase::kTFBarrelStubRSize> TFSTUB2R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB2PHIRESID;
  typedef ap_int<TrackFitBase::kTFZResidSize> TFSTUB2ZRESID;

  typedef ap_uint<TrackFitBase::kTFBarrelStubRSize> TFSTUB3R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB3PHIRESID;
  typedef ap_int<TrackFitBase::kTFZResidSize> TFSTUB3ZRESID;

  typedef ap_uint<TrackFitBase::kTFDiskStubRSize> TFSTUB4R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB4PHIRESID;
  typedef ap_int<TrackFitBase::kTFRResidSize> TFSTUB4RRESID;

  typedef ap_uint<TrackFitBase::kTFDiskStubRSize> TFSTUB5R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB5PHIRESID;
  typedef ap_int<TrackFitBase::kTFRResidSize> TFSTUB5RRESID;

  typedef ap_uint<TrackFitBase::kTFDiskStubRSize> TFSTUB6R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB6PHIRESID;
  typedef ap_int<TrackFitBase::kTFRResidSize> TFSTUB6RRESID;

  typedef ap_uint<TrackFitBase::kTFDiskStubRSize> TFSTUB7R;
  typedef ap_int<TrackFitBase::kTFPhiResidSize> TFSTUB7PHIRESID;
  typedef ap_int<TrackFitBase::kTFRResidSize> TFSTUB7RRESID;

  typedef ap_uint<TrackFitBase::kTrackFitSize> TrackFitData;

  // Constructors
  TrackFit(const TrackFitData& newdata):
    data_(newdata)
  {}

  TrackFit(const TFSEEDTYPE seedtype, const TFRINV rinv, const TFPHI0 phi0, const TFZ0 z0, const TFT t) :
    data_( ((((((((((((((((((((((((((((((((((((((((((((((1,seedtype),rinv),phi0),z0),t),TFLMAP(0)),
             TFVALID(0)),TFTRACKINDEX(0)),TFSTUB0R(0)),TFSTUB0PHIRESID(0)),TFSTUB0ZRESID(0)),
             TFVALID(0)),TFTRACKINDEX(0)),TFSTUB1R(0)),TFSTUB1PHIRESID(0)),TFSTUB1ZRESID(0)),
             TFVALID(0)),TFTRACKINDEX(0)),TFSTUB2R(0)),TFSTUB2PHIRESID(0)),TFSTUB2ZRESID(0)),
             TFVALID(0)),TFTRACKINDEX(0)),TFSTUB3R(0)),TFSTUB3PHIRESID(0)),TFSTUB3ZRESID(0)),
             TFVALID(0)),TFTRACKINDEX(0)),TFSTUB4R(0)),TFSTUB4PHIRESID(0)),TFSTUB4RRESID(0)),
             TFVALID(0)),TFTRACKINDEX(0)),TFSTUB5R(0)),TFSTUB5PHIRESID(0)),TFSTUB5RRESID(0)),
             TFVALID(0)),TFTRACKINDEX(0)),TFSTUB6R(0)),TFSTUB6PHIRESID(0)),TFSTUB6RRESID(0)),
             TFVALID(0)),TFTRACKINDEX(0)),TFSTUB7R(0)),TFSTUB7PHIRESID(0)),TFSTUB7RRESID(0)) )

  {}

  TrackFit() :
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

  TFVALID getTrackValid() const {
    return data_.range(kTFTrackValidMSB,kTFTrackValidLSB);
  }

  TFSEEDTYPE getSeedType() const {
    return data_.range(kTFSeedTypeMSB,kTFSeedTypeLSB);
  }

  TFRINV getRinv() const {
    return data_.range(kTFRinvMSB,kTFRinvLSB);
  }

  TFPHI0 getPhi0() const {
    return data_.range(kTFPhi0MSB,kTFPhi0LSB);
  }

  TFZ0 getZ0() const {
    return data_.range(kTFZ0MSB,kTFZ0LSB);
  }

  TFT getT() const {
    return data_.range(kTFTMSB,kTFTLSB);
  }

  TFLMAP getLMap() const {
    return data_.range(kTFLMapMSB,kTFLMapLSB);
  }

  TFSTUBCOUNT getLayer3Count() const {
    return data_.range(kTFLayer3CountMSB,kTFLayer3CountLSB);
  }

  TFSTUBCOUNT getLayer4Count() const {
    return data_.range(kTFLayer4CountMSB,kTFLayer4CountLSB);
  }

  TFSTUBCOUNT getLayer5Count() const {
    return data_.range(kTFLayer5CountMSB,kTFLayer5CountLSB);
  }

  TFSTUBCOUNT getLayer6Count() const {
    return data_.range(kTFLayer6CountMSB,kTFLayer6CountLSB);
  }

  TFSTUBCOUNT getDisk1Count() const {
    return data_.range(kTFDisk1CountMSB,kTFDisk1CountLSB);
  }

  TFSTUBCOUNT getDisk2Count() const {
    return data_.range(kTFDisk2CountMSB,kTFDisk2CountLSB);
  }

  TFSTUBCOUNT getDisk3Count() const {
    return data_.range(kTFDisk3CountMSB,kTFDisk3CountLSB);
  }

  TFSTUBCOUNT getDisk4Count() const {
    return data_.range(kTFDisk4CountMSB,kTFDisk4CountLSB);
  }

  TFVALID getStub0Valid() const {
    return data_.range(kTFStub0ValidMSB,kTFStub0ValidLSB);
  }

  TFTRACKINDEX getStub0TrackIndex() const {
    return data_.range(kTFStub0TrackIndexMSB,kTFStub0TrackIndexLSB);
  }

  TFSTUB0R getStub0R() const {
    return data_.range(kTFStub0RMSB,kTFStub0RLSB);
  }

  TFSTUB0PHIRESID getStub0PhiResid() const {
    return data_.range(kTFStub0PhiResidMSB,kTFStub0PhiResidLSB);
  }

  TFSTUB0ZRESID getStub0ZResid() const {
    return data_.range(kTFStub0ZResidMSB,kTFStub0ZResidLSB);
  }

  TFVALID getStub1Valid() const {
    return data_.range(kTFStub1ValidMSB,kTFStub1ValidLSB);
  }

  TFTRACKINDEX getStub1TrackIndex() const {
    return data_.range(kTFStub1TrackIndexMSB,kTFStub1TrackIndexLSB);
  }

  TFSTUB1R getStub1R() const {
    return data_.range(kTFStub1RMSB,kTFStub1RLSB);
  }

  TFSTUB1PHIRESID getStub1PhiResid() const {
    return data_.range(kTFStub1PhiResidMSB,kTFStub1PhiResidLSB);
  }

  TFSTUB1ZRESID getStub1ZResid() const {
    return data_.range(kTFStub1ZResidMSB,kTFStub1ZResidLSB);
  }

  TFVALID getStub2Valid() const {
    return data_.range(kTFStub2ValidMSB,kTFStub2ValidLSB);
  }

  TFTRACKINDEX getStub2TrackIndex() const {
    return data_.range(kTFStub2TrackIndexMSB,kTFStub2TrackIndexLSB);
  }

  TFSTUB2R getStub2R() const {
    return data_.range(kTFStub2RMSB,kTFStub2RLSB);
  }

  TFSTUB2PHIRESID getStub2PhiResid() const {
    return data_.range(kTFStub2PhiResidMSB,kTFStub2PhiResidLSB);
  }

  TFSTUB2ZRESID getStub2ZResid() const {
    return data_.range(kTFStub2ZResidMSB,kTFStub2ZResidLSB);
  }

  TFVALID getStub3Valid() const {
    return data_.range(kTFStub3ValidMSB,kTFStub3ValidLSB);
  }

  TFTRACKINDEX getStub3TrackIndex() const {
    return data_.range(kTFStub3TrackIndexMSB,kTFStub3TrackIndexLSB);
  }

  TFSTUB3R getStub3R() const {
    return data_.range(kTFStub3RMSB,kTFStub3RLSB);
  }

  TFSTUB3PHIRESID getStub3PhiResid() const {
    return data_.range(kTFStub3PhiResidMSB,kTFStub3PhiResidLSB);
  }

  TFSTUB3ZRESID getStub3ZResid() const {
    return data_.range(kTFStub3ZResidMSB,kTFStub3ZResidLSB);
  }

  TFVALID getStub4Valid() const {
    return data_.range(kTFStub4ValidMSB,kTFStub4ValidLSB);
  }

  TFTRACKINDEX getStub4TrackIndex() const {
    return data_.range(kTFStub4TrackIndexMSB,kTFStub4TrackIndexLSB);
  }

  TFSTUB4R getStub4R() const {
    return data_.range(kTFStub4RMSB,kTFStub4RLSB);
  }

  TFSTUB4PHIRESID getStub4PhiResid() const {
    return data_.range(kTFStub4PhiResidMSB,kTFStub4PhiResidLSB);
  }

  TFSTUB4RRESID getStub4RResid() const {
    return data_.range(kTFStub4RResidMSB,kTFStub4RResidLSB);
  }

  TFVALID getStub5Valid() const {
    return data_.range(kTFStub5ValidMSB,kTFStub5ValidLSB);
  }

  TFTRACKINDEX getStub5TrackIndex() const {
    return data_.range(kTFStub5TrackIndexMSB,kTFStub5TrackIndexLSB);
  }

  TFSTUB5R getStub5R() const {
    return data_.range(kTFStub5RMSB,kTFStub5RLSB);
  }

  TFSTUB5PHIRESID getStub5PhiResid() const {
    return data_.range(kTFStub5PhiResidMSB,kTFStub5PhiResidLSB);
  }

  TFSTUB5RRESID getStub5RResid() const {
    return data_.range(kTFStub5RResidMSB,kTFStub5RResidLSB);
  }

  TFVALID getStub6Valid() const {
    return data_.range(kTFStub6ValidMSB,kTFStub6ValidLSB);
  }

  TFTRACKINDEX getStub6TrackIndex() const {
    return data_.range(kTFStub6TrackIndexMSB,kTFStub6TrackIndexLSB);
  }

  TFSTUB6R getStub6R() const {
    return data_.range(kTFStub6RMSB,kTFStub6RLSB);
  }

  TFSTUB6PHIRESID getStub6PhiResid() const {
    return data_.range(kTFStub6PhiResidMSB,kTFStub6PhiResidLSB);
  }

  TFSTUB6RRESID getStub6RResid() const {
    return data_.range(kTFStub6RResidMSB,kTFStub6RResidLSB);
  }

  TFVALID getStub7Valid() const {
    return data_.range(kTFStub7ValidMSB,kTFStub7ValidLSB);
  }

  TFTRACKINDEX getStub7TrackIndex() const {
    return data_.range(kTFStub7TrackIndexMSB,kTFStub7TrackIndexLSB);
  }

  TFSTUB7R getStub7R() const {
    return data_.range(kTFStub7RMSB,kTFStub7RLSB);
  }

  TFSTUB7PHIRESID getStub7PhiResid() const {
    return data_.range(kTFStub7PhiResidMSB,kTFStub7PhiResidLSB);
  }

  TFSTUB7RRESID getStub7RResid() const {
    return data_.range(kTFStub7RResidMSB,kTFStub7RResidLSB);
  }

  const short getNMatches() const {
    short n = 0;

    n += getLayer3Count();
    n += getLayer4Count();
    n += getLayer5Count();
    n += getLayer6Count();
    n += getDisk1Count();
    n += getDisk2Count();
    n += getDisk3Count();
    n += getDisk4Count();

    return n;
  }

  // Setter
  void setTrackValid() {
    data_.range(kTFTrackValidMSB,kTFTrackValidLSB) = 1;
  }

  void setSeedType(const TFSEEDTYPE seedtype) {
    data_.range(kTFSeedTypeMSB,kTFSeedTypeLSB) = seedtype;
  }

  void setRinv(const TFRINV rinv) {
    data_.range(kTFRinvMSB,kTFRinvLSB) = rinv;
  }

  void setPhi0(const TFPHI0 phi0) {
    data_.range(kTFPhi0MSB,kTFPhi0LSB) = phi0;
  }

  void setZ0(const TFZ0 z0) {
    data_.range(kTFZ0MSB,kTFZ0LSB) = z0;
  }

  void setT(const TFT t) {
    data_.range(kTFTMSB,kTFTLSB) = t;
  }

  void setLMap(const TFLMAP lmap) {
    data_.range(kTFLMapMSB,kTFLMapLSB) = lmap;
  }

  void setLayer3Count(const TFSTUBCOUNT stubcount) {
    data_.range(kTFLayer3CountMSB,kTFLayer3CountLSB) = stubcount;
  }

  void setLayer4Count(const TFSTUBCOUNT stubcount) {
    data_.range(kTFLayer4CountMSB,kTFLayer4CountLSB) = stubcount;
  }

  void setLayer5Count(const TFSTUBCOUNT stubcount) {
    data_.range(kTFLayer5CountMSB,kTFLayer5CountLSB) = stubcount;
  }

  void setLayer6Count(const TFSTUBCOUNT stubcount) {
    data_.range(kTFLayer6CountMSB,kTFLayer6CountLSB) = stubcount;
  }

  void setDisk1Count(const TFSTUBCOUNT stubcount) {
    data_.range(kTFDisk1CountMSB,kTFDisk1CountLSB) = stubcount;
  }

  void setDisk2Count(const TFSTUBCOUNT stubcount) {
    data_.range(kTFDisk2CountMSB,kTFDisk2CountLSB) = stubcount;
  }

  void setDisk3Count(const TFSTUBCOUNT stubcount) {
    data_.range(kTFDisk3CountMSB,kTFDisk3CountLSB) = stubcount;
  }

  void setDisk4Count(const TFSTUBCOUNT stubcount) {
    data_.range(kTFDisk4CountMSB,kTFDisk4CountLSB) = stubcount;
  }

  void setStub0Valid(const TFVALID valid) {
    data_.range(kTFStub0ValidMSB,kTFStub0ValidLSB) = valid;
  }

  void setStub0TrackIndex(const TFTRACKINDEX stub0trackindex) {
    data_.range(kTFStub0TrackIndexMSB,kTFStub0TrackIndexLSB) = stub0trackindex;
  }

  void setStub0R(const TFSTUB0R stub0r) {
    data_.range(kTFStub0RMSB,kTFStub0RLSB) = stub0r;
  }

  void setStub0PhiResid(const TFSTUB0PHIRESID stub0phiresid) {
    data_.range(kTFStub0PhiResidMSB,kTFStub0PhiResidLSB) = stub0phiresid;
  }

  void setStub0ZResid(const TFSTUB0ZRESID stub0zresid) {
    data_.range(kTFStub0ZResidMSB,kTFStub0ZResidLSB) = stub0zresid;
  }

  void setStub1Valid(const TFVALID valid) {
    data_.range(kTFStub1ValidMSB,kTFStub1ValidLSB) = valid;
  }

  void setStub1TrackIndex(const TFTRACKINDEX stub1trackindex) {
    data_.range(kTFStub1TrackIndexMSB,kTFStub1TrackIndexLSB) = stub1trackindex;
  }

  void setStub1R(const TFSTUB1R stub1r) {
    data_.range(kTFStub1RMSB,kTFStub1RLSB) = stub1r;
  }

  void setStub1PhiResid(const TFSTUB1PHIRESID stub1phiresid) {
    data_.range(kTFStub1PhiResidMSB,kTFStub1PhiResidLSB) = stub1phiresid;
  }

  void setStub1ZResid(const TFSTUB1ZRESID stub1zresid) {
    data_.range(kTFStub1ZResidMSB,kTFStub1ZResidLSB) = stub1zresid;
  }

  void setStub2Valid(const TFVALID valid) {
    data_.range(kTFStub2ValidMSB,kTFStub2ValidLSB) = valid;
  }

  void setStub2TrackIndex(const TFTRACKINDEX stub2trackindex) {
    data_.range(kTFStub2TrackIndexMSB,kTFStub2TrackIndexLSB) = stub2trackindex;
  }

  void setStub2R(const TFSTUB2R stub2r) {
    data_.range(kTFStub2RMSB,kTFStub2RLSB) = stub2r;
  }

  void setStub2PhiResid(const TFSTUB2PHIRESID stub2phiresid) {
    data_.range(kTFStub2PhiResidMSB,kTFStub2PhiResidLSB) = stub2phiresid;
  }

  void setStub2ZResid(const TFSTUB2ZRESID stub2zresid) {
    data_.range(kTFStub2ZResidMSB,kTFStub2ZResidLSB) = stub2zresid;
  }

  void setStub3Valid(const TFVALID valid) {
    data_.range(kTFStub3ValidMSB,kTFStub3ValidLSB) = valid;
  }

  void setStub3TrackIndex(const TFTRACKINDEX stub3trackindex) {
    data_.range(kTFStub3TrackIndexMSB,kTFStub3TrackIndexLSB) = stub3trackindex;
  }

  void setStub3R(const TFSTUB3R stub3r) {
    data_.range(kTFStub3RMSB,kTFStub3RLSB) = stub3r;
  }

  void setStub3PhiResid(const TFSTUB3PHIRESID stub3phiresid) {
    data_.range(kTFStub3PhiResidMSB,kTFStub3PhiResidLSB) = stub3phiresid;
  }

  void setStub3ZResid(const TFSTUB3ZRESID stub3zresid) {
    data_.range(kTFStub3ZResidMSB,kTFStub3ZResidLSB) = stub3zresid;
  }

  void setStub4Valid(const TFVALID valid) {
    data_.range(kTFStub4ValidMSB,kTFStub4ValidLSB) = valid;
  }

  void setStub4TrackIndex(const TFTRACKINDEX stub4trackindex) {
    data_.range(kTFStub4TrackIndexMSB,kTFStub4TrackIndexLSB) = stub4trackindex;
  }

  void setStub4R(const TFSTUB4R stub4r) {
    data_.range(kTFStub4RMSB,kTFStub4RLSB) = stub4r;
  }

  void setStub4PhiResid(const TFSTUB4PHIRESID stub4phiresid) {
    data_.range(kTFStub4PhiResidMSB,kTFStub4PhiResidLSB) = stub4phiresid;
  }

  void setStub4RResid(const TFSTUB4RRESID stub4rresid) {
    data_.range(kTFStub4RResidMSB,kTFStub4RResidLSB) = stub4rresid;
  }

  void setStub5Valid(const TFVALID valid) {
    data_.range(kTFStub5ValidMSB,kTFStub5ValidLSB) = valid;
  }

  void setStub5TrackIndex(const TFTRACKINDEX stub5trackindex) {
    data_.range(kTFStub5TrackIndexMSB,kTFStub5TrackIndexLSB) = stub5trackindex;
  }

  void setStub5R(const TFSTUB5R stub5r) {
    data_.range(kTFStub5RMSB,kTFStub5RLSB) = stub5r;
  }

  void setStub5PhiResid(const TFSTUB5PHIRESID stub5phiresid) {
    data_.range(kTFStub5PhiResidMSB,kTFStub5PhiResidLSB) = stub5phiresid;
  }

  void setStub5RResid(const TFSTUB5RRESID stub5rresid) {
    data_.range(kTFStub5RResidMSB,kTFStub5RResidLSB) = stub5rresid;
  }

  void setStub6Valid(const TFVALID valid) {
    data_.range(kTFStub6ValidMSB,kTFStub6ValidLSB) = valid;
  }

  void setStub6TrackIndex(const TFTRACKINDEX stub6trackindex) {
    data_.range(kTFStub6TrackIndexMSB,kTFStub6TrackIndexLSB) = stub6trackindex;
  }

  void setStub6R(const TFSTUB6R stub6r) {
    data_.range(kTFStub6RMSB,kTFStub6RLSB) = stub6r;
  }

  void setStub6PhiResid(const TFSTUB6PHIRESID stub6phiresid) {
    data_.range(kTFStub6PhiResidMSB,kTFStub6PhiResidLSB) = stub6phiresid;
  }

  void setStub6RResid(const TFSTUB6RRESID stub6rresid) {
    data_.range(kTFStub6RResidMSB,kTFStub6RResidLSB) = stub6rresid;
  }

  void setStub7Valid(const TFVALID valid) {
    data_.range(kTFStub7ValidMSB,kTFStub7ValidLSB) = valid;
  }

  void setStub7TrackIndex(const TFTRACKINDEX stub7trackindex) {
    data_.range(kTFStub7TrackIndexMSB,kTFStub7TrackIndexLSB) = stub7trackindex;
  }

  void setStub7R(const TFSTUB7R stub7r) {
    data_.range(kTFStub7RMSB,kTFStub7RLSB) = stub7r;
  }

  void setStub7PhiResid(const TFSTUB7PHIRESID stub7phiresid) {
    data_.range(kTFStub7PhiResidMSB,kTFStub7PhiResidLSB) = stub7phiresid;
  }

  void setStub7RResid(const TFSTUB7RRESID stub7rresid) {
    data_.range(kTFStub7RResidMSB,kTFStub7RResidLSB) = stub7rresid;
  }

  void setStub0(const TFVALID valid, const TFSTUB0R r, const TFSTUB0PHIRESID phiresid, const TFSTUB0ZRESID zresid) {
    setStub0Valid(valid);
    if (valid) {
      setStub0R(r);
      setStub0PhiResid(phiresid);
      setStub0ZResid(zresid);
      setLayer3Count(1);
    }
  }

  void setStub1(const TFVALID valid, const TFSTUB1R r, const TFSTUB1PHIRESID phiresid, const TFSTUB1ZRESID zresid) {
    setStub1Valid(valid);
    if (valid) {
      setStub1R(r);
      setStub1PhiResid(phiresid);
      setStub1ZResid(zresid);
      setLayer4Count(1);
    }
  }

  void setStub2(const TFVALID valid, const TFSTUB2R r, const TFSTUB2PHIRESID phiresid, const TFSTUB2ZRESID zresid) {
    setStub2Valid(valid);
    if (valid) {
      setStub2R(r);
      setStub2PhiResid(phiresid);
      setStub2ZResid(zresid);
      setLayer5Count(1);
    }
  }

  void setStub3(const TFVALID valid, const TFSTUB3R r, const TFSTUB3PHIRESID phiresid, const TFSTUB3ZRESID zresid) {
    setStub3Valid(valid);
    if (valid) {
      setStub3R(r);
      setStub3PhiResid(phiresid);
      setStub3ZResid(zresid);
      setLayer6Count(1);
    }
  }

  void setStub4(const TFVALID valid, const TFSTUB4R r, const TFSTUB4PHIRESID phiresid, const TFSTUB4RRESID rresid) {
    setStub4Valid(valid);
    if (valid) {
      setStub4R(r);
      setStub4PhiResid(phiresid);
      setStub4RResid(rresid);
      setDisk1Count(1);
    }
  }

  void setStub5(const TFVALID valid, const TFSTUB5R r, const TFSTUB5PHIRESID phiresid, const TFSTUB5RRESID rresid) {
    setStub5Valid(valid);
    if (valid) {
      setStub5R(r);
      setStub5PhiResid(phiresid);
      setStub5RResid(rresid);
      setDisk2Count(1);
    }
  }

  void setStub6(const TFVALID valid, const TFSTUB6R r, const TFSTUB6PHIRESID phiresid, const TFSTUB6RRESID rresid) {
    setStub6Valid(valid);
    if (valid) {
      setStub6R(r);
      setStub6PhiResid(phiresid);
      setStub6RResid(rresid);
      setDisk3Count(1);
    }
  }

  void setStub7(const TFVALID valid, const TFSTUB7R r, const TFSTUB7PHIRESID phiresid, const TFSTUB7RRESID rresid) {
    setStub7Valid(valid);
    if (valid) {
      setStub7R(r);
      setStub7PhiResid(phiresid);
      setStub7RResid(rresid);
      setDisk4Count(1);
    }
  }

  void setTrackIndex(const TFTRACKINDEX trackIndex) {
    setStub0TrackIndex(trackIndex);
    setStub1TrackIndex(trackIndex);
    setStub2TrackIndex(trackIndex);
    setStub3TrackIndex(trackIndex);
    setStub4TrackIndex(trackIndex);
    setStub5TrackIndex(trackIndex);
    setStub6TrackIndex(trackIndex);
    setStub7TrackIndex(trackIndex);
  }

private:

  TrackFitData data_;

};

// Memory definition
using TrackFitMemory = MemoryTemplate<TrackFit, 1, kNBits_MemAddr>;

#endif
