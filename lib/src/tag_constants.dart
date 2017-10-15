// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:fast_tag/src/internal/tag_base.dart';

class Tagx extends TagBase {
  @override
  final int fields;

  const Tagx(this.fields);

  static const Tagx kSpectroscopyAcquisitionPhaseRows =
      const Tagx(0x001c0101001c036a);
  static const Tagx kParallelReductionFactorInPlaneRetired =
      const Tagx(0x005c01010009036b);
  static const Tagx kTransmitterFrequency = const Tagx(0x001c01020009036c);
  static const Tagx kResonantNucleus = const Tagx(0x001c01020005036d);
  static const Tagx kFrequencyCorrection = const Tagx(0x001c01010005036e);
  static const Tagx kMRSpectroscopyFOVGeometrySequence =
      const Tagx(0x001c01010016036f);
  static const Tagx kSlabThickness = const Tagx(0x001c010100090370);
  static const Tagx kSlabOrientation = const Tagx(0x001c010300090371);
  static const Tagx kMidSlabPosition = const Tagx(0x001c010300090372);
  static const Tagx kMRSpatialSaturationSequence =
      const Tagx(0x001c010100160373);
  static const Tagx kMRTimingAndRelatedParametersSequence =
      const Tagx(0x001c010100160374);
  static const Tagx kMREchoSequence = const Tagx(0x001c010100160375);
  static const Tagx kMRModifierSequence = const Tagx(0x001c010100160376);
  static const Tagx kMRDiffusionSequence = const Tagx(0x001c010100160377);
  static const Tagx kCardiacSynchronizationSequence =
      const Tagx(0x001c010100160378);
  static const Tagx kMRAveragesSequence = const Tagx(0x001c010100160379);
  static const Tagx kMRFOVGeometrySequence = const Tagx(0x001c01010016037a);
  static const Tagx kVolumeLocalizationSequence =
      const Tagx(0x001c01010016037b);
  static const Tagx kSpectroscopyAcquisitionDataColumns =
      const Tagx(0x001c0101001c037c);
  static const Tagx kDiffusionAnisotropyType = const Tagx(0x001c01010005037d);
  static const Tagx kFrameReferenceDateTime = const Tagx(0x001c01010008037e);
  static const Tagx kMRMetaboliteMapSequence = const Tagx(0x001c01010016037f);
  static const Tagx kParallelReductionFactorOutOfPlane =
      const Tagx(0x001c010100090380);
  static const Tagx kSpectroscopyAcquisitionOutOfPlanePhaseSteps =
      const Tagx(0x001c0101001c0381);
  static const Tagx kBulkMotionStatus = const Tagx(0x005c010100050382);
  static const Tagx kParallelReductionFactorSecondInPlane =
      const Tagx(0x001c010100090383);
  static const Tagx kCardiacBeatRejectionTechnique =
      const Tagx(0x001c010100050384);
  static const Tagx kRespiratoryMotionCompensationTechnique =
      const Tagx(0x001c010100050385);
  static const Tagx kRespiratorySignalSource = const Tagx(0x001c010100050386);
  static const Tagx kBulkMotionCompensationTechnique =
      const Tagx(0x001c010100050387);
  static const Tagx kBulkMotionSignalSource = const Tagx(0x001c010100050388);
  static const Tagx kApplicableSafetyStandardAgency =
      const Tagx(0x001c010100050389);
  static const Tagx kApplicableSafetyStandardDescription =
      const Tagx(0x001c0101000c038a);
  static const Tagx kOperatingModeSequence = const Tagx(0x001c01010016038b);
  static const Tagx kOperatingModeType = const Tagx(0x001c01010005038c);
  static const Tagx kOperatingMode = const Tagx(0x001c01010005038d);
  static const Tagx kSpecificAbsorptionRateDefinition =
      const Tagx(0x001c01010005038e);
  static const Tagx kGradientOutputType = const Tagx(0x001c01010005038f);
  static const Tagx kSpecificAbsorptionRateValue =
      const Tagx(0x001c010100090390);
  static const Tagx kGradientOutput = const Tagx(0x001c010100090391);
  static const Tagx kFlowCompensationDirection = const Tagx(0x001c010100050392);
  static const Tagx kTaggingDelay = const Tagx(0x001c010100090393);
  static const Tagx kRespiratoryMotionCompensationTechniqueDescription =
      const Tagx(0x001c010100180394);
  static const Tagx kRespiratorySignalSourceID = const Tagx(0x001c010100140395);
  static const Tagx kChemicalShiftMinimumIntegrationLimitInHz =
      const Tagx(0x005c010100090396);
  static const Tagx kChemicalShiftMaximumIntegrationLimitInHz =
      const Tagx(0x005c010100090397);
  static const Tagx kMRVelocityEncodingSequence =
      const Tagx(0x001c010100160398);
  static const Tagx kFirstOrderPhaseCorrection = const Tagx(0x001c010100050399);
  static const Tagx kWaterReferencedPhaseCorrection =
      const Tagx(0x001c01010005039a);
  static const Tagx kMRSpectroscopyAcquisitionType =
      const Tagx(0x001c01010005039b);
  static const Tagx kRespiratoryCyclePosition = const Tagx(0x001c01010005039c);
  static const Tagx kVelocityEncodingMaximumValue =
      const Tagx(0x001c01010009039d);
  static const Tagx kTagSpacingSecondDimension = const Tagx(0x001c01010009039e);
  static const Tagx kTagAngleSecondAxis = const Tagx(0x001c01010017039f);
  static const Tagx kFrameAcquisitionDuration = const Tagx(0x001c0101000903a0);
  static const Tagx kMRImageFrameTypeSequence = const Tagx(0x001c0101001603a1);
  static const Tagx kMRSpectroscopyFrameTypeSequence =
      const Tagx(0x001c0101001603a2);
  static const Tagx kMRAcquisitionPhaseEncodingStepsInPlane =
      const Tagx(0x001c0101001f03a3);
  static const Tagx kMRAcquisitionPhaseEncodingStepsOutOfPlane =
      const Tagx(0x001c0101001f03a4);
  static const Tagx kSpectroscopyAcquisitionPhaseColumns =
      const Tagx(0x001c0101001c03a5);
  static const Tagx kCardiacCyclePosition = const Tagx(0x001c0101000503a6);
  static const Tagx kSpecificAbsorptionRateSequence =
      const Tagx(0x001c0101001603a7);
  static const Tagx kRFEchoTrainLength = const Tagx(0x001c0101001f03a8);
  static const Tagx kGradientEchoTrainLength = const Tagx(0x001c0101001f03a9);
  static const Tagx kArterialSpinLabelingContrast =
      const Tagx(0x001c0101000503aa);
  static const Tagx kMRArterialSpinLabelingSequence =
      const Tagx(0x001c0101001603ab);
  static const Tagx kASLTechniqueDescription = const Tagx(0x001c0101000c03ac);
  static const Tagx kASLSlabNumber = const Tagx(0x001c0101001f03ad);
  static const Tagx kASLSlabThickness = const Tagx(0x001c0101000903ae);
  static const Tagx kASLSlabOrientation = const Tagx(0x001c0103000903af);
  static const Tagx kASLMidSlabPosition = const Tagx(0x001c0103000903b0);
  static const Tagx kASLContext = const Tagx(0x001c0101000503b1);
  static const Tagx kASLPulseTrainDuration = const Tagx(0x001c0101001c03b2);
  static const Tagx kASLCrusherFlag = const Tagx(0x001c0101000503b3);
  static const Tagx kASLCrusherFlowLimit = const Tagx(0x001c0101000903b4);
  static const Tagx kASLCrusherDescription = const Tagx(0x001c0101000c03b5);
  static const Tagx kASLBolusCutoffFlag = const Tagx(0x001c0101000503b6);
  static const Tagx kASLBolusCutoffTimingSequence =
      const Tagx(0x001c0101001603b7);
  static const Tagx kASLBolusCutoffTechnique = const Tagx(0x001c0101000c03b8);
  static const Tagx kASLBolusCutoffDelayTime = const Tagx(0x001c0101001c03b9);
  static const Tagx kASLSlabSequence = const Tagx(0x001c0101001603ba);
  static const Tagx kChemicalShiftMinimumIntegrationLimitInppm =
      const Tagx(0x001c0101000903bb);
  static const Tagx kChemicalShiftMaximumIntegrationLimitInppm =
      const Tagx(0x001c0101000903bc);
  static const Tagx kCTAcquisitionTypeSequence = const Tagx(0x001c0101001603bd);
  static const Tagx kAcquisitionType = const Tagx(0x001c0101000503be);
  static const Tagx kTubeAngle = const Tagx(0x001c0101000903bf);
  static const Tagx kCTAcquisitionDetailsSequence =
      const Tagx(0x001c0101001603c0);
  static const Tagx kRevolutionTime = const Tagx(0x001c0101000903c1);
  static const Tagx kSingleCollimationWidth = const Tagx(0x001c0101000903c2);
  static const Tagx kTotalCollimationWidth = const Tagx(0x001c0101000903c3);
  static const Tagx kCTTableDynamicsSequence = const Tagx(0x001c0101001603c4);
  static const Tagx kTableSpeed = const Tagx(0x001c0101000903c5);
  static const Tagx kTableFeedPerRotation = const Tagx(0x001c0101000903c6);
  static const Tagx kSpiralPitchFactor = const Tagx(0x001c0101000903c7);
  static const Tagx kCTGeometrySequence = const Tagx(0x001c0101001603c8);
  static const Tagx kDataCollectionCenterPatient =
      const Tagx(0x001c0103000903c9);
  static const Tagx kCTReconstructionSequence = const Tagx(0x001c0101001603ca);
  static const Tagx kReconstructionAlgorithm = const Tagx(0x001c0101000503cb);
  static const Tagx kConvolutionKernelGroup = const Tagx(0x001c0101000503cc);
  static const Tagx kReconstructionFieldOfView = const Tagx(0x001c0102000903cd);
  static const Tagx kReconstructionTargetCenterPatient =
      const Tagx(0x001c0103000903ce);
  static const Tagx kReconstructionAngle = const Tagx(0x001c0101000903cf);
  static const Tagx kImageFilter = const Tagx(0x001c0101001403d0);
  static const Tagx kCTExposureSequence = const Tagx(0x001c0101001603d1);
  static const Tagx kReconstructionPixelSpacing =
      const Tagx(0x001c0102000903d2);
  static const Tagx kExposureModulationType = const Tagx(0x001c0101000503d3);
  static const Tagx kEstimatedDoseSaving = const Tagx(0x001c0101000903d4);
  static const Tagx kCTXRayDetailsSequence = const Tagx(0x001c0101001603d5);
  static const Tagx kCTPositionSequence = const Tagx(0x001c0101001603d6);
  static const Tagx kTablePosition = const Tagx(0x001c0101000903d7);
  static const Tagx kExposureTimeInms = const Tagx(0x001c0101000903d8);
  static const Tagx kCTImageFrameTypeSequence = const Tagx(0x001c0101001603d9);
  static const Tagx kXRayTubeCurrentInmA = const Tagx(0x001c0101000903da);
  static const Tagx kExposureInmAs = const Tagx(0x001c0101000903db);
  static const Tagx kConstantVolumeFlag = const Tagx(0x001c0101000503dc);
  static const Tagx kFluoroscopyFlag = const Tagx(0x001c0101000503dd);
  static const Tagx kDistanceSourceToDataCollectionCenter =
      const Tagx(0x001c0101000903de);
  static const Tagx kContrastBolusAgentNumber = const Tagx(0x001c0101001f03df);
  static const Tagx kContrastBolusIngredientCodeSequence =
      const Tagx(0x001c0101001603e0);
  static const Tagx kContrastAdministrationProfileSequence =
      const Tagx(0x001c0101001603e1);
  static const Tagx kContrastBolusUsageSequence =
      const Tagx(0x001c0101001603e2);
  static const Tagx kContrastBolusAgentAdministered =
      const Tagx(0x001c0101000503e3);
  static const Tagx kContrastBolusAgentDetected =
      const Tagx(0x001c0101000503e4);
  static const Tagx kContrastBolusAgentPhase = const Tagx(0x001c0101000503e5);
  static const Tagx kCTDIvol = const Tagx(0x001c0101000903e6);
  static const Tagx kCTDIPhantomTypeCodeSequence =
      const Tagx(0x001c0101001603e7);
  static const Tagx kCalciumScoringMassFactorPatient =
      const Tagx(0x001c0101000a03e8);
  static const Tagx kCalciumScoringMassFactorDevice =
      const Tagx(0x001c0103000a03e9);
  static const Tagx kEnergyWeightingFactor = const Tagx(0x001c0101000a03ea);
  static const Tagx kCTAdditionalXRaySourceSequence =
      const Tagx(0x001c0101001603eb);
  static const Tagx kProjectionPixelCalibrationSequence =
      const Tagx(0x001c0101001603ec);
  static const Tagx kDistanceSourceToIsocenter = const Tagx(0x001c0101000a03ed);
  static const Tagx kDistanceObjectToTableTop = const Tagx(0x001c0101000a03ee);
  static const Tagx kObjectPixelSpacingInCenterOfBeam =
      const Tagx(0x001c0102000a03ef);
  static const Tagx kPositionerPositionSequence =
      const Tagx(0x001c0101001603f0);
  static const Tagx kTablePositionSequence = const Tagx(0x001c0101001603f1);
  static const Tagx kCollimatorShapeSequence = const Tagx(0x001c0101001603f2);
  static const Tagx kPlanesInAcquisition = const Tagx(0x001c0101000503f3);
  static const Tagx kXAXRFFrameCharacteristicsSequence =
      const Tagx(0x001c0101001603f4);
  static const Tagx kFrameAcquisitionSequence = const Tagx(0x001c0101001603f5);
  static const Tagx kXRayReceptorType = const Tagx(0x001c0101000503f6);
  static const Tagx kAcquisitionProtocolName = const Tagx(0x001c0101000c03f7);
  static const Tagx kAcquisitionProtocolDescription =
      const Tagx(0x001c0101000d03f8);
  static const Tagx kContrastBolusIngredientOpaque =
      const Tagx(0x001c0101000503f9);
  static const Tagx kDistanceReceptorPlaneToDetectorHousing =
      const Tagx(0x001c0101000a03fa);
  static const Tagx kIntensifierActiveShape = const Tagx(0x001c0101000503fb);
  static const Tagx kIntensifierActiveDimensions =
      const Tagx(0x001c0102000a03fc);
  static const Tagx kPhysicalDetectorSize = const Tagx(0x001c0102000a03fd);
  static const Tagx kPositionOfIsocenterProjection =
      const Tagx(0x001c0102000a03fe);
  static const Tagx kFieldOfViewSequence = const Tagx(0x001c0101001603ff);
  static const Tagx kFieldOfViewDescription = const Tagx(0x001c0101000c0400);
  static const Tagx kExposureControlSensingRegionsSequence =
      const Tagx(0x001c010100160401);
  static const Tagx kExposureControlSensingRegionShape =
      const Tagx(0x001c010100050402);
  static const Tagx kExposureControlSensingRegionLeftVerticalEdge =
      const Tagx(0x001c010100170403);
  static const Tagx kExposureControlSensingRegionRightVerticalEdge =
      const Tagx(0x001c010100170404);
  static const Tagx kExposureControlSensingRegionUpperHorizontalEdge =
      const Tagx(0x001c010100170405);
  static const Tagx kExposureControlSensingRegionLowerHorizontalEdge =
      const Tagx(0x001c010100170406);
  static const Tagx kCenterOfCircularExposureControlSensingRegion =
      const Tagx(0x001c010200170407);
  static const Tagx kRadiusOfCircularExposureControlSensingRegion =
      const Tagx(0x001c0101001f0408);
  static const Tagx kVerticesOfThePolygonalExposureControlSensingRegion =
      const Tagx(0x001c01ff00170409);
  static const Tagx kNoName0 = const Tagx(0x005c01000000040a);
  static const Tagx kColumnAngulationPatient = const Tagx(0x001c0101000a040b);
  static const Tagx kBeamAngle = const Tagx(0x001c0101000a040c);
  static const Tagx kFrameDetectorParametersSequence =
      const Tagx(0x001c01010016040d);
  static const Tagx kCalculatedAnatomyThickness =
      const Tagx(0x001c0101000a040e);
  static const Tagx kCalibrationSequence = const Tagx(0x001c01010016040f);
  static const Tagx kObjectThicknessSequence = const Tagx(0x001c010100160410);
  static const Tagx kPlaneIdentification = const Tagx(0x001c010100050411);
  static const Tagx kFieldOfViewDimensionsInFloat =
      const Tagx(0x001c0102000a0412);
  static const Tagx kIsocenterReferenceSystemSequence =
      const Tagx(0x001c010100160413);
  static const Tagx kPositionerIsocenterPrimaryAngle =
      const Tagx(0x001c0101000a0414);
  static const Tagx kPositionerIsocenterSecondaryAngle =
      const Tagx(0x001c0101000a0415);
  static const Tagx kPositionerIsocenterDetectorRotationAngle =
      const Tagx(0x001c0101000a0416);
  static const Tagx kTableXPositionToIsocenter = const Tagx(0x001c0101000a0417);
  static const Tagx kTableYPositionToIsocenter = const Tagx(0x001c0101000a0418);
  static const Tagx kTableZPositionToIsocenter = const Tagx(0x001c0101000a0419);
  static const Tagx kTableHorizontalRotationAngle =
      const Tagx(0x001c0101000a041a);
  static const Tagx kTableHeadTiltAngle = const Tagx(0x001c0101000a041b);
  static const Tagx kTableCradleTiltAngle = const Tagx(0x001c0101000a041c);
  static const Tagx kFrameDisplayShutterSequence =
      const Tagx(0x001c01010016041d);
  static const Tagx kAcquiredImageAreaDoseProduct =
      const Tagx(0x001c0101000a041e);
  static const Tagx kCArmPositionerTabletopRelationship =
      const Tagx(0x001c01010005041f);
  static const Tagx kXRayGeometrySequence = const Tagx(0x001c010100160420);
  static const Tagx kIrradiationEventIdentificationSequence =
      const Tagx(0x001c010100160421);
  static const Tagx kXRay3DFrameTypeSequence = const Tagx(0x001c010100160422);
  static const Tagx kContributingSourcesSequence =
      const Tagx(0x001c010100160423);
  static const Tagx kXRay3DAcquisitionSequence = const Tagx(0x001c010100160424);
  static const Tagx kPrimaryPositionerScanArc = const Tagx(0x001c0101000a0425);
  static const Tagx kSecondaryPositionerScanArc =
      const Tagx(0x001c0101000a0426);
  static const Tagx kPrimaryPositionerScanStartAngle =
      const Tagx(0x001c0101000a0427);
  static const Tagx kSecondaryPositionerScanStartAngle =
      const Tagx(0x001c0101000a0428);
  static const Tagx kPrimaryPositionerIncrement =
      const Tagx(0x001c0101000a0429);
  static const Tagx kSecondaryPositionerIncrement =
      const Tagx(0x001c0101000a042a);
  static const Tagx kStartAcquisitionDateTime = const Tagx(0x001c01010008042b);
  static const Tagx kEndAcquisitionDateTime = const Tagx(0x001c01010008042c);
  static const Tagx kApplicationName = const Tagx(0x001c0101000c042d);
  static const Tagx kApplicationVersion = const Tagx(0x001c0101000c042e);
  static const Tagx kApplicationManufacturer = const Tagx(0x001c0101000c042f);
  static const Tagx kAlgorithmType = const Tagx(0x001c010100050430);
  static const Tagx kAlgorithmDescription = const Tagx(0x001c0101000c0431);
  static const Tagx kXRay3DReconstructionSequence =
      const Tagx(0x001c010100160432);
  static const Tagx kReconstructionDescription = const Tagx(0x001c0101000c0433);
  static const Tagx kPerProjectionAcquisitionSequence =
      const Tagx(0x001c010100160434);
  static const Tagx kDiffusionBMatrixSequence = const Tagx(0x001c010100160435);
  static const Tagx kDiffusionBValueXX = const Tagx(0x001c010100090436);
  static const Tagx kDiffusionBValueXY = const Tagx(0x001c010100090437);
  static const Tagx kDiffusionBValueXZ = const Tagx(0x001c010100090438);
  static const Tagx kDiffusionBValueYY = const Tagx(0x001c010100090439);
  static const Tagx kDiffusionBValueYZ = const Tagx(0x001c01010009043a);
  static const Tagx kDiffusionBValueZZ = const Tagx(0x001c01010009043b);
  static const Tagx kDecayCorrectionDateTime = const Tagx(0x001c01010008043c);
  static const Tagx kStartDensityThreshold = const Tagx(0x001c01010009043d);
  static const Tagx kStartRelativeDensityDifferenceThreshold =
      const Tagx(0x001c01010009043e);
  static const Tagx kStartCardiacTriggerCountThreshold =
      const Tagx(0x001c01010009043f);
  static const Tagx kStartRespiratoryTriggerCountThreshold =
      const Tagx(0x001c010100090440);
  static const Tagx kTerminationCountsThreshold =
      const Tagx(0x001c010100090441);
  static const Tagx kTerminationDensityThreshold =
      const Tagx(0x001c010100090442);
  static const Tagx kTerminationRelativeDensityThreshold =
      const Tagx(0x001c010100090443);
  static const Tagx kTerminationTimeThreshold = const Tagx(0x001c010100090444);
  static const Tagx kTerminationCardiacTriggerCountThreshold =
      const Tagx(0x001c010100090445);
  static const Tagx kTerminationRespiratoryTriggerCountThreshold =
      const Tagx(0x001c010100090446);
  static const Tagx kDetectorGeometry = const Tagx(0x001c010100050447);
  static const Tagx kTransverseDetectorSeparation =
      const Tagx(0x001c010100090448);
  static const Tagx kAxialDetectorDimension = const Tagx(0x001c010100090449);
  static const Tagx kRadiopharmaceuticalAgentNumber =
      const Tagx(0x001c0101001f044a);
  static const Tagx kPETFrameAcquisitionSequence =
      const Tagx(0x001c01010016044b);
  static const Tagx kPETDetectorMotionDetailsSequence =
      const Tagx(0x001c01010016044c);
  static const Tagx kPETTableDynamicsSequence = const Tagx(0x001c01010016044d);
  static const Tagx kPETPositionSequence = const Tagx(0x001c01010016044e);
  static const Tagx kPETFrameCorrectionFactorsSequence =
      const Tagx(0x001c01010016044f);
  static const Tagx kRadiopharmaceuticalUsageSequence =
      const Tagx(0x001c010100160450);
  static const Tagx kAttenuationCorrectionSource =
      const Tagx(0x001c010100050451);
  static const Tagx kNumberOfIterations = const Tagx(0x001c0101001f0452);
  static const Tagx kNumberOfSubsets = const Tagx(0x001c0101001f0453);
  static const Tagx kPETReconstructionSequence = const Tagx(0x001c010100160454);
  static const Tagx kPETFrameTypeSequence = const Tagx(0x001c010100160455);
  static const Tagx kTimeOfFlightInformationUsed =
      const Tagx(0x001c010100050456);
  static const Tagx kReconstructionType = const Tagx(0x001c010100050457);
  static const Tagx kDecayCorrected = const Tagx(0x001c010100050458);
  static const Tagx kAttenuationCorrected = const Tagx(0x001c010100050459);
  static const Tagx kScatterCorrected = const Tagx(0x001c01010005045a);
  static const Tagx kDeadTimeCorrected = const Tagx(0x001c01010005045b);
  static const Tagx kGantryMotionCorrected = const Tagx(0x001c01010005045c);
  static const Tagx kPatientMotionCorrected = const Tagx(0x001c01010005045d);
  static const Tagx kCountLossNormalizationCorrected =
      const Tagx(0x001c01010005045e);
  static const Tagx kRandomsCorrected = const Tagx(0x001c01010005045f);
  static const Tagx kNonUniformRadialSamplingCorrected =
      const Tagx(0x001c010100050460);
  static const Tagx kSensitivityCalibrated = const Tagx(0x001c010100050461);
  static const Tagx kDetectorNormalizationCorrection =
      const Tagx(0x001c010100050462);
  static const Tagx kIterativeReconstructionMethod =
      const Tagx(0x001c010100050463);
  static const Tagx kAttenuationCorrectionTemporalRelationship =
      const Tagx(0x001c010100050464);
  static const Tagx kPatientPhysiologicalStateSequence =
      const Tagx(0x001c010100160465);
  static const Tagx kPatientPhysiologicalStateCodeSequence =
      const Tagx(0x001c010100160466);
  static const Tagx kDepthsOfFocus = const Tagx(0x001c01ff00090467);
  static const Tagx kExcludedIntervalsSequence = const Tagx(0x001c010100160468);
  static const Tagx kExclusionStartDateTime = const Tagx(0x001c010100080469);
  static const Tagx kExclusionDuration = const Tagx(0x001c01010009046a);
  static const Tagx kUSImageDescriptionSequence =
      const Tagx(0x001c01010016046b);
  static const Tagx kImageDataTypeSequence = const Tagx(0x001c01010016046c);
  static const Tagx kDataType = const Tagx(0x001c01010005046d);
  static const Tagx kTransducerScanPatternCodeSequence =
      const Tagx(0x001c01010016046e);
  static const Tagx kAliasedDataType = const Tagx(0x001c01010005046f);
  static const Tagx kPositionMeasuringDeviceUsed =
      const Tagx(0x001c010100050470);
  static const Tagx kTransducerGeometryCodeSequence =
      const Tagx(0x001c010100160471);
  static const Tagx kTransducerBeamSteeringCodeSequence =
      const Tagx(0x001c010100160472);
  static const Tagx kTransducerApplicationCodeSequence =
      const Tagx(0x001c010100160473);
  static const Tagx kZeroVelocityPixelValue = const Tagx(0x001c0101001d0474);
  static const Tagx kContributingEquipmentSequence =
      const Tagx(0x001c010100160475);
  static const Tagx kContributionDateTime = const Tagx(0x001c010100080476);
  static const Tagx kContributionDescription = const Tagx(0x001c010100180477);
  static const Tagx kStudyInstanceUID = const Tagx(0x001c0101001b0478);
  static const Tagx kSeriesInstanceUID = const Tagx(0x001c0101001b0479);
  static const Tagx kStudyID = const Tagx(0x001c01010014047a);
  static const Tagx kSeriesNumber = const Tagx(0x001c0101000b047b);
  static const Tagx kAcquisitionNumber = const Tagx(0x001c0101000b047c);
  static const Tagx kInstanceNumber = const Tagx(0x001c0101000b047d);
  static const Tagx kIsotopeNumber = const Tagx(0x005c0101000b047e);
  static const Tagx kPhaseNumber = const Tagx(0x005c0101000b047f);
  static const Tagx kIntervalNumber = const Tagx(0x005c0101000b0480);
  static const Tagx kTimeSlotNumber = const Tagx(0x005c0101000b0481);
  static const Tagx kAngleNumber = const Tagx(0x005c0101000b0482);
  static const Tagx kItemNumber = const Tagx(0x001c0101000b0483);
  static const Tagx kPatientOrientation = const Tagx(0x001c010200050484);
  static const Tagx kOverlayNumber = const Tagx(0x005c0101000b0485);
  static const Tagx kCurveNumber = const Tagx(0x005c0101000b0486);
  static const Tagx kLUTNumber = const Tagx(0x005c0101000b0487);
  static const Tagx kImagePosition = const Tagx(0x005c010300070488);
  static const Tagx kImagePositionPatient = const Tagx(0x001c010300070489);
  static const Tagx kImageOrientation = const Tagx(0x005c01060007048a);
  static const Tagx kImageOrientationPatient = const Tagx(0x001c01060007048b);
  static const Tagx kLocation = const Tagx(0x005c01010007048c);
  static const Tagx kFrameOfReferenceUID = const Tagx(0x001c0101001b048d);
  static const Tagx kLaterality = const Tagx(0x001c01010005048e);
  static const Tagx kImageLaterality = const Tagx(0x001c01010005048f);
  static const Tagx kImageGeometryType = const Tagx(0x005c0101000c0490);
  static const Tagx kMaskingImage = const Tagx(0x005c01ff00050491);
  static const Tagx kReportNumber = const Tagx(0x005c0101000b0492);
  static const Tagx kTemporalPositionIdentifier =
      const Tagx(0x001c0101000b0493);
  static const Tagx kNumberOfTemporalPositions = const Tagx(0x001c0101000b0494);
  static const Tagx kTemporalResolution = const Tagx(0x001c010100070495);
  static const Tagx kSynchronizationFrameOfReferenceUID =
      const Tagx(0x001c0101001b0496);
  static const Tagx kSOPInstanceUIDOfConcatenationSource =
      const Tagx(0x001c0101001b0497);
  static const Tagx kSeriesInStudy = const Tagx(0x005c0101000b0498);
  static const Tagx kAcquisitionsInSeries = const Tagx(0x005c0101000b0499);
  static const Tagx kImagesInAcquisition = const Tagx(0x001c0101000b049a);
  static const Tagx kImagesInSeries = const Tagx(0x005c0101000b049b);
  static const Tagx kAcquisitionsInStudy = const Tagx(0x005c0101000b049c);
  static const Tagx kImagesInStudy = const Tagx(0x005c0101000b049d);
  static const Tagx kReference = const Tagx(0x005c01ff000c049e);
  static const Tagx kPositionReferenceIndicator =
      const Tagx(0x001c0101000c049f);
  static const Tagx kSliceLocation = const Tagx(0x001c0101000704a0);
  static const Tagx kOtherStudyNumbers = const Tagx(0x005c01ff000b04a1);
  static const Tagx kNumberOfPatientRelatedStudies =
      const Tagx(0x001c0101000b04a2);
  static const Tagx kNumberOfPatientRelatedSeries =
      const Tagx(0x001c0101000b04a3);
  static const Tagx kNumberOfPatientRelatedInstances =
      const Tagx(0x001c0101000b04a4);
  static const Tagx kNumberOfStudyRelatedSeries =
      const Tagx(0x001c0101000b04a5);
  static const Tagx kNumberOfStudyRelatedInstances =
      const Tagx(0x001c0101000b04a6);
  static const Tagx kNumberOfSeriesRelatedInstances =
      const Tagx(0x001c0101000b04a7);
  static const Tagx kSourceImageIDs = const Tagx(0x005c01ff000504a8);
  static const Tagx kModifyingDeviceID = const Tagx(0x005c0101000504a9);
  static const Tagx kModifiedImageID = const Tagx(0x005c0101000504aa);
  static const Tagx kModifiedImageDate = const Tagx(0x005c0101000604ab);
  static const Tagx kModifyingDeviceManufacturer =
      const Tagx(0x005c0101000c04ac);
  static const Tagx kModifiedImageTime = const Tagx(0x005c0101001904ad);
  static const Tagx kModifiedImageDescription = const Tagx(0x005c0101000c04ae);
  static const Tagx kImageComments = const Tagx(0x001c0101000d04af);
  static const Tagx kOriginalImageIdentification =
      const Tagx(0x005c01ff000304b0);
  static const Tagx kOriginalImageIdentificationNomenclature =
      const Tagx(0x005c01ff000c04b1);
  static const Tagx kStackID = const Tagx(0x001c0101001404b2);
  static const Tagx kInStackPositionNumber = const Tagx(0x001c0101001c04b3);
  static const Tagx kFrameAnatomySequence = const Tagx(0x001c0101001604b4);
  static const Tagx kFrameLaterality = const Tagx(0x001c0101000504b5);
  static const Tagx kFrameContentSequence = const Tagx(0x001c0101001604b6);
  static const Tagx kPlanePositionSequence = const Tagx(0x001c0101001604b7);
  static const Tagx kPlaneOrientationSequence = const Tagx(0x001c0101001604b8);
  static const Tagx kTemporalPositionIndex = const Tagx(0x001c0101001c04b9);
  static const Tagx kNominalCardiacTriggerDelayTime =
      const Tagx(0x001c0101000904ba);
  static const Tagx kNominalCardiacTriggerTimePriorToRPeak =
      const Tagx(0x001c0101000a04bb);
  static const Tagx kActualCardiacTriggerTimePriorToRPeak =
      const Tagx(0x001c0101000a04bc);
  static const Tagx kFrameAcquisitionNumber = const Tagx(0x001c0101001f04bd);
  static const Tagx kDimensionIndexValues = const Tagx(0x001c01ff001c04be);
  static const Tagx kFrameComments = const Tagx(0x001c0101000d04bf);
  static const Tagx kConcatenationUID = const Tagx(0x001c0101001b04c0);
  static const Tagx kInConcatenationNumber = const Tagx(0x001c0101001f04c1);
  static const Tagx kInConcatenationTotalNumber =
      const Tagx(0x001c0101001f04c2);
  static const Tagx kDimensionOrganizationUID = const Tagx(0x001c0101001b04c3);
  static const Tagx kDimensionIndexPointer = const Tagx(0x001c0101000304c4);
  static const Tagx kFunctionalGroupPointer = const Tagx(0x001c0101000304c5);
  static const Tagx kUnassignedSharedConvertedAttributesSequence =
      const Tagx(0x001c0101001604c6);
  static const Tagx kUnassignedPerFrameConvertedAttributesSequence =
      const Tagx(0x001c0101001604c7);
  static const Tagx kConversionSourceAttributesSequence =
      const Tagx(0x001c0101001604c8);
  static const Tagx kDimensionIndexPrivateCreator =
      const Tagx(0x001c0101000c04c9);
  static const Tagx kDimensionOrganizationSequence =
      const Tagx(0x001c0101001604ca);
  static const Tagx kDimensionIndexSequence = const Tagx(0x001c0101001604cb);
  static const Tagx kConcatenationFrameOffsetNumber =
      const Tagx(0x001c0101001c04cc);
  static const Tagx kFunctionalGroupPrivateCreator =
      const Tagx(0x001c0101000c04cd);
  static const Tagx kNominalPercentageOfCardiacPhase =
      const Tagx(0x001c0101000a04ce);
  static const Tagx kNominalPercentageOfRespiratoryPhase =
      const Tagx(0x001c0101000a04cf);
  static const Tagx kStartingRespiratoryAmplitude =
      const Tagx(0x001c0101000a04d0);
  static const Tagx kStartingRespiratoryPhase = const Tagx(0x001c0101000504d1);
  static const Tagx kEndingRespiratoryAmplitude =
      const Tagx(0x001c0101000a04d2);
  static const Tagx kEndingRespiratoryPhase = const Tagx(0x001c0101000504d3);
  static const Tagx kRespiratoryTriggerType = const Tagx(0x001c0101000504d4);
  static const Tagx kRRIntervalTimeNominal = const Tagx(0x001c0101000904d5);
  static const Tagx kActualCardiacTriggerDelayTime =
      const Tagx(0x001c0101000904d6);
  static const Tagx kRespiratorySynchronizationSequence =
      const Tagx(0x001c0101001604d7);
  static const Tagx kRespiratoryIntervalTime = const Tagx(0x001c0101000904d8);
  static const Tagx kNominalRespiratoryTriggerDelayTime =
      const Tagx(0x001c0101000904d9);
  static const Tagx kRespiratoryTriggerDelayThreshold =
      const Tagx(0x001c0101000904da);
  static const Tagx kActualRespiratoryTriggerDelayTime =
      const Tagx(0x001c0101000904db);
  static const Tagx kImagePositionVolume = const Tagx(0x001c0103000904dc);
  static const Tagx kImageOrientationVolume = const Tagx(0x001c0106000904dd);
  static const Tagx kUltrasoundAcquisitionGeometry =
      const Tagx(0x001c0101000504de);
  static const Tagx kApexPosition = const Tagx(0x001c0103000904df);
  static const Tagx kVolumeToTransducerMappingMatrix =
      const Tagx(0x001c0110000904e0);
  static const Tagx kVolumeToTableMappingMatrix =
      const Tagx(0x001c0110000904e1);
  static const Tagx kPatientFrameOfReferenceSource =
      const Tagx(0x001c0101000504e2);
  static const Tagx kTemporalPositionTimeOffset =
      const Tagx(0x001c0101000904e3);
  static const Tagx kPlanePositionVolumeSequence =
      const Tagx(0x001c0101001604e4);
  static const Tagx kPlaneOrientationVolumeSequence =
      const Tagx(0x001c0101001604e5);
  static const Tagx kTemporalPositionSequence = const Tagx(0x001c0101001604e6);
  static const Tagx kDimensionOrganizationType = const Tagx(0x001c0101000504e7);
  static const Tagx kVolumeFrameOfReferenceUID = const Tagx(0x001c0101001b04e8);
  static const Tagx kTableFrameOfReferenceUID = const Tagx(0x001c0101001b04e9);
  static const Tagx kDimensionDescriptionLabel = const Tagx(0x001c0101000c04ea);
  static const Tagx kPatientOrientationInFrameSequence =
      const Tagx(0x001c0101001604eb);
  static const Tagx kFrameLabel = const Tagx(0x001c0101000c04ec);
  static const Tagx kAcquisitionIndex = const Tagx(0x001c01ff001f04ed);
  static const Tagx kContributingSOPInstancesReferenceSequence =
      const Tagx(0x001c0101001604ee);
  static const Tagx kReconstructionIndex = const Tagx(0x001c0101001f04ef);
  static const Tagx kLightPathFilterPassThroughWavelength =
      const Tagx(0x001c0101001f04f0);
  static const Tagx kLightPathFilterPassBand = const Tagx(0x001c0102001f04f1);
  static const Tagx kImagePathFilterPassThroughWavelength =
      const Tagx(0x001c0101001f04f2);
  static const Tagx kImagePathFilterPassBand = const Tagx(0x001c0102001f04f3);
  static const Tagx kPatientEyeMovementCommanded =
      const Tagx(0x001c0101000504f4);
  static const Tagx kPatientEyeMovementCommandCodeSequence =
      const Tagx(0x001c0101001604f5);
  static const Tagx kSphericalLensPower = const Tagx(0x001c0101000a04f6);
  static const Tagx kCylinderLensPower = const Tagx(0x001c0101000a04f7);
  static const Tagx kCylinderAxis = const Tagx(0x001c0101000a04f8);
  static const Tagx kEmmetropicMagnification = const Tagx(0x001c0101000a04f9);
  static const Tagx kIntraOcularPressure = const Tagx(0x001c0101000a04fa);
  static const Tagx kHorizontalFieldOfView = const Tagx(0x001c0101000a04fb);
  static const Tagx kPupilDilated = const Tagx(0x001c0101000504fc);
  static const Tagx kDegreeOfDilation = const Tagx(0x001c0101000a04fd);
  static const Tagx kStereoBaselineAngle = const Tagx(0x001c0101000a04fe);
  static const Tagx kStereoBaselineDisplacement =
      const Tagx(0x001c0101000a04ff);
  static const Tagx kStereoHorizontalPixelOffset =
      const Tagx(0x001c0101000a0500);
  static const Tagx kStereoVerticalPixelOffset = const Tagx(0x001c0101000a0501);
  static const Tagx kStereoRotation = const Tagx(0x001c0101000a0502);
  static const Tagx kAcquisitionDeviceTypeCodeSequence =
      const Tagx(0x001c010100160503);
  static const Tagx kIlluminationTypeCodeSequence =
      const Tagx(0x001c010100160504);
  static const Tagx kLightPathFilterTypeStackCodeSequence =
      const Tagx(0x001c010100160505);
  static const Tagx kImagePathFilterTypeStackCodeSequence =
      const Tagx(0x001c010100160506);
  static const Tagx kLensesCodeSequence = const Tagx(0x001c010100160507);
  static const Tagx kChannelDescriptionCodeSequence =
      const Tagx(0x001c010100160508);
  static const Tagx kRefractiveStateSequence = const Tagx(0x001c010100160509);
  static const Tagx kMydriaticAgentCodeSequence =
      const Tagx(0x001c01010016050a);
  static const Tagx kRelativeImagePositionCodeSequence =
      const Tagx(0x001c01010016050b);
  static const Tagx kCameraAngleOfView = const Tagx(0x001c0101000a050c);
  static const Tagx kStereoPairsSequence = const Tagx(0x001c01010016050d);
  static const Tagx kLeftImageSequence = const Tagx(0x001c01010016050e);
  static const Tagx kRightImageSequence = const Tagx(0x001c01010016050f);
  static const Tagx kAxialLengthOfTheEye = const Tagx(0x001c0101000a0510);
  static const Tagx kOphthalmicFrameLocationSequence =
      const Tagx(0x001c010100160511);
  static const Tagx kReferenceCoordinates = const Tagx(0x001c02ff000a0512);
  static const Tagx kDepthSpatialResolution = const Tagx(0x001c0101000a0513);
  static const Tagx kMaximumDepthDistortion = const Tagx(0x001c0101000a0514);
  static const Tagx kAlongScanSpatialResolution =
      const Tagx(0x001c0101000a0515);
  static const Tagx kMaximumAlongScanDistortion =
      const Tagx(0x001c0101000a0516);
  static const Tagx kOphthalmicImageOrientation =
      const Tagx(0x001c010100050517);
  static const Tagx kDepthOfTransverseImage = const Tagx(0x001c0101000a0518);
  static const Tagx kMydriaticAgentConcentrationUnitsSequence =
      const Tagx(0x001c010100160519);
  static const Tagx kAcrossScanSpatialResolution =
      const Tagx(0x001c0101000a051a);
  static const Tagx kMaximumAcrossScanDistortion =
      const Tagx(0x001c0101000a051b);
  static const Tagx kMydriaticAgentConcentration =
      const Tagx(0x001c01010007051c);
  static const Tagx kIlluminationWaveLength = const Tagx(0x001c0101000a051d);
  static const Tagx kIlluminationPower = const Tagx(0x001c0101000a051e);
  static const Tagx kIlluminationBandwidth = const Tagx(0x001c0101000a051f);
  static const Tagx kMydriaticAgentSequence = const Tagx(0x001c010100160520);
  static const Tagx kOphthalmicAxialMeasurementsRightEyeSequence =
      const Tagx(0x001c010100160521);
  static const Tagx kOphthalmicAxialMeasurementsLeftEyeSequence =
      const Tagx(0x001c010100160522);
  static const Tagx kOphthalmicAxialMeasurementsDeviceType =
      const Tagx(0x001c010100050523);
  static const Tagx kOphthalmicAxialLengthMeasurementsType =
      const Tagx(0x001c010100050524);
  static const Tagx kOphthalmicAxialLengthSequence =
      const Tagx(0x001c010100160525);
  static const Tagx kOphthalmicAxialLength = const Tagx(0x001c0101000a0526);
  static const Tagx kLensStatusCodeSequence = const Tagx(0x001c010100160527);
  static const Tagx kVitreousStatusCodeSequence =
      const Tagx(0x001c010100160528);
  static const Tagx kIOLFormulaCodeSequence = const Tagx(0x001c010100160529);
  static const Tagx kIOLFormulaDetail = const Tagx(0x001c0101000c052a);
  static const Tagx kKeratometerIndex = const Tagx(0x001c0101000a052b);
  static const Tagx kSourceOfOphthalmicAxialLengthCodeSequence =
      const Tagx(0x001c01010016052c);
  static const Tagx kTargetRefraction = const Tagx(0x001c0101000a052d);
  static const Tagx kRefractiveProcedureOccurred =
      const Tagx(0x001c01010005052e);
  static const Tagx kRefractiveSurgeryTypeCodeSequence =
      const Tagx(0x001c01010016052f);
  static const Tagx kOphthalmicUltrasoundMethodCodeSequence =
      const Tagx(0x001c010100160530);
  static const Tagx kOphthalmicAxialLengthMeasurementsSequence =
      const Tagx(0x001c010100160531);
  static const Tagx kIOLPower = const Tagx(0x001c0101000a0532);
  static const Tagx kPredictedRefractiveError = const Tagx(0x001c0101000a0533);
  static const Tagx kOphthalmicAxialLengthVelocity =
      const Tagx(0x001c0101000a0534);
  static const Tagx kLensStatusDescription = const Tagx(0x001c0101000c0535);
  static const Tagx kVitreousStatusDescription = const Tagx(0x001c0101000c0536);
  static const Tagx kIOLPowerSequence = const Tagx(0x001c010100160537);
  static const Tagx kLensConstantSequence = const Tagx(0x001c010100160538);
  static const Tagx kIOLManufacturer = const Tagx(0x001c0101000c0539);
  static const Tagx kLensConstantDescription = const Tagx(0x005c0101000c053a);
  static const Tagx kImplantName = const Tagx(0x001c0101000c053b);
  static const Tagx kKeratometryMeasurementTypeCodeSequence =
      const Tagx(0x001c01010016053c);
  static const Tagx kImplantPartNumber = const Tagx(0x001c0101000c053d);
  static const Tagx kReferencedOphthalmicAxialMeasurementsSequence =
      const Tagx(0x001c01010016053e);
  static const Tagx kOphthalmicAxialLengthMeasurementsSegmentNameCodeSequence =
      const Tagx(0x001c01010016053f);
  static const Tagx kRefractiveErrorBeforeRefractiveSurgeryCodeSequence =
      const Tagx(0x001c010100160540);
  static const Tagx kIOLPowerForExactEmmetropia =
      const Tagx(0x001c0101000a0541);
  static const Tagx kIOLPowerForExactTargetRefraction =
      const Tagx(0x001c0101000a0542);
  static const Tagx kAnteriorChamberDepthDefinitionCodeSequence =
      const Tagx(0x001c010100160543);
  static const Tagx kLensThicknessSequence = const Tagx(0x001c010100160544);
  static const Tagx kAnteriorChamberDepthSequence =
      const Tagx(0x001c010100160545);
  static const Tagx kLensThickness = const Tagx(0x001c0101000a0546);
  static const Tagx kAnteriorChamberDepth = const Tagx(0x001c0101000a0547);
  static const Tagx kSourceOfLensThicknessDataCodeSequence =
      const Tagx(0x001c010100160548);
  static const Tagx kSourceOfAnteriorChamberDepthDataCodeSequence =
      const Tagx(0x001c010100160549);
  static const Tagx kSourceOfRefractiveMeasurementsSequence =
      const Tagx(0x001c01010016054a);
  static const Tagx kSourceOfRefractiveMeasurementsCodeSequence =
      const Tagx(0x001c01010016054b);
  static const Tagx kOphthalmicAxialLengthMeasurementModified =
      const Tagx(0x001c01010005054c);
  static const Tagx kOphthalmicAxialLengthDataSourceCodeSequence =
      const Tagx(0x001c01010016054d);
  static const Tagx kOphthalmicAxialLengthAcquisitionMethodCodeSequence =
      const Tagx(0x005c01010016054e);
  static const Tagx kSignalToNoiseRatio = const Tagx(0x001c0101000a054f);
  static const Tagx kOphthalmicAxialLengthDataSourceDescription =
      const Tagx(0x001c0101000c0550);
  static const Tagx kOphthalmicAxialLengthMeasurementsTotalLengthSequence =
      const Tagx(0x001c010100160551);
  static const Tagx kOphthalmicAxialLengthMeasurementsSegmentalLengthSequence =
      const Tagx(0x001c010100160552);
  static const Tagx kOphthalmicAxialLengthMeasurementsLengthSummationSequence =
      const Tagx(0x001c010100160553);
  static const Tagx kUltrasoundOphthalmicAxialLengthMeasurementsSequence =
      const Tagx(0x001c010100160554);
  static const Tagx kOpticalOphthalmicAxialLengthMeasurementsSequence =
      const Tagx(0x001c010100160555);
  static const Tagx kUltrasoundSelectedOphthalmicAxialLengthSequence =
      const Tagx(0x001c010100160556);
  static const Tagx kOphthalmicAxialLengthSelectionMethodCodeSequence =
      const Tagx(0x001c010100160557);
  static const Tagx kOpticalSelectedOphthalmicAxialLengthSequence =
      const Tagx(0x001c010100160558);
  static const Tagx kSelectedSegmentalOphthalmicAxialLengthSequence =
      const Tagx(0x001c010100160559);
  static const Tagx kSelectedTotalOphthalmicAxialLengthSequence =
      const Tagx(0x001c01010016055a);
  static const Tagx kOphthalmicAxialLengthQualityMetricSequence =
      const Tagx(0x001c01010016055b);
  static const Tagx kOphthalmicAxialLengthQualityMetricTypeCodeSequence =
      const Tagx(0x005c01010016055c);
  static const Tagx kOphthalmicAxialLengthQualityMetricTypeDescription =
      const Tagx(0x005c0101000c055d);
  static const Tagx kIntraocularLensCalculationsRightEyeSequence =
      const Tagx(0x001c01010016055e);
  static const Tagx kIntraocularLensCalculationsLeftEyeSequence =
      const Tagx(0x001c01010016055f);
  static const Tagx kReferencedOphthalmicAxialLengthMeasurementQCImageSequence =
      const Tagx(0x001c010100160560);
  static const Tagx kOphthalmicMappingDeviceType =
      const Tagx(0x001c010100050561);
  static const Tagx kAcquisitionMethodCodeSequence =
      const Tagx(0x001c010100160562);
  static const Tagx kAcquisitionMethodAlgorithmSequence =
      const Tagx(0x001c010100160563);
  static const Tagx kOphthalmicThicknessMapTypeCodeSequence =
      const Tagx(0x001c010100160564);
  static const Tagx kOphthalmicThicknessMappingNormalsSequence =
      const Tagx(0x001c010100160565);
  static const Tagx kRetinalThicknessDefinitionCodeSequence =
      const Tagx(0x001c010100160566);
  static const Tagx kPixelValueMappingToCodedConceptSequence =
      const Tagx(0x001c010100160567);
  static const Tagx kMappedPixelValue = const Tagx(0x001c0101001d0568);
  static const Tagx kPixelValueMappingExplanation =
      const Tagx(0x001c0101000c0569);
  static const Tagx kOphthalmicThicknessMapQualityThresholdSequence =
      const Tagx(0x001c01010016056a);
  static const Tagx kOphthalmicThicknessMapThresholdQualityRating =
      const Tagx(0x001c0101000a056b);
  static const Tagx kAnatomicStructureReferencePoint =
      const Tagx(0x001c0102000a056c);
  static const Tagx kRegistrationToLocalizerSequence =
      const Tagx(0x001c01010016056d);
  static const Tagx kRegisteredLocalizerUnits = const Tagx(0x001c01010005056e);
  static const Tagx kRegisteredLocalizerTopLeftHandCorner =
      const Tagx(0x001c0102000a056f);
  static const Tagx kRegisteredLocalizerBottomRightHandCorner =
      const Tagx(0x001c0102000a0570);
  static const Tagx kOphthalmicThicknessMapQualityRatingSequence =
      const Tagx(0x001c010100160571);
  static const Tagx kRelevantOPTAttributesSequence =
      const Tagx(0x001c010100160572);
  static const Tagx kVisualFieldHorizontalExtent =
      const Tagx(0x001c0101000a0573);
  static const Tagx kVisualFieldVerticalExtent = const Tagx(0x001c0101000a0574);
  static const Tagx kVisualFieldShape = const Tagx(0x001c010100050575);
  static const Tagx kScreeningTestModeCodeSequence =
      const Tagx(0x001c010100160576);
  static const Tagx kMaximumStimulusLuminance = const Tagx(0x001c0101000a0577);
  static const Tagx kBackgroundLuminance = const Tagx(0x001c0101000a0578);
  static const Tagx kStimulusColorCodeSequence = const Tagx(0x001c010100160579);
  static const Tagx kBackgroundIlluminationColorCodeSequence =
      const Tagx(0x001c01010016057a);
  static const Tagx kStimulusArea = const Tagx(0x001c0101000a057b);
  static const Tagx kStimulusPresentationTime = const Tagx(0x001c0101000a057c);
  static const Tagx kFixationSequence = const Tagx(0x001c01010016057d);
  static const Tagx kFixationMonitoringCodeSequence =
      const Tagx(0x001c01010016057e);
  static const Tagx kVisualFieldCatchTrialSequence =
      const Tagx(0x001c01010016057f);
  static const Tagx kFixationCheckedQuantity = const Tagx(0x001c0101001f0580);
  static const Tagx kPatientNotProperlyFixatedQuantity =
      const Tagx(0x001c0101001f0581);
  static const Tagx kPresentedVisualStimuliDataFlag =
      const Tagx(0x001c010100050582);
  static const Tagx kNumberOfVisualStimuli = const Tagx(0x001c0101001f0583);
  static const Tagx kExcessiveFixationLossesDataFlag =
      const Tagx(0x001c010100050584);
  static const Tagx kExcessiveFixationLosses = const Tagx(0x001c010100050585);
  static const Tagx kStimuliRetestingQuantity = const Tagx(0x001c0101001f0586);
  static const Tagx kCommentsOnPatientPerformanceOfVisualField =
      const Tagx(0x001c0101000d0587);
  static const Tagx kFalseNegativesEstimateFlag =
      const Tagx(0x001c010100050588);
  static const Tagx kFalseNegativesEstimate = const Tagx(0x001c0101000a0589);
  static const Tagx kNegativeCatchTrialsQuantity =
      const Tagx(0x001c0101001f058a);
  static const Tagx kFalseNegativesQuantity = const Tagx(0x001c0101001f058b);
  static const Tagx kExcessiveFalseNegativesDataFlag =
      const Tagx(0x001c01010005058c);
  static const Tagx kExcessiveFalseNegatives = const Tagx(0x001c01010005058d);
  static const Tagx kFalsePositivesEstimateFlag =
      const Tagx(0x001c01010005058e);
  static const Tagx kFalsePositivesEstimate = const Tagx(0x001c0101000a058f);
  static const Tagx kCatchTrialsDataFlag = const Tagx(0x001c010100050590);
  static const Tagx kPositiveCatchTrialsQuantity =
      const Tagx(0x001c0101001f0591);
  static const Tagx kTestPointNormalsDataFlag = const Tagx(0x001c010100050592);
  static const Tagx kTestPointNormalsSequence = const Tagx(0x001c010100160593);
  static const Tagx kGlobalDeviationProbabilityNormalsFlag =
      const Tagx(0x001c010100050594);
  static const Tagx kFalsePositivesQuantity = const Tagx(0x001c0101001f0595);
  static const Tagx kExcessiveFalsePositivesDataFlag =
      const Tagx(0x001c010100050596);
  static const Tagx kExcessiveFalsePositives = const Tagx(0x001c010100050597);
  static const Tagx kVisualFieldTestNormalsFlag =
      const Tagx(0x001c010100050598);
  static const Tagx kResultsNormalsSequence = const Tagx(0x001c010100160599);
  static const Tagx kAgeCorrectedSensitivityDeviationAlgorithmSequence =
      const Tagx(0x001c01010016059a);
  static const Tagx kGlobalDeviationFromNormal = const Tagx(0x001c0101000a059b);
  static const Tagx kGeneralizedDefectSensitivityDeviationAlgorithmSequence =
      const Tagx(0x001c01010016059c);
  static const Tagx kLocalizedDeviationFromNormal =
      const Tagx(0x001c0101000a059d);
  static const Tagx kPatientReliabilityIndicator =
      const Tagx(0x001c0101000c059e);
  static const Tagx kVisualFieldMeanSensitivity =
      const Tagx(0x001c0101000a059f);
  static const Tagx kGlobalDeviationProbability =
      const Tagx(0x001c0101000a05a0);
  static const Tagx kLocalDeviationProbabilityNormalsFlag =
      const Tagx(0x001c0101000505a1);
  static const Tagx kLocalizedDeviationProbability =
      const Tagx(0x001c0101000a05a2);
  static const Tagx kShortTermFluctuationCalculated =
      const Tagx(0x001c0101000505a3);
  static const Tagx kShortTermFluctuation = const Tagx(0x001c0101000a05a4);
  static const Tagx kShortTermFluctuationProbabilityCalculated =
      const Tagx(0x001c0101000505a5);
  static const Tagx kShortTermFluctuationProbability =
      const Tagx(0x001c0101000a05a6);
  static const Tagx kCorrectedLocalizedDeviationFromNormalCalculated =
      const Tagx(0x001c0101000505a7);
  static const Tagx kCorrectedLocalizedDeviationFromNormal =
      const Tagx(0x001c0101000a05a8);
  static const Tagx
      kCorrectedLocalizedDeviationFromNormalProbabilityCalculated =
      const Tagx(0x001c0101000505a9);
  static const Tagx kCorrectedLocalizedDeviationFromNormalProbability =
      const Tagx(0x001c0101000a05aa);
  static const Tagx kGlobalDeviationProbabilitySequence =
      const Tagx(0x001c0101001605ab);
  static const Tagx kLocalizedDeviationProbabilitySequence =
      const Tagx(0x001c0101001605ac);
  static const Tagx kFovealSensitivityMeasured = const Tagx(0x001c0101000505ad);
  static const Tagx kFovealSensitivity = const Tagx(0x001c0101000a05ae);
  static const Tagx kVisualFieldTestDuration = const Tagx(0x001c0101000a05af);
  static const Tagx kVisualFieldTestPointSequence =
      const Tagx(0x001c0101001605b0);
  static const Tagx kVisualFieldTestPointXCoordinate =
      const Tagx(0x001c0101000a05b1);
  static const Tagx kVisualFieldTestPointYCoordinate =
      const Tagx(0x001c0101000a05b2);
  static const Tagx kAgeCorrectedSensitivityDeviationValue =
      const Tagx(0x001c0101000a05b3);
  static const Tagx kStimulusResults = const Tagx(0x001c0101000505b4);
  static const Tagx kSensitivityValue = const Tagx(0x001c0101000a05b5);
  static const Tagx kRetestStimulusSeen = const Tagx(0x001c0101000505b6);
  static const Tagx kRetestSensitivityValue = const Tagx(0x001c0101000a05b7);
  static const Tagx kVisualFieldTestPointNormalsSequence =
      const Tagx(0x001c0101001605b8);
  static const Tagx kQuantifiedDefect = const Tagx(0x001c0101000a05b9);
  static const Tagx kAgeCorrectedSensitivityDeviationProbabilityValue =
      const Tagx(0x001c0101000a05ba);
  static const Tagx kGeneralizedDefectCorrectedSensitivityDeviationFlag =
      const Tagx(0x001c0101000505bb);
  static const Tagx kGeneralizedDefectCorrectedSensitivityDeviationValue =
      const Tagx(0x001c0101000a05bc);
  static const Tagx
      kGeneralizedDefectCorrectedSensitivityDeviationProbabilityValue =
      const Tagx(0x001c0101000a05bd);
  static const Tagx kMinimumSensitivityValue = const Tagx(0x001c0101000a05be);
  static const Tagx kBlindSpotLocalized = const Tagx(0x001c0101000505bf);
  static const Tagx kBlindSpotXCoordinate = const Tagx(0x001c0101000a05c0);
  static const Tagx kBlindSpotYCoordinate = const Tagx(0x001c0101000a05c1);
  static const Tagx kVisualAcuityMeasurementSequence =
      const Tagx(0x001c0101001605c2);
  static const Tagx kRefractiveParametersUsedOnPatientSequence =
      const Tagx(0x001c0101001605c3);
  static const Tagx kMeasurementLaterality = const Tagx(0x001c0101000505c4);
  static const Tagx kOphthalmicPatientClinicalInformationLeftEyeSequence =
      const Tagx(0x001c0101001605c5);
  static const Tagx kOphthalmicPatientClinicalInformationRightEyeSequence =
      const Tagx(0x001c0101001605c6);
  static const Tagx kFovealPointNormativeDataFlag =
      const Tagx(0x001c0101000505c7);
  static const Tagx kFovealPointProbabilityValue =
      const Tagx(0x001c0101000a05c8);
  static const Tagx kScreeningBaselineMeasured = const Tagx(0x001c0101000505c9);
  static const Tagx kScreeningBaselineMeasuredSequence =
      const Tagx(0x001c0101001605ca);
  static const Tagx kScreeningBaselineType = const Tagx(0x001c0101000505cb);
  static const Tagx kScreeningBaselineValue = const Tagx(0x001c0101000a05cc);
  static const Tagx kAlgorithmSource = const Tagx(0x001c0101000c05cd);
  static const Tagx kDataSetName = const Tagx(0x001c0101000c05ce);
  static const Tagx kDataSetVersion = const Tagx(0x001c0101000c05cf);
  static const Tagx kDataSetSource = const Tagx(0x001c0101000c05d0);
  static const Tagx kDataSetDescription = const Tagx(0x001c0101000c05d1);
  static const Tagx kVisualFieldTestReliabilityGlobalIndexSequence =
      const Tagx(0x001c0101001605d2);
  static const Tagx kVisualFieldGlobalResultsIndexSequence =
      const Tagx(0x001c0101001605d3);
  static const Tagx kDataObservationSequence = const Tagx(0x001c0101001605d4);
  static const Tagx kIndexNormalsFlag = const Tagx(0x001c0101000505d5);
  static const Tagx kIndexProbability = const Tagx(0x001c0101000a05d6);
  static const Tagx kIndexProbabilitySequence = const Tagx(0x001c0101001605d7);
  static const Tagx kSamplesPerPixel = const Tagx(0x001c0101001f05d8);
  static const Tagx kSamplesPerPixelUsed = const Tagx(0x001c0101001f05d9);
  static const Tagx kPhotometricInterpretation = const Tagx(0x001c0101000505da);
  static const Tagx kImageDimensions = const Tagx(0x005c0101001f05db);
  static const Tagx kPlanarConfiguration = const Tagx(0x001c0101001f05dc);
  static const Tagx kNumberOfFrames = const Tagx(0x001c0101000b05dd);
  static const Tagx kFrameIncrementPointer = const Tagx(0x001c01ff000305de);
  static const Tagx kFrameDimensionPointer = const Tagx(0x001c01ff000305df);
  static const Tagx kRows = const Tagx(0x001c0101001f05e0);
  static const Tagx kColumns = const Tagx(0x001c0101001f05e1);
  static const Tagx kPlanes = const Tagx(0x005c0101001f05e2);
  static const Tagx kUltrasoundColorDataPresent =
      const Tagx(0x001c0101001f05e3);
  static const Tagx kNoName1 = const Tagx(0x005c0100000005e4);
  static const Tagx kPixelSpacing = const Tagx(0x001c0102000705e5);
  static const Tagx kZoomFactor = const Tagx(0x001c0102000705e6);
  static const Tagx kZoomCenter = const Tagx(0x001c0102000705e7);
  static const Tagx kPixelAspectRatio = const Tagx(0x001c0102000b05e8);
  static const Tagx kImageFormat = const Tagx(0x005c0101000505e9);
  static const Tagx kManipulatedImage = const Tagx(0x005c01ff000c05ea);
  static const Tagx kCorrectedImage = const Tagx(0x001c01ff000505eb);
  static const Tagx kCompressionRecognitionCode =
      const Tagx(0x005c0101000c05ec);
  static const Tagx kCompressionCode = const Tagx(0x005c0101000505ed);
  static const Tagx kCompressionOriginator = const Tagx(0x005c0101001405ee);
  static const Tagx kCompressionLabel = const Tagx(0x005c0101000c05ef);
  static const Tagx kCompressionDescription = const Tagx(0x005c0101001405f0);
  static const Tagx kCompressionSequence = const Tagx(0x005c01ff000505f1);
  static const Tagx kCompressionStepPointers = const Tagx(0x005c01ff000305f2);
  static const Tagx kRepeatInterval = const Tagx(0x005c0101001f05f3);
  static const Tagx kBitsGrouped = const Tagx(0x005c0101001f05f4);
  static const Tagx kPerimeterTable = const Tagx(0x005c01ff001f05f5);
  static const Tagx kPerimeterValue = const Tagx(0x005c0101001d05f6);
  static const Tagx kPredictorRows = const Tagx(0x005c0101001f05f7);
  static const Tagx kPredictorColumns = const Tagx(0x005c0101001f05f8);
  static const Tagx kPredictorConstants = const Tagx(0x005c01ff001f05f9);
  static const Tagx kBlockedPixels = const Tagx(0x005c0101000505fa);
  static const Tagx kBlockRows = const Tagx(0x005c0101001f05fb);
  static const Tagx kBlockColumns = const Tagx(0x005c0101001f05fc);
  static const Tagx kRowOverlap = const Tagx(0x005c0101001f05fd);
  static const Tagx kColumnOverlap = const Tagx(0x005c0101001f05fe);
  static const Tagx kBitsAllocated = const Tagx(0x001c0101001f05ff);
  static const Tagx kBitsStored = const Tagx(0x001c0101001f0600);
  static const Tagx kHighBit = const Tagx(0x001c0101001f0601);
  static const Tagx kPixelRepresentation = const Tagx(0x001c0101001f0602);
  static const Tagx kSmallestValidPixelValue = const Tagx(0x005c0101001d0603);
  static const Tagx kLargestValidPixelValue = const Tagx(0x005c0101001d0604);
  static const Tagx kSmallestImagePixelValue = const Tagx(0x001c0101001d0605);
  static const Tagx kLargestImagePixelValue = const Tagx(0x001c0101001d0606);
  static const Tagx kSmallestPixelValueInSeries =
      const Tagx(0x001c0101001d0607);
  static const Tagx kLargestPixelValueInSeries = const Tagx(0x001c0101001d0608);
  static const Tagx kSmallestImagePixelValueInPlane =
      const Tagx(0x005c0101001d0609);
  static const Tagx kLargestImagePixelValueInPlane =
      const Tagx(0x005c0101001d060a);
  static const Tagx kPixelPaddingValue = const Tagx(0x001c0101001d060b);
  static const Tagx kPixelPaddingRangeLimit = const Tagx(0x001c0101001d060c);
  static const Tagx kImageLocation = const Tagx(0x005c0101001f060d);
  static const Tagx kQualityControlImage = const Tagx(0x001c01010005060e);
  static const Tagx kBurnedInAnnotation = const Tagx(0x001c01010005060f);
  static const Tagx kRecognizableVisualFeatures =
      const Tagx(0x001c010100050610);
  static const Tagx kLongitudinalTemporalInformationModified =
      const Tagx(0x001c010100050611);
  static const Tagx kReferencedColorPaletteInstanceUID =
      const Tagx(0x001c0101001b0612);
  static const Tagx kTransformLabel = const Tagx(0x005c0101000c0613);
  static const Tagx kTransformVersionNumber = const Tagx(0x005c0101000c0614);
  static const Tagx kNumberOfTransformSteps = const Tagx(0x005c0101001f0615);
  static const Tagx kSequenceOfCompressedData = const Tagx(0x005c01ff000c0616);
  static const Tagx kDetailsOfCoefficients = const Tagx(0x005c01ff00030617);
  static const Tagx kDCTLabel = const Tagx(0x005c0101000c0618);
  static const Tagx kDataBlockDescription = const Tagx(0x005c01ff00050619);
  static const Tagx kDataBlock = const Tagx(0x005c01ff0003061a);
  static const Tagx kNormalizationFactorFormat = const Tagx(0x005c0101001f061b);
  static const Tagx kZonalMapNumberFormat = const Tagx(0x005c0101001f061c);
  static const Tagx kZonalMapLocation = const Tagx(0x005c01ff0003061d);
  static const Tagx kZonalMapFormat = const Tagx(0x005c0101001f061e);
  static const Tagx kAdaptiveMapFormat = const Tagx(0x005c0101001f061f);
  static const Tagx kCodeNumberFormat = const Tagx(0x005c0101001f0620);
  static const Tagx kCodeLabel = const Tagx(0x005c01ff00050621);
  static const Tagx kNumberOfTables = const Tagx(0x005c0101001f0622);
  static const Tagx kCodeTableLocation = const Tagx(0x005c01ff00030623);
  static const Tagx kBitsForCodeWord = const Tagx(0x005c0101001f0624);
  static const Tagx kImageDataLocation = const Tagx(0x005c01ff00030625);
  static const Tagx kPixelSpacingCalibrationType =
      const Tagx(0x001c010100050626);
  static const Tagx kPixelSpacingCalibrationDescription =
      const Tagx(0x001c0101000c0627);
  static const Tagx kPixelIntensityRelationship =
      const Tagx(0x001c010100050628);
  static const Tagx kPixelIntensityRelationshipSign =
      const Tagx(0x001c010100170629);
  static const Tagx kWindowCenter = const Tagx(0x001c01ff0007062a);
  static const Tagx kWindowWidth = const Tagx(0x001c01ff0007062b);
  static const Tagx kRescaleIntercept = const Tagx(0x001c01010007062c);
  static const Tagx kRescaleSlope = const Tagx(0x001c01010007062d);
  static const Tagx kRescaleType = const Tagx(0x001c0101000c062e);
  static const Tagx kWindowCenterWidthExplanation =
      const Tagx(0x001c01ff000c062f);
  static const Tagx kVOILUTFunction = const Tagx(0x001c010100050630);
  static const Tagx kGrayScale = const Tagx(0x005c010100050631);
  static const Tagx kRecommendedViewingMode = const Tagx(0x001c010100050632);
  static const Tagx kGrayLookupTableDescriptor = const Tagx(0x005c0103001d0633);
  static const Tagx kRedPaletteColorLookupTableDescriptor =
      const Tagx(0x001c0103001d0634);
  static const Tagx kGreenPaletteColorLookupTableDescriptor =
      const Tagx(0x001c0103001d0635);
  static const Tagx kBluePaletteColorLookupTableDescriptor =
      const Tagx(0x001c0103001d0636);
  static const Tagx kAlphaPaletteColorLookupTableDescriptor =
      const Tagx(0x001c0103001f0637);
  static const Tagx kLargeRedPaletteColorLookupTableDescriptor =
      const Tagx(0x005c0104001d0638);
  static const Tagx kLargeGreenPaletteColorLookupTableDescriptor =
      const Tagx(0x005c0104001d0639);
  static const Tagx kLargeBluePaletteColorLookupTableDescriptor =
      const Tagx(0x005c0104001d063a);
  static const Tagx kPaletteColorLookupTableUID =
      const Tagx(0x001c0101001b063b);
  static const Tagx kGrayLookupTableData = const Tagx(0x005c01ff001d063c);
  static const Tagx kRedPaletteColorLookupTableData =
      const Tagx(0x001c01010012063d);
  static const Tagx kGreenPaletteColorLookupTableData =
      const Tagx(0x001c01010012063e);
  static const Tagx kBluePaletteColorLookupTableData =
      const Tagx(0x001c01010012063f);
  static const Tagx kAlphaPaletteColorLookupTableData =
      const Tagx(0x001c010100120640);
  static const Tagx kLargeRedPaletteColorLookupTableData =
      const Tagx(0x005c010100120641);
  static const Tagx kLargeGreenPaletteColorLookupTableData =
      const Tagx(0x005c010100120642);
  static const Tagx kLargeBluePaletteColorLookupTableData =
      const Tagx(0x005c010100120643);
  static const Tagx kLargePaletteColorLookupTableUID =
      const Tagx(0x005c0101001b0644);
  static const Tagx kSegmentedRedPaletteColorLookupTableData =
      const Tagx(0x001c010100120645);
  static const Tagx kSegmentedGreenPaletteColorLookupTableData =
      const Tagx(0x001c010100120646);
  static const Tagx kSegmentedBluePaletteColorLookupTableData =
      const Tagx(0x001c010100120647);
  static const Tagx kBreastImplantPresent = const Tagx(0x001c010100050648);
  static const Tagx kPartialView = const Tagx(0x001c010100050649);
  static const Tagx kPartialViewDescription = const Tagx(0x001c01010018064a);
  static const Tagx kPartialViewCodeSequence = const Tagx(0x001c01010016064b);
  static const Tagx kSpatialLocationsPreserved = const Tagx(0x001c01010005064c);
  static const Tagx kDataFrameAssignmentSequence =
      const Tagx(0x001c01010016064d);
  static const Tagx kDataPathAssignment = const Tagx(0x001c01010005064e);
  static const Tagx kBitsMappedToColorLookupTable =
      const Tagx(0x001c0101001f064f);
  static const Tagx kBlendingLUT1Sequence = const Tagx(0x001c010100160650);
  static const Tagx kBlendingLUT1TransferFunction =
      const Tagx(0x001c010100050651);
  static const Tagx kBlendingWeightConstant = const Tagx(0x001c010100090652);
  static const Tagx kBlendingLookupTableDescriptor =
      const Tagx(0x001c0103001f0653);
  static const Tagx kBlendingLookupTableData = const Tagx(0x001c010100120654);
  static const Tagx kEnhancedPaletteColorLookupTableSequence =
      const Tagx(0x001c010100160655);
  static const Tagx kBlendingLUT2Sequence = const Tagx(0x001c010100160656);
  static const Tagx kBlendingLUT2TransferFunction =
      const Tagx(0x001c010100050657);
  static const Tagx kDataPathID = const Tagx(0x001c010100050658);
  static const Tagx kRGBLUTTransferFunction = const Tagx(0x001c010100050659);
  static const Tagx kAlphaLUTTransferFunction = const Tagx(0x001c01010005065a);
  static const Tagx kICCProfile = const Tagx(0x001c0101000e065b);
  static const Tagx kLossyImageCompression = const Tagx(0x001c01010005065c);
  static const Tagx kLossyImageCompressionRatio =
      const Tagx(0x001c01ff0007065d);
  static const Tagx kLossyImageCompressionMethod =
      const Tagx(0x001c01ff0005065e);
  static const Tagx kModalityLUTSequence = const Tagx(0x001c01010016065f);
  static const Tagx kLUTDescriptor = const Tagx(0x001c0103001d0660);
  static const Tagx kLUTExplanation = const Tagx(0x001c0101000c0661);
  static const Tagx kModalityLUTType = const Tagx(0x001c0101000c0662);
  static const Tagx kLUTData = const Tagx(0x001c01ff001d0663);
  static const Tagx kVOILUTSequence = const Tagx(0x001c010100160664);
  static const Tagx kSoftcopyVOILUTSequence = const Tagx(0x001c010100160665);
  static const Tagx kImagePresentationComments = const Tagx(0x005c0101000d0666);
  static const Tagx kBiPlaneAcquisitionSequence =
      const Tagx(0x005c010100160667);
  static const Tagx kRepresentativeFrameNumber = const Tagx(0x001c0101001f0668);
  static const Tagx kFrameNumbersOfInterest = const Tagx(0x001c01ff001f0669);
  static const Tagx kFrameOfInterestDescription =
      const Tagx(0x001c01ff000c066a);
  static const Tagx kFrameOfInterestType = const Tagx(0x001c01ff0005066b);
  static const Tagx kMaskPointers = const Tagx(0x005c01ff001f066c);
  static const Tagx kRWavePointer = const Tagx(0x001c01ff001f066d);
  static const Tagx kMaskSubtractionSequence = const Tagx(0x001c01010016066e);
  static const Tagx kMaskOperation = const Tagx(0x001c01010005066f);
  static const Tagx kApplicableFrameRange = const Tagx(0x001c02ff001f0670);
  static const Tagx kMaskFrameNumbers = const Tagx(0x001c01ff001f0671);
  static const Tagx kContrastFrameAveraging = const Tagx(0x001c0101001f0672);
  static const Tagx kMaskSubPixelShift = const Tagx(0x001c0102000a0673);
  static const Tagx kTIDOffset = const Tagx(0x001c010100170674);
  static const Tagx kMaskOperationExplanation = const Tagx(0x001c010100180675);
  static const Tagx kPixelDataProviderURL = const Tagx(0x001c0101001e0676);
  static const Tagx kDataPointRows = const Tagx(0x001c0101001c0677);
  static const Tagx kDataPointColumns = const Tagx(0x001c0101001c0678);
  static const Tagx kSignalDomainColumns = const Tagx(0x001c010100050679);
  static const Tagx kLargestMonochromePixelValue =
      const Tagx(0x005c0101001f067a);
  static const Tagx kDataRepresentation = const Tagx(0x001c01010005067b);
  static const Tagx kPixelMeasuresSequence = const Tagx(0x001c01010016067c);
  static const Tagx kFrameVOILUTSequence = const Tagx(0x001c01010016067d);
  static const Tagx kPixelValueTransformationSequence =
      const Tagx(0x001c01010016067e);
  static const Tagx kSignalDomainRows = const Tagx(0x001c01010005067f);
  static const Tagx kDisplayFilterPercentage = const Tagx(0x001c0101000a0680);
  static const Tagx kFramePixelShiftSequence = const Tagx(0x001c010100160681);
  static const Tagx kSubtractionItemID = const Tagx(0x001c0101001f0682);
  static const Tagx kPixelIntensityRelationshipLUTSequence =
      const Tagx(0x001c010100160683);
  static const Tagx kFramePixelDataPropertiesSequence =
      const Tagx(0x001c010100160684);
  static const Tagx kGeometricalProperties = const Tagx(0x001c010100050685);
  static const Tagx kGeometricMaximumDistortion =
      const Tagx(0x001c0101000a0686);
  static const Tagx kImageProcessingApplied = const Tagx(0x001c01ff00050687);
  static const Tagx kMaskSelectionMode = const Tagx(0x001c010100050688);
  static const Tagx kLUTFunction = const Tagx(0x001c010100050689);
  static const Tagx kMaskVisibilityPercentage = const Tagx(0x001c0101000a068a);
  static const Tagx kPixelShiftSequence = const Tagx(0x001c01010016068b);
  static const Tagx kRegionPixelShiftSequence = const Tagx(0x001c01010016068c);
  static const Tagx kVerticesOfTheRegion = const Tagx(0x001c02ff0017068d);
  static const Tagx kMultiFramePresentationSequence =
      const Tagx(0x001c01010016068e);
  static const Tagx kPixelShiftFrameRange = const Tagx(0x001c02ff001f068f);
  static const Tagx kLUTFrameRange = const Tagx(0x001c02ff001f0690);
  static const Tagx kImageToEquipmentMappingMatrix =
      const Tagx(0x001c011000070691);
  static const Tagx kEquipmentCoordinateSystemIdentification =
      const Tagx(0x001c010100050692);
  static const Tagx kStudyStatusID = const Tagx(0x005c010100050693);
  static const Tagx kStudyPriorityID = const Tagx(0x005c010100050694);
  static const Tagx kStudyIDIssuer = const Tagx(0x005c0101000c0695);
  static const Tagx kStudyVerifiedDate = const Tagx(0x005c010100060696);
  static const Tagx kStudyVerifiedTime = const Tagx(0x005c010100190697);
  static const Tagx kStudyReadDate = const Tagx(0x005c010100060698);
  static const Tagx kStudyReadTime = const Tagx(0x005c010100190699);
  static const Tagx kScheduledStudyStartDate = const Tagx(0x005c01010006069a);
  static const Tagx kScheduledStudyStartTime = const Tagx(0x005c01010019069b);
  static const Tagx kScheduledStudyStopDate = const Tagx(0x005c01010006069c);
  static const Tagx kScheduledStudyStopTime = const Tagx(0x005c01010019069d);
  static const Tagx kScheduledStudyLocation = const Tagx(0x005c0101000c069e);
  static const Tagx kScheduledStudyLocationAETitle =
      const Tagx(0x005c01ff0001069f);
  static const Tagx kReasonForStudy = const Tagx(0x005c0101000c06a0);
  static const Tagx kRequestingPhysicianIdentificationSequence =
      const Tagx(0x001c0101001606a1);
  static const Tagx kRequestingPhysician = const Tagx(0x001c0101001306a2);
  static const Tagx kRequestingService = const Tagx(0x001c0101000c06a3);
  static const Tagx kRequestingServiceCodeSequence =
      const Tagx(0x001c0101001606a4);
  static const Tagx kStudyArrivalDate = const Tagx(0x005c0101000606a5);
  static const Tagx kStudyArrivalTime = const Tagx(0x005c0101001906a6);
  static const Tagx kStudyCompletionDate = const Tagx(0x005c0101000606a7);
  static const Tagx kStudyCompletionTime = const Tagx(0x005c0101001906a8);
  static const Tagx kStudyComponentStatusID = const Tagx(0x005c0101000506a9);
  static const Tagx kRequestedProcedureDescription =
      const Tagx(0x001c0101000c06aa);
  static const Tagx kRequestedProcedureCodeSequence =
      const Tagx(0x001c0101001606ab);
  static const Tagx kRequestedContrastAgent = const Tagx(0x001c0101000c06ac);
  static const Tagx kStudyComments = const Tagx(0x005c0101000d06ad);
  static const Tagx kReferencedPatientAliasSequence =
      const Tagx(0x001c0101001606ae);
  static const Tagx kVisitStatusID = const Tagx(0x001c0101000506af);
  static const Tagx kAdmissionID = const Tagx(0x001c0101000c06b0);
  static const Tagx kIssuerOfAdmissionID = const Tagx(0x005c0101000c06b1);
  static const Tagx kIssuerOfAdmissionIDSequence =
      const Tagx(0x001c0101001606b2);
  static const Tagx kRouteOfAdmissions = const Tagx(0x001c0101000c06b3);
  static const Tagx kScheduledAdmissionDate = const Tagx(0x005c0101000606b4);
  static const Tagx kScheduledAdmissionTime = const Tagx(0x005c0101001906b5);
  static const Tagx kScheduledDischargeDate = const Tagx(0x005c0101000606b6);
  static const Tagx kScheduledDischargeTime = const Tagx(0x005c0101001906b7);
  static const Tagx kScheduledPatientInstitutionResidence =
      const Tagx(0x005c0101000c06b8);
  static const Tagx kAdmittingDate = const Tagx(0x001c0101000606b9);
  static const Tagx kAdmittingTime = const Tagx(0x001c0101001906ba);
  static const Tagx kDischargeDate = const Tagx(0x005c0101000606bb);
  static const Tagx kDischargeTime = const Tagx(0x005c0101001906bc);
  static const Tagx kDischargeDiagnosisDescription =
      const Tagx(0x005c0101000c06bd);
  static const Tagx kDischargeDiagnosisCodeSequence =
      const Tagx(0x005c0101001606be);
  static const Tagx kSpecialNeeds = const Tagx(0x001c0101000c06bf);
  static const Tagx kServiceEpisodeID = const Tagx(0x001c0101000c06c0);
  static const Tagx kIssuerOfServiceEpisodeID = const Tagx(0x005c0101000c06c1);
  static const Tagx kServiceEpisodeDescription = const Tagx(0x001c0101000c06c2);
  static const Tagx kIssuerOfServiceEpisodeIDSequence =
      const Tagx(0x001c0101001606c3);
  static const Tagx kPertinentDocumentsSequence =
      const Tagx(0x001c0101001606c4);
  static const Tagx kCurrentPatientLocation = const Tagx(0x001c0101000c06c5);
  static const Tagx kPatientInstitutionResidence =
      const Tagx(0x001c0101000c06c6);
  static const Tagx kPatientState = const Tagx(0x001c0101000c06c7);
  static const Tagx kPatientClinicalTrialParticipationSequence =
      const Tagx(0x001c0101001606c8);
  static const Tagx kVisitComments = const Tagx(0x001c0101000d06c9);
  static const Tagx kWaveformOriginality = const Tagx(0x001c0101000506ca);
  static const Tagx kNumberOfWaveformChannels = const Tagx(0x001c0101001f06cb);
  static const Tagx kNumberOfWaveformSamples = const Tagx(0x001c0101001c06cc);
  static const Tagx kSamplingFrequency = const Tagx(0x001c0101000706cd);
  static const Tagx kMultiplexGroupLabel = const Tagx(0x001c0101001406ce);
  static const Tagx kChannelDefinitionSequence = const Tagx(0x001c0101001606cf);
  static const Tagx kWaveformChannelNumber = const Tagx(0x001c0101000b06d0);
  static const Tagx kChannelLabel = const Tagx(0x001c0101001406d1);
  static const Tagx kChannelStatus = const Tagx(0x001c01ff000506d2);
  static const Tagx kChannelSourceSequence = const Tagx(0x001c0101001606d3);
  static const Tagx kChannelSourceModifiersSequence =
      const Tagx(0x001c0101001606d4);
  static const Tagx kSourceWaveformSequence = const Tagx(0x001c0101001606d5);
  static const Tagx kChannelDerivationDescription =
      const Tagx(0x001c0101000c06d6);
  static const Tagx kChannelSensitivity = const Tagx(0x001c0101000706d7);
  static const Tagx kChannelSensitivityUnitsSequence =
      const Tagx(0x001c0101001606d8);
  static const Tagx kChannelSensitivityCorrectionFactor =
      const Tagx(0x001c0101000706d9);
  static const Tagx kChannelBaseline = const Tagx(0x001c0101000706da);
  static const Tagx kChannelTimeSkew = const Tagx(0x001c0101000706db);
  static const Tagx kChannelSampleSkew = const Tagx(0x001c0101000706dc);
  static const Tagx kChannelOffset = const Tagx(0x001c0101000706dd);
  static const Tagx kWaveformBitsStored = const Tagx(0x001c0101001f06de);
  static const Tagx kFilterLowFrequency = const Tagx(0x001c0101000706df);
  static const Tagx kFilterHighFrequency = const Tagx(0x001c0101000706e0);
  static const Tagx kNotchFilterFrequency = const Tagx(0x001c0101000706e1);
  static const Tagx kNotchFilterBandwidth = const Tagx(0x001c0101000706e2);
  static const Tagx kWaveformDataDisplayScale = const Tagx(0x001c0101000a06e3);
  static const Tagx kWaveformDisplayBackgroundCIELabValue =
      const Tagx(0x001c0103001f06e4);
  static const Tagx kWaveformPresentationGroupSequence =
      const Tagx(0x001c0101001606e5);
  static const Tagx kPresentationGroupNumber = const Tagx(0x001c0101001f06e6);
  static const Tagx kChannelDisplaySequence = const Tagx(0x001c0101001606e7);
  static const Tagx kChannelRecommendedDisplayCIELabValue =
      const Tagx(0x001c0103001f06e8);
  static const Tagx kChannelPosition = const Tagx(0x001c0101000a06e9);
  static const Tagx kDisplayShadingFlag = const Tagx(0x001c0101000506ea);
  static const Tagx kFractionalChannelDisplayScale =
      const Tagx(0x001c0101000a06eb);
  static const Tagx kAbsoluteChannelDisplayScale =
      const Tagx(0x001c0101000a06ec);
  static const Tagx kMultiplexedAudioChannelsDescriptionCodeSequence =
      const Tagx(0x001c0101001606ed);
  static const Tagx kChannelIdentificationCode = const Tagx(0x001c0101000b06ee);
  static const Tagx kChannelMode = const Tagx(0x001c0101000506ef);
  static const Tagx kScheduledStationAETitle = const Tagx(0x001c01ff000106f0);
  static const Tagx kScheduledProcedureStepStartDate =
      const Tagx(0x001c0101000606f1);
  static const Tagx kScheduledProcedureStepStartTime =
      const Tagx(0x001c0101001906f2);
  static const Tagx kScheduledProcedureStepEndDate =
      const Tagx(0x001c0101000606f3);
  static const Tagx kScheduledProcedureStepEndTime =
      const Tagx(0x001c0101001906f4);
  static const Tagx kScheduledPerformingPhysicianName =
      const Tagx(0x001c0101001306f5);
  static const Tagx kScheduledProcedureStepDescription =
      const Tagx(0x001c0101000c06f6);
  static const Tagx kScheduledProtocolCodeSequence =
      const Tagx(0x001c0101001606f7);
  static const Tagx kScheduledProcedureStepID = const Tagx(0x001c0101001406f8);
  static const Tagx kStageCodeSequence = const Tagx(0x001c0101001606f9);
  static const Tagx kScheduledPerformingPhysicianIdentificationSequence =
      const Tagx(0x001c0101001606fa);
  static const Tagx kScheduledStationName = const Tagx(0x001c01ff001406fb);
  static const Tagx kScheduledProcedureStepLocation =
      const Tagx(0x001c0101001406fc);
  static const Tagx kPreMedication = const Tagx(0x001c0101000c06fd);
  static const Tagx kScheduledProcedureStepStatus =
      const Tagx(0x001c0101000506fe);
  static const Tagx kOrderPlacerIdentifierSequence =
      const Tagx(0x001c0101001606ff);
  static const Tagx kOrderFillerIdentifierSequence =
      const Tagx(0x001c010100160700);
  static const Tagx kLocalNamespaceEntityID = const Tagx(0x001c010100200701);
  static const Tagx kUniversalEntityID = const Tagx(0x001c010100200702);
  static const Tagx kUniversalEntityIDType = const Tagx(0x001c010100050703);
  static const Tagx kIdentifierTypeCode = const Tagx(0x001c010100050704);
  static const Tagx kAssigningFacilitySequence = const Tagx(0x001c010100160705);
  static const Tagx kAssigningJurisdictionCodeSequence =
      const Tagx(0x001c010100160706);
  static const Tagx kAssigningAgencyOrDepartmentCodeSequence =
      const Tagx(0x001c010100160707);
  static const Tagx kScheduledProcedureStepSequence =
      const Tagx(0x001c010100160708);
  static const Tagx kReferencedNonImageCompositeSOPInstanceSequence =
      const Tagx(0x001c010100160709);
  static const Tagx kPerformedStationAETitle = const Tagx(0x001c01010001070a);
  static const Tagx kPerformedStationName = const Tagx(0x001c01010014070b);
  static const Tagx kPerformedLocation = const Tagx(0x001c01010014070c);
  static const Tagx kPerformedProcedureStepStartDate =
      const Tagx(0x001c01010006070d);
  static const Tagx kPerformedProcedureStepStartTime =
      const Tagx(0x001c01010019070e);
  static const Tagx kPerformedProcedureStepEndDate =
      const Tagx(0x001c01010006070f);
  static const Tagx kPerformedProcedureStepEndTime =
      const Tagx(0x001c010100190710);
  static const Tagx kPerformedProcedureStepStatus =
      const Tagx(0x001c010100050711);
  static const Tagx kPerformedProcedureStepID = const Tagx(0x001c010100140712);
  static const Tagx kPerformedProcedureStepDescription =
      const Tagx(0x001c0101000c0713);
  static const Tagx kPerformedProcedureTypeDescription =
      const Tagx(0x001c0101000c0714);
  static const Tagx kPerformedProtocolCodeSequence =
      const Tagx(0x001c010100160715);
  static const Tagx kPerformedProtocolType = const Tagx(0x001c010100050716);
  static const Tagx kScheduledStepAttributesSequence =
      const Tagx(0x001c010100160717);
  static const Tagx kRequestAttributesSequence = const Tagx(0x001c010100160718);
  static const Tagx kCommentsOnThePerformedProcedureStep =
      const Tagx(0x001c010100180719);
  static const Tagx kPerformedProcedureStepDiscontinuationReasonCodeSequence =
      const Tagx(0x001c01010016071a);
  static const Tagx kQuantitySequence = const Tagx(0x001c01010016071b);
  static const Tagx kQuantity = const Tagx(0x001c01010007071c);
  static const Tagx kMeasuringUnitsSequence = const Tagx(0x001c01010016071d);
  static const Tagx kBillingItemSequence = const Tagx(0x001c01010016071e);
  static const Tagx kTotalTimeOfFluoroscopy = const Tagx(0x001c0101001f071f);
  static const Tagx kTotalNumberOfExposures = const Tagx(0x001c0101001f0720);
  static const Tagx kEntranceDose = const Tagx(0x001c0101001f0721);
  static const Tagx kExposedArea = const Tagx(0x001c0102001f0722);
  static const Tagx kDistanceSourceToEntrance = const Tagx(0x001c010100070723);
  static const Tagx kDistanceSourceToSupport = const Tagx(0x005c010100070724);
  static const Tagx kExposureDoseSequence = const Tagx(0x001c010100160725);
  static const Tagx kCommentsOnRadiationDose = const Tagx(0x001c010100180726);
  static const Tagx kXRayOutput = const Tagx(0x001c010100070727);
  static const Tagx kHalfValueLayer = const Tagx(0x001c010100070728);
  static const Tagx kOrganDose = const Tagx(0x001c010100070729);
  static const Tagx kOrganExposed = const Tagx(0x001c01010005072a);
  static const Tagx kBillingProcedureStepSequence =
      const Tagx(0x001c01010016072b);
  static const Tagx kFilmConsumptionSequence = const Tagx(0x001c01010016072c);
  static const Tagx kBillingSuppliesAndDevicesSequence =
      const Tagx(0x001c01010016072d);
  static const Tagx kReferencedProcedureStepSequence =
      const Tagx(0x005c01010016072e);
  static const Tagx kPerformedSeriesSequence = const Tagx(0x001c01010016072f);
  static const Tagx kCommentsOnTheScheduledProcedureStep =
      const Tagx(0x001c0101000d0730);
  static const Tagx kProtocolContextSequence = const Tagx(0x001c010100160731);
  static const Tagx kContentItemModifierSequence =
      const Tagx(0x001c010100160732);
  static const Tagx kScheduledSpecimenSequence = const Tagx(0x001c010100160733);
  static const Tagx kSpecimenAccessionNumber = const Tagx(0x005c0101000c0734);
  static const Tagx kContainerIdentifier = const Tagx(0x001c0101000c0735);
  static const Tagx kIssuerOfTheContainerIdentifierSequence =
      const Tagx(0x001c010100160736);
  static const Tagx kAlternateContainerIdentifierSequence =
      const Tagx(0x001c010100160737);
  static const Tagx kContainerTypeCodeSequence = const Tagx(0x001c010100160738);
  static const Tagx kContainerDescription = const Tagx(0x001c0101000c0739);
  static const Tagx kContainerComponentSequence =
      const Tagx(0x001c01010016073a);
  static const Tagx kSpecimenSequence = const Tagx(0x005c01010016073b);
  static const Tagx kSpecimenIdentifier = const Tagx(0x001c0101000c073c);
  static const Tagx kSpecimenDescriptionSequenceTrial =
      const Tagx(0x005c01010016073d);
  static const Tagx kSpecimenDescriptionTrial = const Tagx(0x005c01010018073e);
  static const Tagx kSpecimenUID = const Tagx(0x001c0101001b073f);
  static const Tagx kAcquisitionContextSequence =
      const Tagx(0x001c010100160740);
  static const Tagx kAcquisitionContextDescription =
      const Tagx(0x001c010100180741);
  static const Tagx kSpecimenTypeCodeSequence = const Tagx(0x001c010100160742);
  static const Tagx kSpecimenDescriptionSequence =
      const Tagx(0x001c010100160743);
  static const Tagx kIssuerOfTheSpecimenIdentifierSequence =
      const Tagx(0x001c010100160744);
  static const Tagx kSpecimenShortDescription = const Tagx(0x001c0101000c0745);
  static const Tagx kSpecimenDetailedDescription =
      const Tagx(0x001c010100200746);
  static const Tagx kSpecimenPreparationSequence =
      const Tagx(0x001c010100160747);
  static const Tagx kSpecimenPreparationStepContentItemSequence =
      const Tagx(0x001c010100160748);
  static const Tagx kSpecimenLocalizationContentItemSequence =
      const Tagx(0x001c010100160749);
  static const Tagx kSlideIdentifier = const Tagx(0x005c0101000c074a);
  static const Tagx kImageCenterPointCoordinatesSequence =
      const Tagx(0x001c01010016074b);
  static const Tagx kXOffsetInSlideCoordinateSystem =
      const Tagx(0x001c01010007074c);
  static const Tagx kYOffsetInSlideCoordinateSystem =
      const Tagx(0x001c01010007074d);
  static const Tagx kZOffsetInSlideCoordinateSystem =
      const Tagx(0x001c01010007074e);
  static const Tagx kPixelSpacingSequence = const Tagx(0x005c01010016074f);
  static const Tagx kCoordinateSystemAxisCodeSequence =
      const Tagx(0x005c010100160750);
  static const Tagx kMeasurementUnitsCodeSequence =
      const Tagx(0x001c010100160751);
  static const Tagx kVitalStainCodeSequenceTrial =
      const Tagx(0x005c010100160752);
  static const Tagx kRequestedProcedureID = const Tagx(0x001c010100140753);
  static const Tagx kReasonForTheRequestedProcedure =
      const Tagx(0x001c0101000c0754);
  static const Tagx kRequestedProcedurePriority =
      const Tagx(0x001c010100140755);
  static const Tagx kPatientTransportArrangements =
      const Tagx(0x001c0101000c0756);
  static const Tagx kRequestedProcedureLocation =
      const Tagx(0x001c0101000c0757);
  static const Tagx kPlacerOrderNumberProcedure =
      const Tagx(0x005c010100140758);
  static const Tagx kFillerOrderNumberProcedure =
      const Tagx(0x005c010100140759);
  static const Tagx kConfidentialityCode = const Tagx(0x001c0101000c075a);
  static const Tagx kReportingPriority = const Tagx(0x001c01010014075b);
  static const Tagx kReasonForRequestedProcedureCodeSequence =
      const Tagx(0x001c01010016075c);
  static const Tagx kNamesOfIntendedRecipientsOfResults =
      const Tagx(0x001c01ff0013075d);
  static const Tagx kIntendedRecipientsOfResultsIdentificationSequence =
      const Tagx(0x001c01010016075e);
  static const Tagx kReasonForPerformedProcedureCodeSequence =
      const Tagx(0x001c01010016075f);
  static const Tagx kRequestedProcedureDescriptionTrial =
      const Tagx(0x005c0101000c0760);
  static const Tagx kPersonIdentificationCodeSequence =
      const Tagx(0x001c010100160761);
  static const Tagx kPersonAddress = const Tagx(0x001c010100180762);
  static const Tagx kPersonTelephoneNumbers = const Tagx(0x001c01ff000c0763);
  static const Tagx kRequestedProcedureComments =
      const Tagx(0x001c0101000d0764);
  static const Tagx kReasonForTheImagingServiceRequest =
      const Tagx(0x005c0101000c0765);
  static const Tagx kIssueDateOfImagingServiceRequest =
      const Tagx(0x001c010100060766);
  static const Tagx kIssueTimeOfImagingServiceRequest =
      const Tagx(0x001c010100190767);
  static const Tagx kPlacerOrderNumberImagingServiceRequestRetired =
      const Tagx(0x005c010100140768);
  static const Tagx kFillerOrderNumberImagingServiceRequestRetired =
      const Tagx(0x005c010100140769);
  static const Tagx kOrderEnteredBy = const Tagx(0x001c01010013076a);
  static const Tagx kOrderEntererLocation = const Tagx(0x001c01010014076b);
  static const Tagx kOrderCallbackPhoneNumber = const Tagx(0x001c01010014076c);
  static const Tagx kPlacerOrderNumberImagingServiceRequest =
      const Tagx(0x001c0101000c076d);
  static const Tagx kFillerOrderNumberImagingServiceRequest =
      const Tagx(0x001c0101000c076e);
  static const Tagx kImagingServiceRequestComments =
      const Tagx(0x001c0101000d076f);
  static const Tagx kConfidentialityConstraintOnPatientDataDescription =
      const Tagx(0x001c0101000c0770);
  static const Tagx kGeneralPurposeScheduledProcedureStepStatus =
      const Tagx(0x005c010100050771);
  static const Tagx kGeneralPurposePerformedProcedureStepStatus =
      const Tagx(0x005c010100050772);
  static const Tagx kGeneralPurposeScheduledProcedureStepPriority =
      const Tagx(0x005c010100050773);
  static const Tagx kScheduledProcessingApplicationsCodeSequence =
      const Tagx(0x005c010100160774);
  static const Tagx kScheduledProcedureStepStartDateTime =
      const Tagx(0x005c010100080775);
  static const Tagx kMultipleCopiesFlag = const Tagx(0x005c010100050776);
  static const Tagx kPerformedProcessingApplicationsCodeSequence =
      const Tagx(0x001c010100160777);
  static const Tagx kHumanPerformerCodeSequence =
      const Tagx(0x001c010100160778);
  static const Tagx kScheduledProcedureStepModificationDateTime =
      const Tagx(0x001c010100080779);
  static const Tagx kExpectedCompletionDateTime =
      const Tagx(0x001c01010008077a);
  static const Tagx kResultingGeneralPurposePerformedProcedureStepsSequence =
      const Tagx(0x005c01010016077b);
  static const Tagx kReferencedGeneralPurposeScheduledProcedureStepSequence =
      const Tagx(0x005c01010016077c);
  static const Tagx kScheduledWorkitemCodeSequence =
      const Tagx(0x001c01010016077d);
  static const Tagx kPerformedWorkitemCodeSequence =
      const Tagx(0x001c01010016077e);
  static const Tagx kInputAvailabilityFlag = const Tagx(0x001c01010005077f);
  static const Tagx kInputInformationSequence = const Tagx(0x001c010100160780);
  static const Tagx kRelevantInformationSequence =
      const Tagx(0x005c010100160781);
  static const Tagx
      kReferencedGeneralPurposeScheduledProcedureStepTransactionUID =
      const Tagx(0x005c0101001b0782);
  static const Tagx kScheduledStationNameCodeSequence =
      const Tagx(0x001c010100160783);
  static const Tagx kScheduledStationClassCodeSequence =
      const Tagx(0x001c010100160784);
  static const Tagx kScheduledStationGeographicLocationCodeSequence =
      const Tagx(0x001c010100160785);
  static const Tagx kPerformedStationNameCodeSequence =
      const Tagx(0x001c010100160786);
  static const Tagx kPerformedStationClassCodeSequence =
      const Tagx(0x001c010100160787);
  static const Tagx kPerformedStationGeographicLocationCodeSequence =
      const Tagx(0x001c010100160788);
  static const Tagx kRequestedSubsequentWorkitemCodeSequence =
      const Tagx(0x005c010100160789);
  static const Tagx kNonDICOMOutputCodeSequence =
      const Tagx(0x005c01010016078a);
  static const Tagx kOutputInformationSequence = const Tagx(0x001c01010016078b);
  static const Tagx kScheduledHumanPerformersSequence =
      const Tagx(0x001c01010016078c);
  static const Tagx kActualHumanPerformersSequence =
      const Tagx(0x001c01010016078d);
  static const Tagx kHumanPerformerOrganization =
      const Tagx(0x001c0101000c078e);
  static const Tagx kHumanPerformerName = const Tagx(0x001c01010013078f);
  static const Tagx kRawDataHandling = const Tagx(0x001c010100050790);
  static const Tagx kInputReadinessState = const Tagx(0x001c010100050791);
  static const Tagx kPerformedProcedureStepStartDateTime =
      const Tagx(0x001c010100080792);
  static const Tagx kPerformedProcedureStepEndDateTime =
      const Tagx(0x001c010100080793);
  static const Tagx kProcedureStepCancellationDateTime =
      const Tagx(0x001c010100080794);
  static const Tagx kEntranceDoseInmGy = const Tagx(0x001c010100070795);
  static const Tagx kReferencedImageRealWorldValueMappingSequence =
      const Tagx(0x001c010100160796);
  static const Tagx kRealWorldValueMappingSequence =
      const Tagx(0x001c010100160797);
  static const Tagx kPixelValueMappingCodeSequence =
      const Tagx(0x001c010100160798);
  static const Tagx kLUTLabel = const Tagx(0x001c010100140799);
  static const Tagx kRealWorldValueLastValueMapped =
      const Tagx(0x001c0101001d079a);
  static const Tagx kRealWorldValueLUTData = const Tagx(0x001c01ff0009079b);
  static const Tagx kRealWorldValueFirstValueMapped =
      const Tagx(0x001c0101001d079c);
  static const Tagx kRealWorldValueIntercept = const Tagx(0x001c01010009079d);
  static const Tagx kRealWorldValueSlope = const Tagx(0x001c01010009079e);
  static const Tagx kFindingsFlagTrial = const Tagx(0x005c01010005079f);
  static const Tagx kRelationshipType = const Tagx(0x001c0101000507a0);
  static const Tagx kFindingsSequenceTrial = const Tagx(0x005c0101001607a1);
  static const Tagx kFindingsGroupUIDTrial = const Tagx(0x005c0101001b07a2);
  static const Tagx kReferencedFindingsGroupUIDTrial =
      const Tagx(0x005c0101001b07a3);
  static const Tagx kFindingsGroupRecordingDateTrial =
      const Tagx(0x005c0101000607a4);
  static const Tagx kFindingsGroupRecordingTimeTrial =
      const Tagx(0x005c0101001907a5);
  static const Tagx kFindingsSourceCategoryCodeSequenceTrial =
      const Tagx(0x005c0101001607a6);
  static const Tagx kVerifyingOrganization = const Tagx(0x001c0101000c07a7);
  static const Tagx kDocumentingOrganizationIdentifierCodeSequenceTrial =
      const Tagx(0x005c0101001607a8);
  static const Tagx kVerificationDateTime = const Tagx(0x001c0101000807a9);
  static const Tagx kObservationDateTime = const Tagx(0x001c0101000807aa);
  static const Tagx kValueType = const Tagx(0x001c0101000507ab);
  static const Tagx kConceptNameCodeSequence = const Tagx(0x001c0101001607ac);
  static const Tagx kMeasurementPrecisionDescriptionTrial =
      const Tagx(0x005c0101000c07ad);
  static const Tagx kContinuityOfContent = const Tagx(0x001c0101000507ae);
  static const Tagx kUrgencyOrPriorityAlertsTrial =
      const Tagx(0x005c01ff000507af);
  static const Tagx kSequencingIndicatorTrial = const Tagx(0x005c0101000c07b0);
  static const Tagx kDocumentIdentifierCodeSequenceTrial =
      const Tagx(0x005c0101001607b1);
  static const Tagx kDocumentAuthorTrial = const Tagx(0x005c0101001307b2);
  static const Tagx kDocumentAuthorIdentifierCodeSequenceTrial =
      const Tagx(0x005c0101001607b3);
  static const Tagx kIdentifierCodeSequenceTrial =
      const Tagx(0x005c0101001607b4);
  static const Tagx kVerifyingObserverSequence = const Tagx(0x001c0101001607b5);
  static const Tagx kObjectBinaryIdentifierTrial =
      const Tagx(0x005c0101000e07b6);
  static const Tagx kVerifyingObserverName = const Tagx(0x001c0101001307b7);
  static const Tagx kDocumentingObserverIdentifierCodeSequenceTrial =
      const Tagx(0x005c0101001607b8);
  static const Tagx kAuthorObserverSequence = const Tagx(0x001c0101001607b9);
  static const Tagx kParticipantSequence = const Tagx(0x001c0101001607ba);
  static const Tagx kCustodialOrganizationSequence =
      const Tagx(0x001c0101001607bb);
  static const Tagx kParticipationType = const Tagx(0x001c0101000507bc);
  static const Tagx kParticipationDateTime = const Tagx(0x001c0101000807bd);
  static const Tagx kObserverType = const Tagx(0x001c0101000507be);
  static const Tagx kProcedureIdentifierCodeSequenceTrial =
      const Tagx(0x005c0101001607bf);
  static const Tagx kVerifyingObserverIdentificationCodeSequence =
      const Tagx(0x001c0101001607c0);
  static const Tagx kObjectDirectoryBinaryIdentifierTrial =
      const Tagx(0x005c0101000e07c1);
  static const Tagx kEquivalentCDADocumentSequence =
      const Tagx(0x005c0101001607c2);
  static const Tagx kReferencedWaveformChannels =
      const Tagx(0x001c02ff001f07c3);
  static const Tagx kDateOfDocumentOrVerbalTransactionTrial =
      const Tagx(0x005c0101000607c4);
  static const Tagx kTimeOfDocumentCreationOrVerbalTransactionTrial =
      const Tagx(0x005c0101001907c5);
  static const Tagx kDateTime = const Tagx(0x001c0101000807c6);
  static const Tagx kDate = const Tagx(0x001c0101000607c7);
  static const Tagx kTime = const Tagx(0x001c0101001907c8);
  static const Tagx kPersonName = const Tagx(0x001c0101001307c9);
  static const Tagx kUID = const Tagx(0x001c0101001b07ca);
  static const Tagx kReportStatusIDTrial = const Tagx(0x005c0102000507cb);
  static const Tagx kTemporalRangeType = const Tagx(0x001c0101000507cc);
  static const Tagx kReferencedSamplePositions = const Tagx(0x001c01ff001c07cd);
  static const Tagx kReferencedFrameNumbers = const Tagx(0x001c01ff001f07ce);
  static const Tagx kReferencedTimeOffsets = const Tagx(0x001c01ff000707cf);
  static const Tagx kReferencedDateTime = const Tagx(0x001c01ff000807d0);
  static const Tagx kTextValue = const Tagx(0x001c0101002007d1);
  static const Tagx kFloatingPointValue = const Tagx(0x001c01ff000907d2);
  static const Tagx kRationalNumeratorValue = const Tagx(0x001c01ff001507d3);
  static const Tagx kRationalDenominatorValue = const Tagx(0x001c01ff001c07d4);
  static const Tagx kObservationCategoryCodeSequenceTrial =
      const Tagx(0x005c0101001607d5);
  static const Tagx kConceptCodeSequence = const Tagx(0x001c0101001607d6);
  static const Tagx kBibliographicCitationTrial =
      const Tagx(0x005c0101001807d7);
  static const Tagx kPurposeOfReferenceCodeSequence =
      const Tagx(0x001c0101001607d8);
  static const Tagx kObservationUID = const Tagx(0x001c0101001b07d9);
  static const Tagx kReferencedObservationUIDTrial =
      const Tagx(0x005c0101001b07da);
  static const Tagx kReferencedObservationClassTrial =
      const Tagx(0x005c0101000507db);
  static const Tagx kReferencedObjectObservationClassTrial =
      const Tagx(0x005c0101000507dc);
  static const Tagx kAnnotationGroupNumber = const Tagx(0x001c0101001f07dd);
  static const Tagx kObservationDateTrial = const Tagx(0x005c0101000607de);
  static const Tagx kObservationTimeTrial = const Tagx(0x005c0101001907df);
  static const Tagx kMeasurementAutomationTrial =
      const Tagx(0x005c0101000507e0);
  static const Tagx kModifierCodeSequence = const Tagx(0x001c0101001607e1);
  static const Tagx kIdentificationDescriptionTrial =
      const Tagx(0x005c0101001807e2);
  static const Tagx kCoordinatesSetGeometricTypeTrial =
      const Tagx(0x005c0101000507e3);
  static const Tagx kAlgorithmCodeSequenceTrial =
      const Tagx(0x005c0101001607e4);
  static const Tagx kAlgorithmDescriptionTrial = const Tagx(0x005c0101001807e5);
  static const Tagx kPixelCoordinatesSetTrial = const Tagx(0x005c02ff001507e6);
  static const Tagx kMeasuredValueSequence = const Tagx(0x001c0101001607e7);
  static const Tagx kNumericValueQualifierCodeSequence =
      const Tagx(0x001c0101001607e8);
  static const Tagx kCurrentObserverTrial = const Tagx(0x005c0101001307e9);
  static const Tagx kNumericValue = const Tagx(0x001c01ff000707ea);
  static const Tagx kReferencedAccessionSequenceTrial =
      const Tagx(0x005c0101001607eb);
  static const Tagx kReportStatusCommentTrial = const Tagx(0x005c0101001807ec);
  static const Tagx kProcedureContextSequenceTrial =
      const Tagx(0x005c0101001607ed);
  static const Tagx kVerbalSourceTrial = const Tagx(0x005c0101001307ee);
  static const Tagx kAddressTrial = const Tagx(0x005c0101001807ef);
  static const Tagx kTelephoneNumberTrial = const Tagx(0x005c0101000c07f0);
  static const Tagx kVerbalSourceIdentifierCodeSequenceTrial =
      const Tagx(0x005c0101001607f1);
  static const Tagx kPredecessorDocumentsSequence =
      const Tagx(0x001c0101001607f2);
  static const Tagx kReferencedRequestSequence = const Tagx(0x001c0101001607f3);
  static const Tagx kPerformedProcedureCodeSequence =
      const Tagx(0x001c0101001607f4);
  static const Tagx kCurrentRequestedProcedureEvidenceSequence =
      const Tagx(0x001c0101001607f5);
  static const Tagx kReportDetailSequenceTrial = const Tagx(0x005c0101001607f6);
  static const Tagx kPertinentOtherEvidenceSequence =
      const Tagx(0x001c0101001607f7);
  static const Tagx kHL7StructuredDocumentReferenceSequence =
      const Tagx(0x001c0101001607f8);
  static const Tagx kObservationSubjectUIDTrial =
      const Tagx(0x005c0101001b07f9);
  static const Tagx kObservationSubjectClassTrial =
      const Tagx(0x005c0101000507fa);
  static const Tagx kObservationSubjectTypeCodeSequenceTrial =
      const Tagx(0x005c0101001607fb);
  static const Tagx kCompletionFlag = const Tagx(0x001c0101000507fc);
  static const Tagx kCompletionFlagDescription = const Tagx(0x001c0101000c07fd);
  static const Tagx kVerificationFlag = const Tagx(0x001c0101000507fe);
  static const Tagx kArchiveRequested = const Tagx(0x001c0101000507ff);
  static const Tagx kPreliminaryFlag = const Tagx(0x001c010100050800);
  static const Tagx kContentTemplateSequence = const Tagx(0x001c010100160801);
  static const Tagx kIdenticalDocumentsSequence =
      const Tagx(0x001c010100160802);
  static const Tagx kObservationSubjectContextFlagTrial =
      const Tagx(0x005c010100050803);
  static const Tagx kObserverContextFlagTrial = const Tagx(0x005c010100050804);
  static const Tagx kProcedureContextFlagTrial = const Tagx(0x005c010100050805);
  static const Tagx kContentSequence = const Tagx(0x001c010100160806);
  static const Tagx kRelationshipSequenceTrial = const Tagx(0x005c010100160807);
  static const Tagx kRelationshipTypeCodeSequenceTrial =
      const Tagx(0x005c010100160808);
  static const Tagx kLanguageCodeSequenceTrial = const Tagx(0x005c010100160809);
  static const Tagx kUniformResourceLocatorTrial =
      const Tagx(0x005c01010018080a);
  static const Tagx kWaveformAnnotationSequence =
      const Tagx(0x001c01010016080b);
  static const Tagx kTemplateIdentifier = const Tagx(0x001c01010005080c);
  static const Tagx kTemplateVersion = const Tagx(0x005c01010008080d);
  static const Tagx kTemplateLocalVersion = const Tagx(0x005c01010008080e);
  static const Tagx kTemplateExtensionFlag = const Tagx(0x005c01010005080f);
  static const Tagx kTemplateExtensionOrganizationUID =
      const Tagx(0x005c0101001b0810);
  static const Tagx kTemplateExtensionCreatorUID =
      const Tagx(0x005c0101001b0811);
  static const Tagx kReferencedContentItemIdentifier =
      const Tagx(0x001c01ff001c0812);
  static const Tagx kHL7InstanceIdentifier = const Tagx(0x001c010100180813);
  static const Tagx kHL7DocumentEffectiveTime = const Tagx(0x001c010100080814);
  static const Tagx kHL7DocumentTypeCodeSequence =
      const Tagx(0x001c010100160815);
  static const Tagx kDocumentClassCodeSequence = const Tagx(0x001c010100160816);
  static const Tagx kRetrieveURI = const Tagx(0x001c0101001e0817);
  static const Tagx kRetrieveLocationUID = const Tagx(0x001c0101001b0818);
  static const Tagx kTypeOfInstances = const Tagx(0x001c010100050819);
  static const Tagx kDICOMRetrievalSequence = const Tagx(0x001c01010016081a);
  static const Tagx kDICOMMediaRetrievalSequence =
      const Tagx(0x001c01010016081b);
  static const Tagx kWADORetrievalSequence = const Tagx(0x001c01010016081c);
  static const Tagx kXDSRetrievalSequence = const Tagx(0x001c01010016081d);
  static const Tagx kRepositoryUniqueID = const Tagx(0x001c0101001b081e);
  static const Tagx kHomeCommunityID = const Tagx(0x001c0101001b081f);
  static const Tagx kDocumentTitle = const Tagx(0x001c010100180820);
  static const Tagx kEncapsulatedDocument = const Tagx(0x001c0101000e0821);
  static const Tagx kMIMETypeOfEncapsulatedDocument =
      const Tagx(0x001c0101000c0822);
  static const Tagx kSourceInstanceSequence = const Tagx(0x001c010100160823);
  static const Tagx kListOfMIMETypes = const Tagx(0x001c01ff000c0824);
  static const Tagx kProductPackageIdentifier = const Tagx(0x001c010100180825);
  static const Tagx kSubstanceAdministrationApproval =
      const Tagx(0x001c010100050826);
  static const Tagx kApprovalStatusFurtherDescription =
      const Tagx(0x001c0101000d0827);
  static const Tagx kApprovalStatusDateTime = const Tagx(0x001c010100080828);
  static const Tagx kProductTypeCodeSequence = const Tagx(0x001c010100160829);
  static const Tagx kProductName = const Tagx(0x001c01ff000c082a);
  static const Tagx kProductDescription = const Tagx(0x001c0101000d082b);
  static const Tagx kProductLotIdentifier = const Tagx(0x001c0101000c082c);
  static const Tagx kProductExpirationDateTime = const Tagx(0x001c01010008082d);
  static const Tagx kSubstanceAdministrationDateTime =
      const Tagx(0x001c01010008082e);
  static const Tagx kSubstanceAdministrationNotes =
      const Tagx(0x001c0101000c082f);
  static const Tagx kSubstanceAdministrationDeviceID =
      const Tagx(0x001c0101000c0830);
  static const Tagx kProductParameterSequence = const Tagx(0x001c010100160831);
  static const Tagx kSubstanceAdministrationParameterSequence =
      const Tagx(0x001c010100160832);
  static const Tagx kLensDescription = const Tagx(0x001c0101000c0833);
  static const Tagx kRightLensSequence = const Tagx(0x001c010100160834);
  static const Tagx kLeftLensSequence = const Tagx(0x001c010100160835);
  static const Tagx kUnspecifiedLateralityLensSequence =
      const Tagx(0x001c010100160836);
  static const Tagx kCylinderSequence = const Tagx(0x001c010100160837);
  static const Tagx kPrismSequence = const Tagx(0x001c010100160838);
  static const Tagx kHorizontalPrismPower = const Tagx(0x001c010100090839);
  static const Tagx kHorizontalPrismBase = const Tagx(0x001c01010005083a);
  static const Tagx kVerticalPrismPower = const Tagx(0x001c01010009083b);
  static const Tagx kVerticalPrismBase = const Tagx(0x001c01010005083c);
  static const Tagx kLensSegmentType = const Tagx(0x001c01010005083d);
  static const Tagx kOpticalTransmittance = const Tagx(0x001c01010009083e);
  static const Tagx kChannelWidth = const Tagx(0x001c01010009083f);
  static const Tagx kPupilSize = const Tagx(0x001c010100090840);
  static const Tagx kCornealSize = const Tagx(0x001c010100090841);
  static const Tagx kAutorefractionRightEyeSequence =
      const Tagx(0x001c010100160842);
  static const Tagx kAutorefractionLeftEyeSequence =
      const Tagx(0x001c010100160843);
  static const Tagx kDistancePupillaryDistance = const Tagx(0x001c010100090844);
  static const Tagx kNearPupillaryDistance = const Tagx(0x001c010100090845);
  static const Tagx kIntermediatePupillaryDistance =
      const Tagx(0x001c010100090846);
  static const Tagx kOtherPupillaryDistance = const Tagx(0x001c010100090847);
  static const Tagx kKeratometryRightEyeSequence =
      const Tagx(0x001c010100160848);
  static const Tagx kKeratometryLeftEyeSequence =
      const Tagx(0x001c010100160849);
  static const Tagx kSteepKeratometricAxisSequence =
      const Tagx(0x001c01010016084a);
  static const Tagx kRadiusOfCurvature = const Tagx(0x001c01010009084b);
  static const Tagx kKeratometricPower = const Tagx(0x001c01010009084c);
  static const Tagx kKeratometricAxis = const Tagx(0x001c01010009084d);
  static const Tagx kFlatKeratometricAxisSequence =
      const Tagx(0x001c01010016084e);
  static const Tagx kBackgroundColor = const Tagx(0x001c01010005084f);
  static const Tagx kOptotype = const Tagx(0x001c010100050850);
  static const Tagx kOptotypePresentation = const Tagx(0x001c010100050851);
  static const Tagx kSubjectiveRefractionRightEyeSequence =
      const Tagx(0x001c010100160852);
  static const Tagx kSubjectiveRefractionLeftEyeSequence =
      const Tagx(0x001c010100160853);
  static const Tagx kAddNearSequence = const Tagx(0x001c010100160854);
  static const Tagx kAddIntermediateSequence = const Tagx(0x001c010100160855);
  static const Tagx kAddOtherSequence = const Tagx(0x001c010100160856);
  static const Tagx kAddPower = const Tagx(0x001c010100090857);
  static const Tagx kViewingDistance = const Tagx(0x001c010100090858);
  static const Tagx kVisualAcuityTypeCodeSequence =
      const Tagx(0x001c010100160859);
  static const Tagx kVisualAcuityRightEyeSequence =
      const Tagx(0x001c01010016085a);
  static const Tagx kVisualAcuityLeftEyeSequence =
      const Tagx(0x001c01010016085b);
  static const Tagx kVisualAcuityBothEyesOpenSequence =
      const Tagx(0x001c01010016085c);
  static const Tagx kViewingDistanceType = const Tagx(0x001c01010005085d);
  static const Tagx kVisualAcuityModifiers = const Tagx(0x001c01020017085e);
  static const Tagx kDecimalVisualAcuity = const Tagx(0x001c01010009085f);
  static const Tagx kOptotypeDetailedDefinition =
      const Tagx(0x001c0101000c0860);
  static const Tagx kReferencedRefractiveMeasurementsSequence =
      const Tagx(0x001c010100160861);
  static const Tagx kSpherePower = const Tagx(0x001c010100090862);
  static const Tagx kCylinderPower = const Tagx(0x001c010100090863);
  static const Tagx kCornealTopographySurface = const Tagx(0x001c010100050864);
  static const Tagx kCornealVertexLocation = const Tagx(0x001c0102000a0865);
  static const Tagx kPupilCentroidXCoordinate = const Tagx(0x001c0101000a0866);
  static const Tagx kPupilCentroidYCoordinate = const Tagx(0x001c0101000a0867);
  static const Tagx kEquivalentPupilRadius = const Tagx(0x001c0101000a0868);
  static const Tagx kCornealTopographyMapTypeCodeSequence =
      const Tagx(0x001c010100160869);
  static const Tagx kVerticesOfTheOutlineOfPupil =
      const Tagx(0x001c02ff000b086a);
  static const Tagx kCornealTopographyMappingNormalsSequence =
      const Tagx(0x001c01010016086b);
  static const Tagx kMaximumCornealCurvatureSequence =
      const Tagx(0x001c01010016086c);
  static const Tagx kMaximumCornealCurvature = const Tagx(0x001c0101000a086d);
  static const Tagx kMaximumCornealCurvatureLocation =
      const Tagx(0x001c0102000a086e);
  static const Tagx kMinimumKeratometricSequence =
      const Tagx(0x001c01010016086f);
  static const Tagx kSimulatedKeratometricCylinderSequence =
      const Tagx(0x001c010100160870);
  static const Tagx kAverageCornealPower = const Tagx(0x001c0101000a0871);
  static const Tagx kCornealISValue = const Tagx(0x001c0101000a0872);
  static const Tagx kAnalyzedArea = const Tagx(0x001c0101000a0873);
  static const Tagx kSurfaceRegularityIndex = const Tagx(0x001c0101000a0874);
  static const Tagx kSurfaceAsymmetryIndex = const Tagx(0x001c0101000a0875);
  static const Tagx kCornealEccentricityIndex = const Tagx(0x001c0101000a0876);
  static const Tagx kKeratoconusPredictionIndex =
      const Tagx(0x001c0101000a0877);
  static const Tagx kDecimalPotentialVisualAcuity =
      const Tagx(0x001c0101000a0878);
  static const Tagx kCornealTopographyMapQualityEvaluation =
      const Tagx(0x001c010100050879);
  static const Tagx kSourceImageCornealProcessedDataSequence =
      const Tagx(0x001c01010016087a);
  static const Tagx kCornealPointLocation = const Tagx(0x001c0103000a087b);
  static const Tagx kCornealPointEstimated = const Tagx(0x001c01010005087c);
  static const Tagx kAxialPower = const Tagx(0x001c0101000a087d);
  static const Tagx kTangentialPower = const Tagx(0x001c0101000a087e);
  static const Tagx kRefractivePower = const Tagx(0x001c0101000a087f);
  static const Tagx kRelativeElevation = const Tagx(0x001c0101000a0880);
  static const Tagx kCornealWavefront = const Tagx(0x001c0101000a0881);
  static const Tagx kImagedVolumeWidth = const Tagx(0x001c0101000a0882);
  static const Tagx kImagedVolumeHeight = const Tagx(0x001c0101000a0883);
  static const Tagx kImagedVolumeDepth = const Tagx(0x001c0101000a0884);
  static const Tagx kTotalPixelMatrixColumns = const Tagx(0x001c0101001c0885);
  static const Tagx kTotalPixelMatrixRows = const Tagx(0x001c0101001c0886);
  static const Tagx kTotalPixelMatrixOriginSequence =
      const Tagx(0x001c010100160887);
  static const Tagx kSpecimenLabelInImage = const Tagx(0x001c010100050888);
  static const Tagx kFocusMethod = const Tagx(0x001c010100050889);
  static const Tagx kExtendedDepthOfField = const Tagx(0x001c01010005088a);
  static const Tagx kNumberOfFocalPlanes = const Tagx(0x001c0101001f088b);
  static const Tagx kDistanceBetweenFocalPlanes =
      const Tagx(0x001c0101000a088c);
  static const Tagx kRecommendedAbsentPixelCIELabValue =
      const Tagx(0x001c0103001f088d);
  static const Tagx kIlluminatorTypeCodeSequence =
      const Tagx(0x001c01010016088e);
  static const Tagx kImageOrientationSlide = const Tagx(0x001c01060007088f);
  static const Tagx kOpticalPathSequence = const Tagx(0x001c010100160890);
  static const Tagx kOpticalPathIdentifier = const Tagx(0x001c010100140891);
  static const Tagx kOpticalPathDescription = const Tagx(0x001c010100180892);
  static const Tagx kIlluminationColorCodeSequence =
      const Tagx(0x001c010100160893);
  static const Tagx kSpecimenReferenceSequence = const Tagx(0x001c010100160894);
  static const Tagx kCondenserLensPower = const Tagx(0x001c010100070895);
  static const Tagx kObjectiveLensPower = const Tagx(0x001c010100070896);
  static const Tagx kObjectiveLensNumericalAperture =
      const Tagx(0x001c010100070897);
  static const Tagx kPaletteColorLookupTableSequence =
      const Tagx(0x001c010100160898);
  static const Tagx kReferencedImageNavigationSequence =
      const Tagx(0x001c010100160899);
  static const Tagx kTopLeftHandCornerOfLocalizerArea =
      const Tagx(0x001c0102001f089a);
  static const Tagx kBottomRightHandCornerOfLocalizerArea =
      const Tagx(0x001c0102001f089b);
  static const Tagx kOpticalPathIdentificationSequence =
      const Tagx(0x001c01010016089c);
  static const Tagx kPlanePositionSlideSequence =
      const Tagx(0x001c01010016089d);
  static const Tagx kColumnPositionInTotalImagePixelMatrix =
      const Tagx(0x001c01010015089e);
  static const Tagx kRowPositionInTotalImagePixelMatrix =
      const Tagx(0x001c01010015089f);
  static const Tagx kPixelOriginInterpretation = const Tagx(0x001c0101000508a0);
  static const Tagx kCalibrationImage = const Tagx(0x001c0101000508a1);
  static const Tagx kDeviceSequence = const Tagx(0x001c0101001608a2);
  static const Tagx kContainerComponentTypeCodeSequence =
      const Tagx(0x001c0101001608a3);
  static const Tagx kContainerComponentThickness =
      const Tagx(0x001c0101000908a4);
  static const Tagx kDeviceLength = const Tagx(0x001c0101000708a5);
  static const Tagx kContainerComponentWidth = const Tagx(0x001c0101000908a6);
  static const Tagx kDeviceDiameter = const Tagx(0x001c0101000708a7);
  static const Tagx kDeviceDiameterUnits = const Tagx(0x001c0101000508a8);
  static const Tagx kDeviceVolume = const Tagx(0x001c0101000708a9);
  static const Tagx kInterMarkerDistance = const Tagx(0x001c0101000708aa);
  static const Tagx kContainerComponentMaterial =
      const Tagx(0x001c0101000508ab);
  static const Tagx kContainerComponentID = const Tagx(0x001c0101000c08ac);
  static const Tagx kContainerComponentLength = const Tagx(0x001c0101000908ad);
  static const Tagx kContainerComponentDiameter =
      const Tagx(0x001c0101000908ae);
  static const Tagx kContainerComponentDescription =
      const Tagx(0x001c0101000c08af);
  static const Tagx kDeviceDescription = const Tagx(0x001c0101000c08b0);
  static const Tagx kContrastBolusIngredientPercentByVolume =
      const Tagx(0x001c0101000a08b1);
  static const Tagx kOCTFocalDistance = const Tagx(0x001c0101000908b2);
  static const Tagx kBeamSpotSize = const Tagx(0x001c0101000908b3);
  static const Tagx kEffectiveRefractiveIndex = const Tagx(0x001c0101000908b4);
  static const Tagx kOCTAcquisitionDomain = const Tagx(0x001c0101000508b5);
  static const Tagx kOCTOpticalCenterWavelength =
      const Tagx(0x001c0101000908b6);
  static const Tagx kAxialResolution = const Tagx(0x001c0101000908b7);
  static const Tagx kRangingDepth = const Tagx(0x001c0101000908b8);
  static const Tagx kALineRate = const Tagx(0x001c0101000908b9);
  static const Tagx kALinesPerFrame = const Tagx(0x001c0101001f08ba);
  static const Tagx kCatheterRotationalRate = const Tagx(0x001c0101000908bb);
  static const Tagx kALinePixelSpacing = const Tagx(0x001c0101000908bc);
  static const Tagx kModeOfPercutaneousAccessSequence =
      const Tagx(0x001c0101001608bd);
  static const Tagx kIntravascularOCTFrameTypeSequence =
      const Tagx(0x001c0101001608be);
  static const Tagx kOCTZOffsetApplied = const Tagx(0x001c0101000508bf);
  static const Tagx kIntravascularFrameContentSequence =
      const Tagx(0x001c0101001608c0);
  static const Tagx kIntravascularLongitudinalDistance =
      const Tagx(0x001c0101000908c1);
  static const Tagx kIntravascularOCTFrameContentSequence =
      const Tagx(0x001c0101001608c2);
  static const Tagx kOCTZOffsetCorrection = const Tagx(0x001c0101001708c3);
  static const Tagx kCatheterDirectionOfRotation =
      const Tagx(0x001c0101000508c4);
  static const Tagx kSeamLineLocation = const Tagx(0x001c0101000908c5);
  static const Tagx kFirstALineLocation = const Tagx(0x001c0101000908c6);
  static const Tagx kSeamLineIndex = const Tagx(0x001c0101001f08c7);
  static const Tagx kNumberOfPaddedALines = const Tagx(0x001c0101001f08c8);
  static const Tagx kInterpolationType = const Tagx(0x001c0101000508c9);
  static const Tagx kRefractiveIndexApplied = const Tagx(0x001c0101000508ca);
  static const Tagx kEnergyWindowVector = const Tagx(0x001c01ff001f08cb);
  static const Tagx kNumberOfEnergyWindows = const Tagx(0x001c0101001f08cc);
  static const Tagx kEnergyWindowInformationSequence =
      const Tagx(0x001c0101001608cd);
  static const Tagx kEnergyWindowRangeSequence = const Tagx(0x001c0101001608ce);
  static const Tagx kEnergyWindowLowerLimit = const Tagx(0x001c0101000708cf);
  static const Tagx kEnergyWindowUpperLimit = const Tagx(0x001c0101000708d0);
  static const Tagx kRadiopharmaceuticalInformationSequence =
      const Tagx(0x001c0101001608d1);
  static const Tagx kResidualSyringeCounts = const Tagx(0x001c0101000b08d2);
  static const Tagx kEnergyWindowName = const Tagx(0x001c0101001408d3);
  static const Tagx kDetectorVector = const Tagx(0x001c01ff001f08d4);
  static const Tagx kNumberOfDetectors = const Tagx(0x001c0101001f08d5);
  static const Tagx kDetectorInformationSequence =
      const Tagx(0x001c0101001608d6);
  static const Tagx kPhaseVector = const Tagx(0x001c01ff001f08d7);
  static const Tagx kNumberOfPhases = const Tagx(0x001c0101001f08d8);
  static const Tagx kPhaseInformationSequence = const Tagx(0x001c0101001608d9);
  static const Tagx kNumberOfFramesInPhase = const Tagx(0x001c0101001f08da);
  static const Tagx kPhaseDelay = const Tagx(0x001c0101000b08db);
  static const Tagx kPauseBetweenFrames = const Tagx(0x001c0101000b08dc);
  static const Tagx kPhaseDescription = const Tagx(0x001c0101000508dd);
  static const Tagx kRotationVector = const Tagx(0x001c01ff001f08de);
  static const Tagx kNumberOfRotations = const Tagx(0x001c0101001f08df);
  static const Tagx kRotationInformationSequence =
      const Tagx(0x001c0101001608e0);
  static const Tagx kNumberOfFramesInRotation = const Tagx(0x001c0101001f08e1);
  static const Tagx kRRIntervalVector = const Tagx(0x001c01ff001f08e2);
  static const Tagx kNumberOfRRIntervals = const Tagx(0x001c0101001f08e3);
  static const Tagx kGatedInformationSequence = const Tagx(0x001c0101001608e4);
  static const Tagx kDataInformationSequence = const Tagx(0x001c0101001608e5);
  static const Tagx kTimeSlotVector = const Tagx(0x001c01ff001f08e6);
  static const Tagx kNumberOfTimeSlots = const Tagx(0x001c0101001f08e7);
  static const Tagx kTimeSlotInformationSequence =
      const Tagx(0x001c0101001608e8);
  static const Tagx kTimeSlotTime = const Tagx(0x001c0101000708e9);
  static const Tagx kSliceVector = const Tagx(0x001c01ff001f08ea);
  static const Tagx kNumberOfSlices = const Tagx(0x001c0101001f08eb);
  static const Tagx kAngularViewVector = const Tagx(0x001c01ff001f08ec);
  static const Tagx kTimeSliceVector = const Tagx(0x001c01ff001f08ed);
  static const Tagx kNumberOfTimeSlices = const Tagx(0x001c0101001f08ee);
  static const Tagx kStartAngle = const Tagx(0x001c0101000708ef);
  static const Tagx kTypeOfDetectorMotion = const Tagx(0x001c0101000508f0);
  static const Tagx kTriggerVector = const Tagx(0x001c01ff000b08f1);
  static const Tagx kNumberOfTriggersInPhase = const Tagx(0x001c0101001f08f2);
  static const Tagx kViewCodeSequence = const Tagx(0x001c0101001608f3);
  static const Tagx kViewModifierCodeSequence = const Tagx(0x001c0101001608f4);
  static const Tagx kRadionuclideCodeSequence = const Tagx(0x001c0101001608f5);
  static const Tagx kAdministrationRouteCodeSequence =
      const Tagx(0x001c0101001608f6);
  static const Tagx kRadiopharmaceuticalCodeSequence =
      const Tagx(0x001c0101001608f7);
  static const Tagx kCalibrationDataSequence = const Tagx(0x001c0101001608f8);
  static const Tagx kEnergyWindowNumber = const Tagx(0x001c0101001f08f9);
  static const Tagx kImageID = const Tagx(0x001c0101001408fa);
  static const Tagx kPatientOrientationCodeSequence =
      const Tagx(0x001c0101001608fb);
  static const Tagx kPatientOrientationModifierCodeSequence =
      const Tagx(0x001c0101001608fc);
  static const Tagx kPatientGantryRelationshipCodeSequence =
      const Tagx(0x001c0101001608fd);
  static const Tagx kSliceProgressionDirection = const Tagx(0x001c0101000508fe);
  static const Tagx kSeriesType = const Tagx(0x001c0102000508ff);
  static const Tagx kUnits = const Tagx(0x001c010100050900);
  static const Tagx kCountsSource = const Tagx(0x001c010100050901);
  static const Tagx kReprojectionMethod = const Tagx(0x001c010100050902);
  static const Tagx kSUVType = const Tagx(0x001c010100050903);
  static const Tagx kRandomsCorrectionMethod = const Tagx(0x001c010100050904);
  static const Tagx kAttenuationCorrectionMethod =
      const Tagx(0x001c0101000c0905);
  static const Tagx kDecayCorrection = const Tagx(0x001c010100050906);
  static const Tagx kReconstructionMethod = const Tagx(0x001c0101000c0907);
  static const Tagx kDetectorLinesOfResponseUsed =
      const Tagx(0x001c0101000c0908);
  static const Tagx kScatterCorrectionMethod = const Tagx(0x001c0101000c0909);
  static const Tagx kAxialAcceptance = const Tagx(0x001c01010007090a);
  static const Tagx kAxialMash = const Tagx(0x001c0102000b090b);
  static const Tagx kTransverseMash = const Tagx(0x001c0101000b090c);
  static const Tagx kDetectorElementSize = const Tagx(0x001c01020007090d);
  static const Tagx kCoincidenceWindowWidth = const Tagx(0x001c01010007090e);
  static const Tagx kSecondaryCountsType = const Tagx(0x001c01ff0005090f);
  static const Tagx kFrameReferenceTime = const Tagx(0x001c010100070910);
  static const Tagx kPrimaryPromptsCountsAccumulated =
      const Tagx(0x001c0101000b0911);
  static const Tagx kSecondaryCountsAccumulated =
      const Tagx(0x001c01ff000b0912);
  static const Tagx kSliceSensitivityFactor = const Tagx(0x001c010100070913);
  static const Tagx kDecayFactor = const Tagx(0x001c010100070914);
  static const Tagx kDoseCalibrationFactor = const Tagx(0x001c010100070915);
  static const Tagx kScatterFractionFactor = const Tagx(0x001c010100070916);
  static const Tagx kDeadTimeFactor = const Tagx(0x001c010100070917);
  static const Tagx kImageIndex = const Tagx(0x001c0101001f0918);
  static const Tagx kCountsIncluded = const Tagx(0x005c01ff00050919);
  static const Tagx kDeadTimeCorrectionFlag = const Tagx(0x005c01010005091a);
  static const Tagx kHistogramSequence = const Tagx(0x001c01010016091b);
  static const Tagx kHistogramNumberOfBins = const Tagx(0x001c0101001f091c);
  static const Tagx kHistogramFirstBinValue = const Tagx(0x001c0101001d091d);
  static const Tagx kHistogramLastBinValue = const Tagx(0x001c0101001d091e);
  static const Tagx kHistogramBinWidth = const Tagx(0x001c0101001f091f);
  static const Tagx kHistogramExplanation = const Tagx(0x001c0101000c0920);
  static const Tagx kHistogramData = const Tagx(0x001c01ff001c0921);
  static const Tagx kSegmentationType = const Tagx(0x001c010100050922);
  static const Tagx kSegmentSequence = const Tagx(0x001c010100160923);
  static const Tagx kSegmentedPropertyCategoryCodeSequence =
      const Tagx(0x001c010100160924);
  static const Tagx kSegmentNumber = const Tagx(0x001c0101001f0925);
  static const Tagx kSegmentLabel = const Tagx(0x001c0101000c0926);
  static const Tagx kSegmentDescription = const Tagx(0x001c010100180927);
  static const Tagx kSegmentAlgorithmType = const Tagx(0x001c010100050928);
  static const Tagx kSegmentAlgorithmName = const Tagx(0x001c0101000c0929);
  static const Tagx kSegmentIdentificationSequence =
      const Tagx(0x001c01010016092a);
  static const Tagx kReferencedSegmentNumber = const Tagx(0x001c01ff001f092b);
  static const Tagx kRecommendedDisplayGrayscaleValue =
      const Tagx(0x001c0101001f092c);
  static const Tagx kRecommendedDisplayCIELabValue =
      const Tagx(0x001c0103001f092d);
  static const Tagx kMaximumFractionalValue = const Tagx(0x001c0101001f092e);
  static const Tagx kSegmentedPropertyTypeCodeSequence =
      const Tagx(0x001c01010016092f);
  static const Tagx kSegmentationFractionalType =
      const Tagx(0x001c010100050930);
  static const Tagx kSegmentedPropertyTypeModifierCodeSequence =
      const Tagx(0x001c010100160931);
  static const Tagx kUsedSegmentsSequence = const Tagx(0x001c010100160932);
  static const Tagx kDeformableRegistrationSequence =
      const Tagx(0x001c010100160933);
  static const Tagx kSourceFrameOfReferenceUID = const Tagx(0x001c0101001b0934);
  static const Tagx kDeformableRegistrationGridSequence =
      const Tagx(0x001c010100160935);
  static const Tagx kGridDimensions = const Tagx(0x001c0103001c0936);
  static const Tagx kGridResolution = const Tagx(0x001c010300090937);
  static const Tagx kVectorGridData = const Tagx(0x001c010100100938);
  static const Tagx kPreDeformationMatrixRegistrationSequence =
      const Tagx(0x001c010100160939);
  static const Tagx kPostDeformationMatrixRegistrationSequence =
      const Tagx(0x001c01010016093a);
  static const Tagx kNumberOfSurfaces = const Tagx(0x001c0101001c093b);
  static const Tagx kSurfaceSequence = const Tagx(0x001c01010016093c);
  static const Tagx kSurfaceNumber = const Tagx(0x001c0101001c093d);
  static const Tagx kSurfaceComments = const Tagx(0x001c0101000d093e);
  static const Tagx kSurfaceProcessing = const Tagx(0x001c01010005093f);
  static const Tagx kSurfaceProcessingRatio = const Tagx(0x001c0101000a0940);
  static const Tagx kSurfaceProcessingDescription =
      const Tagx(0x001c0101000c0941);
  static const Tagx kRecommendedPresentationOpacity =
      const Tagx(0x001c0101000a0942);
  static const Tagx kRecommendedPresentationType =
      const Tagx(0x001c010100050943);
  static const Tagx kFiniteVolume = const Tagx(0x001c010100050944);
  static const Tagx kManifold = const Tagx(0x001c010100050945);
  static const Tagx kSurfacePointsSequence = const Tagx(0x001c010100160946);
  static const Tagx kSurfacePointsNormalsSequence =
      const Tagx(0x001c010100160947);
  static const Tagx kSurfaceMeshPrimitivesSequence =
      const Tagx(0x001c010100160948);
  static const Tagx kNumberOfSurfacePoints = const Tagx(0x001c0101001c0949);
  static const Tagx kPointCoordinatesData = const Tagx(0x001c01010010094a);
  static const Tagx kPointPositionAccuracy = const Tagx(0x001c0103000a094b);
  static const Tagx kMeanPointDistance = const Tagx(0x001c0101000a094c);
  static const Tagx kMaximumPointDistance = const Tagx(0x001c0101000a094d);
  static const Tagx kPointsBoundingBoxCoordinates =
      const Tagx(0x001c0106000a094e);
  static const Tagx kAxisOfRotation = const Tagx(0x001c0103000a094f);
  static const Tagx kCenterOfRotation = const Tagx(0x001c0103000a0950);
  static const Tagx kNumberOfVectors = const Tagx(0x001c0101001c0951);
  static const Tagx kVectorDimensionality = const Tagx(0x001c0101001f0952);
  static const Tagx kVectorAccuracy = const Tagx(0x001c01ff000a0953);
  static const Tagx kVectorCoordinateData = const Tagx(0x001c010100100954);
  static const Tagx kTrianglePointIndexList = const Tagx(0x001c010100120955);
  static const Tagx kEdgePointIndexList = const Tagx(0x001c010100120956);
  static const Tagx kVertexPointIndexList = const Tagx(0x001c010100120957);
  static const Tagx kTriangleStripSequence = const Tagx(0x001c010100160958);
  static const Tagx kTriangleFanSequence = const Tagx(0x001c010100160959);
  static const Tagx kLineSequence = const Tagx(0x001c01010016095a);
  static const Tagx kPrimitivePointIndexList = const Tagx(0x001c01010012095b);
  static const Tagx kSurfaceCount = const Tagx(0x001c0101001c095c);
  static const Tagx kReferencedSurfaceSequence = const Tagx(0x001c01010016095d);
  static const Tagx kReferencedSurfaceNumber = const Tagx(0x001c0101001c095e);
  static const Tagx kSegmentSurfaceGenerationAlgorithmIdentificationSequence =
      const Tagx(0x001c01010016095f);
  static const Tagx kSegmentSurfaceSourceInstanceSequence =
      const Tagx(0x001c010100160960);
  static const Tagx kAlgorithmFamilyCodeSequence =
      const Tagx(0x001c010100160961);
  static const Tagx kAlgorithmNameCodeSequence = const Tagx(0x001c010100160962);
  static const Tagx kAlgorithmVersion = const Tagx(0x001c0101000c0963);
  static const Tagx kAlgorithmParameters = const Tagx(0x001c0101000d0964);
  static const Tagx kFacetSequence = const Tagx(0x001c010100160965);
  static const Tagx kSurfaceProcessingAlgorithmIdentificationSequence =
      const Tagx(0x001c010100160966);
  static const Tagx kAlgorithmName = const Tagx(0x001c0101000c0967);
  static const Tagx kRecommendedPointRadius = const Tagx(0x001c0101000a0968);
  static const Tagx kRecommendedLineThickness = const Tagx(0x001c0101000a0969);
  static const Tagx kImplantSize = const Tagx(0x001c0101000c096a);
  static const Tagx kImplantTemplateVersion = const Tagx(0x001c0101000c096b);
  static const Tagx kReplacedImplantTemplateSequence =
      const Tagx(0x001c01010016096c);
  static const Tagx kImplantType = const Tagx(0x001c01010005096d);
  static const Tagx kDerivationImplantTemplateSequence =
      const Tagx(0x001c01010016096e);
  static const Tagx kOriginalImplantTemplateSequence =
      const Tagx(0x001c01010016096f);
  static const Tagx kEffectiveDateTime = const Tagx(0x001c010100080970);
  static const Tagx kImplantTargetAnatomySequence =
      const Tagx(0x001c010100160971);
  static const Tagx kInformationFromManufacturerSequence =
      const Tagx(0x001c010100160972);
  static const Tagx kNotificationFromManufacturerSequence =
      const Tagx(0x001c010100160973);
  static const Tagx kInformationIssueDateTime = const Tagx(0x001c010100080974);
  static const Tagx kInformationSummary = const Tagx(0x001c010100180975);
  static const Tagx kImplantRegulatoryDisapprovalCodeSequence =
      const Tagx(0x001c010100160976);
  static const Tagx kOverallTemplateSpatialTolerance =
      const Tagx(0x001c010100090977);
  static const Tagx kHPGLDocumentSequence = const Tagx(0x001c010100160978);
  static const Tagx kHPGLDocumentID = const Tagx(0x001c0101001f0979);
  static const Tagx kHPGLDocumentLabel = const Tagx(0x001c0101000c097a);
  static const Tagx kViewOrientationCodeSequence =
      const Tagx(0x001c01010016097b);
  static const Tagx kViewOrientationModifier = const Tagx(0x001c01090009097c);
  static const Tagx kHPGLDocumentScaling = const Tagx(0x001c01010009097d);
  static const Tagx kHPGLDocument = const Tagx(0x001c0101000e097e);
  static const Tagx kHPGLContourPenNumber = const Tagx(0x001c0101001f097f);
  static const Tagx kHPGLPenSequence = const Tagx(0x001c010100160980);
  static const Tagx kHPGLPenNumber = const Tagx(0x001c0101001f0981);
  static const Tagx kHPGLPenLabel = const Tagx(0x001c0101000c0982);
  static const Tagx kHPGLPenDescription = const Tagx(0x001c010100180983);
  static const Tagx kRecommendedRotationPoint = const Tagx(0x001c010200090984);
  static const Tagx kBoundingRectangle = const Tagx(0x001c010400090985);
  static const Tagx kImplantTemplate3DModelSurfaceNumber =
      const Tagx(0x001c01ff001f0986);
  static const Tagx kSurfaceModelDescriptionSequence =
      const Tagx(0x001c010100160987);
  static const Tagx kSurfaceModelLabel = const Tagx(0x001c0101000c0988);
  static const Tagx kSurfaceModelScalingFactor = const Tagx(0x001c010100090989);
  static const Tagx kMaterialsCodeSequence = const Tagx(0x001c01010016098a);
  static const Tagx kCoatingMaterialsCodeSequence =
      const Tagx(0x001c01010016098b);
  static const Tagx kImplantTypeCodeSequence = const Tagx(0x001c01010016098c);
  static const Tagx kFixationMethodCodeSequence =
      const Tagx(0x001c01010016098d);
  static const Tagx kMatingFeatureSetsSequence = const Tagx(0x001c01010016098e);
  static const Tagx kMatingFeatureSetID = const Tagx(0x001c0101001f098f);
  static const Tagx kMatingFeatureSetLabel = const Tagx(0x001c0101000c0990);
  static const Tagx kMatingFeatureSequence = const Tagx(0x001c010100160991);
  static const Tagx kMatingFeatureID = const Tagx(0x001c0101001f0992);
  static const Tagx kMatingFeatureDegreeOfFreedomSequence =
      const Tagx(0x001c010100160993);
  static const Tagx kDegreeOfFreedomID = const Tagx(0x001c0101001f0994);
  static const Tagx kDegreeOfFreedomType = const Tagx(0x001c010100050995);
  static const Tagx kTwoDMatingFeatureCoordinatesSequence =
      const Tagx(0x001c010100160996);
  static const Tagx kReferencedHPGLDocumentID = const Tagx(0x001c0101001f0997);
  static const Tagx kTwoDMatingPoint = const Tagx(0x001c010200090998);
  static const Tagx kTwoDMatingAxes = const Tagx(0x001c010400090999);
  static const Tagx kTwoDDegreeOfFreedomSequence =
      const Tagx(0x001c01010016099a);
  static const Tagx kThreeDDegreeOfFreedomAxis = const Tagx(0x001c01030009099b);
  static const Tagx kRangeOfFreedom = const Tagx(0x001c01020009099c);
  static const Tagx kThreeDMatingPoint = const Tagx(0x001c01030009099d);
  static const Tagx kThreeDMatingAxes = const Tagx(0x001c01090009099e);
  static const Tagx kTwoDDegreeOfFreedomAxis = const Tagx(0x001c01030009099f);
  static const Tagx kPlanningLandmarkPointSequence =
      const Tagx(0x001c0101001609a0);
  static const Tagx kPlanningLandmarkLineSequence =
      const Tagx(0x001c0101001609a1);
  static const Tagx kPlanningLandmarkPlaneSequence =
      const Tagx(0x001c0101001609a2);
  static const Tagx kPlanningLandmarkID = const Tagx(0x001c0101001f09a3);
  static const Tagx kPlanningLandmarkDescription =
      const Tagx(0x001c0101000c09a4);
  static const Tagx kPlanningLandmarkIdentificationCodeSequence =
      const Tagx(0x001c0101001609a5);
  static const Tagx kTwoDPointCoordinatesSequence =
      const Tagx(0x001c0101001609a6);
  static const Tagx kTwoDPointCoordinates = const Tagx(0x001c0102000909a7);
  static const Tagx kThreeDPointCoordinates = const Tagx(0x001c0103000909a8);
  static const Tagx kTwoDLineCoordinatesSequence =
      const Tagx(0x001c0101001609a9);
  static const Tagx kTwoDLineCoordinates = const Tagx(0x001c0104000909aa);
  static const Tagx kThreeDLineCoordinates = const Tagx(0x001c0106000909ab);
  static const Tagx kTwoDPlaneCoordinatesSequence =
      const Tagx(0x001c0101001609ac);
  static const Tagx kTwoDPlaneIntersection = const Tagx(0x001c0104000909ad);
  static const Tagx kThreeDPlaneOrigin = const Tagx(0x001c0103000909ae);
  static const Tagx kThreeDPlaneNormal = const Tagx(0x001c0103000909af);
  static const Tagx kGraphicAnnotationSequence = const Tagx(0x001c0101001609b0);
  static const Tagx kGraphicLayer = const Tagx(0x001c0101000509b1);
  static const Tagx kBoundingBoxAnnotationUnits =
      const Tagx(0x001c0101000509b2);
  static const Tagx kAnchorPointAnnotationUnits =
      const Tagx(0x001c0101000509b3);
  static const Tagx kGraphicAnnotationUnits = const Tagx(0x001c0101000509b4);
  static const Tagx kUnformattedTextValue = const Tagx(0x001c0101001809b5);
  static const Tagx kTextObjectSequence = const Tagx(0x001c0101001609b6);
  static const Tagx kGraphicObjectSequence = const Tagx(0x001c0101001609b7);
  static const Tagx kBoundingBoxTopLeftHandCorner =
      const Tagx(0x001c0102000a09b8);
  static const Tagx kBoundingBoxBottomRightHandCorner =
      const Tagx(0x001c0102000a09b9);
  static const Tagx kBoundingBoxTextHorizontalJustification =
      const Tagx(0x001c0101000509ba);
  static const Tagx kAnchorPoint = const Tagx(0x001c0102000a09bb);
  static const Tagx kAnchorPointVisibility = const Tagx(0x001c0101000509bc);
  static const Tagx kGraphicDimensions = const Tagx(0x001c0101001f09bd);
  static const Tagx kNumberOfGraphicPoints = const Tagx(0x001c0101001f09be);
  static const Tagx kGraphicData = const Tagx(0x001c01ff000a09bf);
  static const Tagx kGraphicType = const Tagx(0x001c0101000509c0);
  static const Tagx kGraphicFilled = const Tagx(0x001c0101000509c1);
  static const Tagx kImageRotationRetired = const Tagx(0x005c0101000b09c2);
  static const Tagx kImageHorizontalFlip = const Tagx(0x001c0101000509c3);
  static const Tagx kImageRotation = const Tagx(0x001c0101001f09c4);
  static const Tagx kDisplayedAreaTopLeftHandCornerTrial =
      const Tagx(0x005c0102001f09c5);
  static const Tagx kDisplayedAreaBottomRightHandCornerTrial =
      const Tagx(0x005c0102001f09c6);
  static const Tagx kDisplayedAreaTopLeftHandCorner =
      const Tagx(0x001c0102001509c7);
  static const Tagx kDisplayedAreaBottomRightHandCorner =
      const Tagx(0x001c0102001509c8);
  static const Tagx kDisplayedAreaSelectionSequence =
      const Tagx(0x001c0101001609c9);
  static const Tagx kGraphicLayerSequence = const Tagx(0x001c0101001609ca);
  static const Tagx kGraphicLayerOrder = const Tagx(0x001c0101000b09cb);
  static const Tagx kGraphicLayerRecommendedDisplayGrayscaleValue =
      const Tagx(0x001c0101001f09cc);
  static const Tagx kGraphicLayerRecommendedDisplayRGBValue =
      const Tagx(0x005c0103001f09cd);
  static const Tagx kGraphicLayerDescription = const Tagx(0x001c0101000c09ce);
  static const Tagx kContentLabel = const Tagx(0x001c0101000509cf);
  static const Tagx kContentDescription = const Tagx(0x001c0101000c09d0);
  static const Tagx kPresentationCreationDate = const Tagx(0x001c0101000609d1);
  static const Tagx kPresentationCreationTime = const Tagx(0x001c0101001909d2);
  static const Tagx kContentCreatorName = const Tagx(0x001c0101001309d3);
  static const Tagx kContentCreatorIdentificationCodeSequence =
      const Tagx(0x001c0101001609d4);
  static const Tagx kAlternateContentDescriptionSequence =
      const Tagx(0x001c0101001609d5);
  static const Tagx kPresentationSizeMode = const Tagx(0x001c0101000509d6);
  static const Tagx kPresentationPixelSpacing = const Tagx(0x001c0102000709d7);
  static const Tagx kPresentationPixelAspectRatio =
      const Tagx(0x001c0102000b09d8);
  static const Tagx kPresentationPixelMagnificationRatio =
      const Tagx(0x001c0101000a09d9);
  static const Tagx kGraphicGroupLabel = const Tagx(0x001c0101000c09da);
  static const Tagx kGraphicGroupDescription = const Tagx(0x001c0101001809db);
  static const Tagx kCompoundGraphicSequence = const Tagx(0x001c0101001609dc);
  static const Tagx kCompoundGraphicInstanceID = const Tagx(0x001c0101001c09dd);
  static const Tagx kFontName = const Tagx(0x001c0101000c09de);
  static const Tagx kFontNameType = const Tagx(0x001c0101000509df);
  static const Tagx kCSSFontName = const Tagx(0x001c0101000c09e0);
  static const Tagx kRotationAngle = const Tagx(0x001c0101000909e1);
  static const Tagx kTextStyleSequence = const Tagx(0x001c0101001609e2);
  static const Tagx kLineStyleSequence = const Tagx(0x001c0101001609e3);
  static const Tagx kFillStyleSequence = const Tagx(0x001c0101001609e4);
  static const Tagx kGraphicGroupSequence = const Tagx(0x001c0101001609e5);
  static const Tagx kTextColorCIELabValue = const Tagx(0x001c0103001f09e6);
  static const Tagx kHorizontalAlignment = const Tagx(0x001c0101000509e7);
  static const Tagx kVerticalAlignment = const Tagx(0x001c0101000509e8);
  static const Tagx kShadowStyle = const Tagx(0x001c0101000509e9);
  static const Tagx kShadowOffsetX = const Tagx(0x001c0101000a09ea);
  static const Tagx kShadowOffsetY = const Tagx(0x001c0101000a09eb);
  static const Tagx kShadowColorCIELabValue = const Tagx(0x001c0103001f09ec);
  static const Tagx kUnderlined = const Tagx(0x001c0101000509ed);
  static const Tagx kBold = const Tagx(0x001c0101000509ee);
  static const Tagx kItalic = const Tagx(0x001c0101000509ef);
  static const Tagx kPatternOnColorCIELabValue = const Tagx(0x001c0103001f09f0);
  static const Tagx kPatternOffColorCIELabValue =
      const Tagx(0x001c0103001f09f1);
  static const Tagx kLineThickness = const Tagx(0x001c0101000a09f2);
  static const Tagx kLineDashingStyle = const Tagx(0x001c0101000509f3);
  static const Tagx kLinePattern = const Tagx(0x001c0101001c09f4);
  static const Tagx kFillPattern = const Tagx(0x001c0101000e09f5);
  static const Tagx kFillMode = const Tagx(0x001c0101000509f6);
  static const Tagx kShadowOpacity = const Tagx(0x001c0101000a09f7);
  static const Tagx kGapLength = const Tagx(0x001c0101000a09f8);
  static const Tagx kDiameterOfVisibility = const Tagx(0x001c0101000a09f9);
  static const Tagx kRotationPoint = const Tagx(0x001c0102000a09fa);
  static const Tagx kTickAlignment = const Tagx(0x001c0101000509fb);
  static const Tagx kShowTickLabel = const Tagx(0x001c0101000509fc);
  static const Tagx kTickLabelAlignment = const Tagx(0x001c0101000509fd);
  static const Tagx kCompoundGraphicUnits = const Tagx(0x001c0101000509fe);
  static const Tagx kPatternOnOpacity = const Tagx(0x001c0101000a09ff);
  static const Tagx kPatternOffOpacity = const Tagx(0x001c0101000a0a00);
  static const Tagx kMajorTicksSequence = const Tagx(0x001c010100160a01);
  static const Tagx kTickPosition = const Tagx(0x001c0101000a0a02);
  static const Tagx kTickLabel = const Tagx(0x001c010100140a03);
  static const Tagx kCompoundGraphicType = const Tagx(0x001c010100050a04);
  static const Tagx kGraphicGroupID = const Tagx(0x001c0101001c0a05);
  static const Tagx kShapeType = const Tagx(0x001c010100050a06);
  static const Tagx kRegistrationSequence = const Tagx(0x001c010100160a07);
  static const Tagx kMatrixRegistrationSequence =
      const Tagx(0x001c010100160a08);
  static const Tagx kMatrixSequence = const Tagx(0x001c010100160a09);
  static const Tagx kFrameOfReferenceTransformationMatrixType =
      const Tagx(0x001c010100050a0a);
  static const Tagx kRegistrationTypeCodeSequence =
      const Tagx(0x001c010100160a0b);
  static const Tagx kFiducialDescription = const Tagx(0x001c010100180a0c);
  static const Tagx kFiducialIdentifier = const Tagx(0x001c010100140a0d);
  static const Tagx kFiducialIdentifierCodeSequence =
      const Tagx(0x001c010100160a0e);
  static const Tagx kContourUncertaintyRadius = const Tagx(0x001c010100090a0f);
  static const Tagx kUsedFiducialsSequence = const Tagx(0x001c010100160a10);
  static const Tagx kGraphicCoordinatesDataSequence =
      const Tagx(0x001c010100160a11);
  static const Tagx kFiducialUID = const Tagx(0x001c0101001b0a12);
  static const Tagx kFiducialSetSequence = const Tagx(0x001c010100160a13);
  static const Tagx kFiducialSequence = const Tagx(0x001c010100160a14);
  static const Tagx kGraphicLayerRecommendedDisplayCIELabValue =
      const Tagx(0x001c0103001f0a15);
  static const Tagx kBlendingSequence = const Tagx(0x001c010100160a16);
  static const Tagx kRelativeOpacity = const Tagx(0x001c0101000a0a17);
  static const Tagx kReferencedSpatialRegistrationSequence =
      const Tagx(0x001c010100160a18);
  static const Tagx kBlendingPosition = const Tagx(0x001c010100050a19);
  static const Tagx kHangingProtocolName = const Tagx(0x001c010100140a1a);
  static const Tagx kHangingProtocolDescription =
      const Tagx(0x001c0101000c0a1b);
  static const Tagx kHangingProtocolLevel = const Tagx(0x001c010100050a1c);
  static const Tagx kHangingProtocolCreator = const Tagx(0x001c0101000c0a1d);
  static const Tagx kHangingProtocolCreationDateTime =
      const Tagx(0x001c010100080a1e);
  static const Tagx kHangingProtocolDefinitionSequence =
      const Tagx(0x001c010100160a1f);
  static const Tagx kHangingProtocolUserIdentificationCodeSequence =
      const Tagx(0x001c010100160a20);
  static const Tagx kHangingProtocolUserGroupName =
      const Tagx(0x001c0101000c0a21);
  static const Tagx kSourceHangingProtocolSequence =
      const Tagx(0x001c010100160a22);
  static const Tagx kNumberOfPriorsReferenced = const Tagx(0x001c0101001f0a23);
  static const Tagx kImageSetsSequence = const Tagx(0x001c010100160a24);
  static const Tagx kImageSetSelectorSequence = const Tagx(0x001c010100160a25);
  static const Tagx kImageSetSelectorUsageFlag = const Tagx(0x001c010100050a26);
  static const Tagx kSelectorAttribute = const Tagx(0x001c010100030a27);
  static const Tagx kSelectorValueNumber = const Tagx(0x001c0101001f0a28);
  static const Tagx kTimeBasedImageSetsSequence =
      const Tagx(0x001c010100160a29);
  static const Tagx kImageSetNumber = const Tagx(0x001c0101001f0a2a);
  static const Tagx kImageSetSelectorCategory = const Tagx(0x001c010100050a2b);
  static const Tagx kRelativeTime = const Tagx(0x001c0102001f0a2c);
  static const Tagx kRelativeTimeUnits = const Tagx(0x001c010100050a2d);
  static const Tagx kAbstractPriorValue = const Tagx(0x001c010200170a2e);
  static const Tagx kAbstractPriorCodeSequence = const Tagx(0x001c010100160a2f);
  static const Tagx kImageSetLabel = const Tagx(0x001c0101000c0a30);
  static const Tagx kSelectorAttributeVR = const Tagx(0x001c010100050a31);
  static const Tagx kSelectorSequencePointer = const Tagx(0x001c01ff00030a32);
  static const Tagx kSelectorSequencePointerPrivateCreator =
      const Tagx(0x001c01ff000c0a33);
  static const Tagx kSelectorAttributePrivateCreator =
      const Tagx(0x001c0101000c0a34);
  static const Tagx kSelectorATValue = const Tagx(0x001c01ff00030a35);
  static const Tagx kSelectorCSValue = const Tagx(0x001c01ff00050a36);
  static const Tagx kSelectorISValue = const Tagx(0x001c01ff000b0a37);
  static const Tagx kSelectorLOValue = const Tagx(0x001c01ff000c0a38);
  static const Tagx kSelectorLTValue = const Tagx(0x001c0101000d0a39);
  static const Tagx kSelectorPNValue = const Tagx(0x001c01ff00130a3a);
  static const Tagx kSelectorSHValue = const Tagx(0x001c01ff00140a3b);
  static const Tagx kSelectorSTValue = const Tagx(0x001c010100180a3c);
  static const Tagx kSelectorUTValue = const Tagx(0x001c010100200a3d);
  static const Tagx kSelectorDSValue = const Tagx(0x001c01ff00070a3e);
  static const Tagx kSelectorODValue = const Tagx(0x001c0101000f0a3f);
  static const Tagx kSelectorFDValue = const Tagx(0x001c01ff00090a40);
  static const Tagx kSelectorFLValue = const Tagx(0x001c01ff000a0a41);
  static const Tagx kSelectorULValue = const Tagx(0x001c01ff001c0a42);
  static const Tagx kSelectorUSValue = const Tagx(0x001c01ff001f0a43);
  static const Tagx kSelectorSLValue = const Tagx(0x001c01ff00150a44);
  static const Tagx kSelectorSSValue = const Tagx(0x001c01ff00170a45);
  static const Tagx kSelectorCodeSequenceValue = const Tagx(0x001c010100160a46);
  static const Tagx kNumberOfScreens = const Tagx(0x001c0101001f0a47);
  static const Tagx kNominalScreenDefinitionSequence =
      const Tagx(0x001c010100160a48);
  static const Tagx kNumberOfVerticalPixels = const Tagx(0x001c0101001f0a49);
  static const Tagx kNumberOfHorizontalPixels = const Tagx(0x001c0101001f0a4a);
  static const Tagx kDisplayEnvironmentSpatialPosition =
      const Tagx(0x001c010400090a4b);
  static const Tagx kScreenMinimumGrayscaleBitDepth =
      const Tagx(0x001c0101001f0a4c);
  static const Tagx kScreenMinimumColorBitDepth =
      const Tagx(0x001c0101001f0a4d);
  static const Tagx kApplicationMaximumRepaintTime =
      const Tagx(0x001c0101001f0a4e);
  static const Tagx kDisplaySetsSequence = const Tagx(0x001c010100160a4f);
  static const Tagx kDisplaySetNumber = const Tagx(0x001c0101001f0a50);
  static const Tagx kDisplaySetLabel = const Tagx(0x001c0101000c0a51);
  static const Tagx kDisplaySetPresentationGroup =
      const Tagx(0x001c0101001f0a52);
  static const Tagx kDisplaySetPresentationGroupDescription =
      const Tagx(0x001c0101000c0a53);
  static const Tagx kPartialDataDisplayHandling =
      const Tagx(0x001c010100050a54);
  static const Tagx kSynchronizedScrollingSequence =
      const Tagx(0x001c010100160a55);
  static const Tagx kDisplaySetScrollingGroup = const Tagx(0x001c01ff001f0a56);
  static const Tagx kNavigationIndicatorSequence =
      const Tagx(0x001c010100160a57);
  static const Tagx kNavigationDisplaySet = const Tagx(0x001c0101001f0a58);
  static const Tagx kReferenceDisplaySets = const Tagx(0x001c01ff001f0a59);
  static const Tagx kImageBoxesSequence = const Tagx(0x001c010100160a5a);
  static const Tagx kImageBoxNumber = const Tagx(0x001c0101001f0a5b);
  static const Tagx kImageBoxLayoutType = const Tagx(0x001c010100050a5c);
  static const Tagx kImageBoxTileHorizontalDimension =
      const Tagx(0x001c0101001f0a5d);
  static const Tagx kImageBoxTileVerticalDimension =
      const Tagx(0x001c0101001f0a5e);
  static const Tagx kImageBoxScrollDirection = const Tagx(0x001c010100050a5f);
  static const Tagx kImageBoxSmallScrollType = const Tagx(0x001c010100050a60);
  static const Tagx kImageBoxSmallScrollAmount = const Tagx(0x001c0101001f0a61);
  static const Tagx kImageBoxLargeScrollType = const Tagx(0x001c010100050a62);
  static const Tagx kImageBoxLargeScrollAmount = const Tagx(0x001c0101001f0a63);
  static const Tagx kImageBoxOverlapPriority = const Tagx(0x001c0101001f0a64);
  static const Tagx kCineRelativeToRealTime = const Tagx(0x001c010100090a65);
  static const Tagx kFilterOperationsSequence = const Tagx(0x001c010100160a66);
  static const Tagx kFilterByCategory = const Tagx(0x001c010100050a67);
  static const Tagx kFilterByAttributePresence = const Tagx(0x001c010100050a68);
  static const Tagx kFilterByOperator = const Tagx(0x001c010100050a69);
  static const Tagx kStructuredDisplayBackgroundCIELabValue =
      const Tagx(0x001c0103001f0a6a);
  static const Tagx kEmptyImageBoxCIELabValue = const Tagx(0x001c0103001f0a6b);
  static const Tagx kStructuredDisplayImageBoxSequence =
      const Tagx(0x001c010100160a6c);
  static const Tagx kStructuredDisplayTextBoxSequence =
      const Tagx(0x001c010100160a6d);
  static const Tagx kReferencedFirstFrameSequence =
      const Tagx(0x001c010100160a6e);
  static const Tagx kImageBoxSynchronizationSequence =
      const Tagx(0x001c010100160a6f);
  static const Tagx kSynchronizedImageBoxList = const Tagx(0x001c01ff001f0a70);
  static const Tagx kTypeOfSynchronization = const Tagx(0x001c010100050a71);
  static const Tagx kBlendingOperationType = const Tagx(0x001c010100050a72);
  static const Tagx kReformattingOperationType = const Tagx(0x001c010100050a73);
  static const Tagx kReformattingThickness = const Tagx(0x001c010100090a74);
  static const Tagx kReformattingInterval = const Tagx(0x001c010100090a75);
  static const Tagx kReformattingOperationInitialViewDirection =
      const Tagx(0x001c010100050a76);
  static const Tagx kThreeDRenderingType = const Tagx(0x001c01ff00050a77);
  static const Tagx kSortingOperationsSequence = const Tagx(0x001c010100160a78);
  static const Tagx kSortByCategory = const Tagx(0x001c010100050a79);
  static const Tagx kSortingDirection = const Tagx(0x001c010100050a7a);
  static const Tagx kDisplaySetPatientOrientation =
      const Tagx(0x001c010200050a7b);
  static const Tagx kVOIType = const Tagx(0x001c010100050a7c);
  static const Tagx kPseudoColorType = const Tagx(0x001c010100050a7d);
  static const Tagx kPseudoColorPaletteInstanceReferenceSequence =
      const Tagx(0x001c010100160a7e);
  static const Tagx kShowGrayscaleInverted = const Tagx(0x001c010100050a7f);
  static const Tagx kShowImageTrueSizeFlag = const Tagx(0x001c010100050a80);
  static const Tagx kShowGraphicAnnotationFlag = const Tagx(0x001c010100050a81);
  static const Tagx kShowPatientDemographicsFlag =
      const Tagx(0x001c010100050a82);
  static const Tagx kShowAcquisitionTechniquesFlag =
      const Tagx(0x001c010100050a83);
  static const Tagx kDisplaySetHorizontalJustification =
      const Tagx(0x001c010100050a84);
  static const Tagx kDisplaySetVerticalJustification =
      const Tagx(0x001c010100050a85);
  static const Tagx kContinuationStartMeterset = const Tagx(0x001c010100090a86);
  static const Tagx kContinuationEndMeterset = const Tagx(0x001c010100090a87);
  static const Tagx kProcedureStepState = const Tagx(0x001c010100050a88);
  static const Tagx kProcedureStepProgressInformationSequence =
      const Tagx(0x001c010100160a89);
  static const Tagx kProcedureStepProgress = const Tagx(0x001c010100070a8a);
  static const Tagx kProcedureStepProgressDescription =
      const Tagx(0x001c010100180a8b);
  static const Tagx kProcedureStepCommunicationsURISequence =
      const Tagx(0x001c010100160a8c);
  static const Tagx kContactURI = const Tagx(0x001c0101001e0a8d);
  static const Tagx kContactDisplayName = const Tagx(0x001c0101000c0a8e);
  static const Tagx kProcedureStepDiscontinuationReasonCodeSequence =
      const Tagx(0x001c010100160a8f);
  static const Tagx kBeamTaskSequence = const Tagx(0x001c010100160a90);
  static const Tagx kBeamTaskType = const Tagx(0x001c010100050a91);
  static const Tagx kBeamOrderIndexTrial = const Tagx(0x005c0101000b0a92);
  static const Tagx kAutosequenceFlag = const Tagx(0x001c010100050a93);
  static const Tagx kTableTopVerticalAdjustedPosition =
      const Tagx(0x001c010100090a94);
  static const Tagx kTableTopLongitudinalAdjustedPosition =
      const Tagx(0x001c010100090a95);
  static const Tagx kTableTopLateralAdjustedPosition =
      const Tagx(0x001c010100090a96);
  static const Tagx kPatientSupportAdjustedAngle =
      const Tagx(0x001c010100090a97);
  static const Tagx kTableTopEccentricAdjustedAngle =
      const Tagx(0x001c010100090a98);
  static const Tagx kTableTopPitchAdjustedAngle =
      const Tagx(0x001c010100090a99);
  static const Tagx kTableTopRollAdjustedAngle = const Tagx(0x001c010100090a9a);
  static const Tagx kDeliveryVerificationImageSequence =
      const Tagx(0x001c010100160a9b);
  static const Tagx kVerificationImageTiming = const Tagx(0x001c010100050a9c);
  static const Tagx kDoubleExposureFlag = const Tagx(0x001c010100050a9d);
  static const Tagx kDoubleExposureOrdering = const Tagx(0x001c010100050a9e);
  static const Tagx kDoubleExposureMetersetTrial =
      const Tagx(0x005c010100070a9f);
  static const Tagx kDoubleExposureFieldDeltaTrial =
      const Tagx(0x005c010400070aa0);
  static const Tagx kRelatedReferenceRTImageSequence =
      const Tagx(0x001c010100160aa1);
  static const Tagx kGeneralMachineVerificationSequence =
      const Tagx(0x001c010100160aa2);
  static const Tagx kConventionalMachineVerificationSequence =
      const Tagx(0x001c010100160aa3);
  static const Tagx kIonMachineVerificationSequence =
      const Tagx(0x001c010100160aa4);
  static const Tagx kFailedAttributesSequence = const Tagx(0x001c010100160aa5);
  static const Tagx kOverriddenAttributesSequence =
      const Tagx(0x001c010100160aa6);
  static const Tagx kConventionalControlPointVerificationSequence =
      const Tagx(0x001c010100160aa7);
  static const Tagx kIonControlPointVerificationSequence =
      const Tagx(0x001c010100160aa8);
  static const Tagx kAttributeOccurrenceSequence =
      const Tagx(0x001c010100160aa9);
  static const Tagx kAttributeOccurrencePointer =
      const Tagx(0x001c010100030aaa);
  static const Tagx kAttributeItemSelector = const Tagx(0x001c0101001c0aab);
  static const Tagx kAttributeOccurrencePrivateCreator =
      const Tagx(0x001c0101000c0aac);
  static const Tagx kSelectorSequencePointerItems =
      const Tagx(0x001c01ff000b0aad);
  static const Tagx kScheduledProcedureStepPriority =
      const Tagx(0x001c010100050aae);
  static const Tagx kWorklistLabel = const Tagx(0x001c0101000c0aaf);
  static const Tagx kProcedureStepLabel = const Tagx(0x001c0101000c0ab0);
  static const Tagx kScheduledProcessingParametersSequence =
      const Tagx(0x001c010100160ab1);
  static const Tagx kPerformedProcessingParametersSequence =
      const Tagx(0x001c010100160ab2);
  static const Tagx kUnifiedProcedureStepPerformedProcedureSequence =
      const Tagx(0x001c010100160ab3);
  static const Tagx kRelatedProcedureStepSequence =
      const Tagx(0x005c010100160ab4);
  static const Tagx kProcedureStepRelationshipType =
      const Tagx(0x005c0101000c0ab5);
  static const Tagx kReplacedProcedureStepSequence =
      const Tagx(0x001c010100160ab6);
  static const Tagx kDeletionLock = const Tagx(0x001c0101000c0ab7);
  static const Tagx kReceivingAE = const Tagx(0x001c010100010ab8);
  static const Tagx kRequestingAE = const Tagx(0x001c010100010ab9);
  static const Tagx kReasonForCancellation = const Tagx(0x001c0101000d0aba);
  static const Tagx kSCPStatus = const Tagx(0x001c010100050abb);
  static const Tagx kSubscriptionListStatus = const Tagx(0x001c010100050abc);
  static const Tagx kUnifiedProcedureStepListStatus =
      const Tagx(0x001c010100050abd);
  static const Tagx kBeamOrderIndex = const Tagx(0x001c0101001c0abe);
  static const Tagx kDoubleExposureMeterset = const Tagx(0x001c010100090abf);
  static const Tagx kDoubleExposureFieldDelta = const Tagx(0x001c010400090ac0);
  static const Tagx kImplantAssemblyTemplateName =
      const Tagx(0x001c0101000c0ac1);
  static const Tagx kImplantAssemblyTemplateIssuer =
      const Tagx(0x001c0101000c0ac2);
  static const Tagx kImplantAssemblyTemplateVersion =
      const Tagx(0x001c0101000c0ac3);
  static const Tagx kReplacedImplantAssemblyTemplateSequence =
      const Tagx(0x001c010100160ac4);
  static const Tagx kImplantAssemblyTemplateType =
      const Tagx(0x001c010100050ac5);
  static const Tagx kOriginalImplantAssemblyTemplateSequence =
      const Tagx(0x001c010100160ac6);
  static const Tagx kDerivationImplantAssemblyTemplateSequence =
      const Tagx(0x001c010100160ac7);
  static const Tagx kImplantAssemblyTemplateTargetAnatomySequence =
      const Tagx(0x001c010100160ac8);
  static const Tagx kProcedureTypeCodeSequence = const Tagx(0x001c010100160ac9);
  static const Tagx kSurgicalTechnique = const Tagx(0x001c0101000c0aca);
  static const Tagx kComponentTypesSequence = const Tagx(0x001c010100160acb);
  static const Tagx kComponentTypeCodeSequence = const Tagx(0x001c010100050acc);
  static const Tagx kExclusiveComponentType = const Tagx(0x001c010100050acd);
  static const Tagx kMandatoryComponentType = const Tagx(0x001c010100050ace);
  static const Tagx kComponentSequence = const Tagx(0x001c010100160acf);
  static const Tagx kComponentID = const Tagx(0x001c0101001f0ad0);
  static const Tagx kComponentAssemblySequence = const Tagx(0x001c010100160ad1);
  static const Tagx kComponent1ReferencedID = const Tagx(0x001c0101001f0ad2);
  static const Tagx kComponent1ReferencedMatingFeatureSetID =
      const Tagx(0x001c0101001f0ad3);
  static const Tagx kComponent1ReferencedMatingFeatureID =
      const Tagx(0x001c0101001f0ad4);
  static const Tagx kComponent2ReferencedID = const Tagx(0x001c0101001f0ad5);
  static const Tagx kComponent2ReferencedMatingFeatureSetID =
      const Tagx(0x001c0101001f0ad6);
  static const Tagx kComponent2ReferencedMatingFeatureID =
      const Tagx(0x001c0101001f0ad7);
  static const Tagx kImplantTemplateGroupName = const Tagx(0x001c0101000c0ad8);
  static const Tagx kImplantTemplateGroupDescription =
      const Tagx(0x001c010100180ad9);
  static const Tagx kImplantTemplateGroupIssuer =
      const Tagx(0x001c0101000c0ada);
  static const Tagx kImplantTemplateGroupVersion =
      const Tagx(0x001c0101000c0adb);
  static const Tagx kReplacedImplantTemplateGroupSequence =
      const Tagx(0x001c010100160adc);
  static const Tagx kImplantTemplateGroupTargetAnatomySequence =
      const Tagx(0x001c010100160add);
  static const Tagx kImplantTemplateGroupMembersSequence =
      const Tagx(0x001c010100160ade);
  static const Tagx kImplantTemplateGroupMemberID =
      const Tagx(0x001c0101001f0adf);
  static const Tagx kThreeDImplantTemplateGroupMemberMatchingPoint =
      const Tagx(0x001c010300090ae0);
  static const Tagx kThreeDImplantTemplateGroupMemberMatchingAxes =
      const Tagx(0x001c010900090ae1);
  static const Tagx kImplantTemplateGroupMemberMatching2DCoordinatesSequence =
      const Tagx(0x001c010100160ae2);
  static const Tagx kTwoDImplantTemplateGroupMemberMatchingPoint =
      const Tagx(0x001c010200090ae3);
  static const Tagx kTwoDImplantTemplateGroupMemberMatchingAxes =
      const Tagx(0x001c010400090ae4);
  static const Tagx kImplantTemplateGroupVariationDimensionSequence =
      const Tagx(0x001c010100160ae5);
  static const Tagx kImplantTemplateGroupVariationDimensionName =
      const Tagx(0x001c0101000c0ae6);
  static const Tagx kImplantTemplateGroupVariationDimensionRankSequence =
      const Tagx(0x001c010100160ae7);
  static const Tagx kReferencedImplantTemplateGroupMemberID =
      const Tagx(0x001c0101001f0ae8);
  static const Tagx kImplantTemplateGroupVariationDimensionRank =
      const Tagx(0x001c0101001f0ae9);
  static const Tagx kSurfaceScanAcquisitionTypeCodeSequence =
      const Tagx(0x001c010100160aea);
  static const Tagx kSurfaceScanModeCodeSequence =
      const Tagx(0x001c010100160aeb);
  static const Tagx kRegistrationMethodCodeSequence =
      const Tagx(0x001c010100160aec);
  static const Tagx kShotDurationTime = const Tagx(0x001c010100090aed);
  static const Tagx kShotOffsetTime = const Tagx(0x001c010100090aee);
  static const Tagx kSurfacePointPresentationValueData =
      const Tagx(0x001c01ff001f0aef);
  static const Tagx kSurfacePointColorCIELabValueData =
      const Tagx(0x001c03ff001f0af0);
  static const Tagx kUVMappingSequence = const Tagx(0x001c010100160af1);
  static const Tagx kTextureLabel = const Tagx(0x001c010100140af2);
  static const Tagx kUValueData = const Tagx(0x001c01ff00100af3);
  static const Tagx kVValueData = const Tagx(0x001c01ff00100af4);
  static const Tagx kReferencedTextureSequence = const Tagx(0x001c010100160af5);
  static const Tagx kReferencedSurfaceDataSequence =
      const Tagx(0x001c010100160af6);
  static const Tagx kStorageMediaFileSetID = const Tagx(0x001c010100140af7);
  static const Tagx kStorageMediaFileSetUID = const Tagx(0x001c0101001b0af8);
  static const Tagx kIconImageSequence = const Tagx(0x001c010100160af9);
  static const Tagx kTopicTitle = const Tagx(0x005c0101000c0afa);
  static const Tagx kTopicSubject = const Tagx(0x005c010100180afb);
  static const Tagx kTopicAuthor = const Tagx(0x005c0101000c0afc);
  static const Tagx kTopicKeywords = const Tagx(0x005c0120000c0afd);
  static const Tagx kSOPInstanceStatus = const Tagx(0x001c010100050afe);
  static const Tagx kSOPAuthorizationDateTime = const Tagx(0x001c010100080aff);
  static const Tagx kSOPAuthorizationComment = const Tagx(0x001c0101000d0b00);
  static const Tagx kAuthorizationEquipmentCertificationNumber =
      const Tagx(0x001c0101000c0b01);
  static const Tagx kMACIDNumber = const Tagx(0x001c0101001f0b02);
  static const Tagx kMACCalculationTransferSyntaxUID =
      const Tagx(0x001c0101001b0b03);
  static const Tagx kMACAlgorithm = const Tagx(0x001c010100050b04);
  static const Tagx kDataElementsSigned = const Tagx(0x001c01ff00030b05);
  static const Tagx kDigitalSignatureUID = const Tagx(0x001c0101001b0b06);
  static const Tagx kDigitalSignatureDateTime = const Tagx(0x001c010100080b07);
  static const Tagx kCertificateType = const Tagx(0x001c010100050b08);
  static const Tagx kCertificateOfSigner = const Tagx(0x001c0101000e0b09);
  static const Tagx kSignature = const Tagx(0x001c0101000e0b0a);
  static const Tagx kCertifiedTimestampType = const Tagx(0x001c010100050b0b);
  static const Tagx kCertifiedTimestamp = const Tagx(0x001c0101000e0b0c);
  static const Tagx kDigitalSignaturePurposeCodeSequence =
      const Tagx(0x001c010100160b0d);
  static const Tagx kReferencedDigitalSignatureSequence =
      const Tagx(0x001c010100160b0e);
  static const Tagx kReferencedSOPInstanceMACSequence =
      const Tagx(0x001c010100160b0f);
  static const Tagx kMAC = const Tagx(0x001c0101000e0b10);
  static const Tagx kEncryptedAttributesSequence =
      const Tagx(0x001c010100160b11);
  static const Tagx kEncryptedContentTransferSyntaxUID =
      const Tagx(0x001c0101001b0b12);
  static const Tagx kEncryptedContent = const Tagx(0x001c0101000e0b13);
  static const Tagx kModifiedAttributesSequence =
      const Tagx(0x001c010100160b14);
  static const Tagx kOriginalAttributesSequence =
      const Tagx(0x001c010100160b15);
  static const Tagx kAttributeModificationDateTime =
      const Tagx(0x001c010100080b16);
  static const Tagx kModifyingSystem = const Tagx(0x001c0101000c0b17);
  static const Tagx kSourceOfPreviousValues = const Tagx(0x001c0101000c0b18);
  static const Tagx kReasonForTheAttributeModification =
      const Tagx(0x001c010100050b19);
  static const Tagx kEscapeTriplet = const Tagx(0x005c0103001f0b1a);
  static const Tagx kRunLengthTriplet = const Tagx(0x005c0103001f0b1b);
  static const Tagx kHuffmanTableSize = const Tagx(0x005c0101001f0b1c);
  static const Tagx kHuffmanTableTriplet = const Tagx(0x005c0103001f0b1d);
  static const Tagx kShiftTableSize = const Tagx(0x005c0101001f0b1e);
  static const Tagx kShiftTableTriplet = const Tagx(0x005c0103001f0b1f);
  static const Tagx kZonalMap = const Tagx(0x005c01ff001f0b20);
  static const Tagx kNumberOfCopies = const Tagx(0x001c0101000b0b21);
  static const Tagx kPrinterConfigurationSequence =
      const Tagx(0x001c010100160b22);
  static const Tagx kPrintPriority = const Tagx(0x001c010100050b23);
  static const Tagx kMediumType = const Tagx(0x001c010100050b24);
  static const Tagx kFilmDestination = const Tagx(0x001c010100050b25);
  static const Tagx kFilmSessionLabel = const Tagx(0x001c0101000c0b26);
  static const Tagx kMemoryAllocation = const Tagx(0x001c0101000b0b27);
  static const Tagx kMaximumMemoryAllocation = const Tagx(0x001c0101000b0b28);
  static const Tagx kColorImagePrintingFlag = const Tagx(0x005c010100050b29);
  static const Tagx kCollationFlag = const Tagx(0x005c010100050b2a);
  static const Tagx kAnnotationFlag = const Tagx(0x005c010100050b2b);
  static const Tagx kImageOverlayFlag = const Tagx(0x005c010100050b2c);
  static const Tagx kPresentationLUTFlag = const Tagx(0x005c010100050b2d);
  static const Tagx kImageBoxPresentationLUTFlag =
      const Tagx(0x005c010100050b2e);
  static const Tagx kMemoryBitDepth = const Tagx(0x001c0101001f0b2f);
  static const Tagx kPrintingBitDepth = const Tagx(0x001c0101001f0b30);
  static const Tagx kMediaInstalledSequence = const Tagx(0x001c010100160b31);
  static const Tagx kOtherMediaAvailableSequence =
      const Tagx(0x001c010100160b32);
  static const Tagx kSupportedImageDisplayFormatsSequence =
      const Tagx(0x001c010100160b33);
  static const Tagx kReferencedFilmBoxSequence = const Tagx(0x001c010100160b34);
  static const Tagx kReferencedStoredPrintSequence =
      const Tagx(0x005c010100160b35);
  static const Tagx kImageDisplayFormat = const Tagx(0x001c010100180b36);
  static const Tagx kAnnotationDisplayFormatID = const Tagx(0x001c010100050b37);
  static const Tagx kFilmOrientation = const Tagx(0x001c010100050b38);
  static const Tagx kFilmSizeID = const Tagx(0x001c010100050b39);
  static const Tagx kPrinterResolutionID = const Tagx(0x001c010100050b3a);
  static const Tagx kDefaultPrinterResolutionID =
      const Tagx(0x001c010100050b3b);
  static const Tagx kMagnificationType = const Tagx(0x001c010100050b3c);
  static const Tagx kSmoothingType = const Tagx(0x001c010100050b3d);
  static const Tagx kDefaultMagnificationType = const Tagx(0x001c010100050b3e);
  static const Tagx kOtherMagnificationTypesAvailable =
      const Tagx(0x001c01ff00050b3f);
  static const Tagx kDefaultSmoothingType = const Tagx(0x001c010100050b40);
  static const Tagx kOtherSmoothingTypesAvailable =
      const Tagx(0x001c01ff00050b41);
  static const Tagx kBorderDensity = const Tagx(0x001c010100050b42);
  static const Tagx kEmptyImageDensity = const Tagx(0x001c010100050b43);
  static const Tagx kMinDensity = const Tagx(0x001c0101001f0b44);
  static const Tagx kMaxDensity = const Tagx(0x001c0101001f0b45);
  static const Tagx kTrim = const Tagx(0x001c010100050b46);
  static const Tagx kConfigurationInformation = const Tagx(0x001c010100180b47);
  static const Tagx kConfigurationInformationDescription =
      const Tagx(0x001c0101000d0b48);
  static const Tagx kMaximumCollatedFilms = const Tagx(0x001c0101000b0b49);
  static const Tagx kIllumination = const Tagx(0x001c0101001f0b4a);
  static const Tagx kReflectedAmbientLight = const Tagx(0x001c0101001f0b4b);
  static const Tagx kPrinterPixelSpacing = const Tagx(0x001c010200070b4c);
  static const Tagx kReferencedFilmSessionSequence =
      const Tagx(0x001c010100160b4d);
  static const Tagx kReferencedImageBoxSequence =
      const Tagx(0x001c010100160b4e);
  static const Tagx kReferencedBasicAnnotationBoxSequence =
      const Tagx(0x001c010100160b4f);
  static const Tagx kImageBoxPosition = const Tagx(0x001c0101001f0b50);
  static const Tagx kPolarity = const Tagx(0x001c010100050b51);
  static const Tagx kRequestedImageSize = const Tagx(0x001c010100070b52);
  static const Tagx kRequestedDecimateCropBehavior =
      const Tagx(0x001c010100050b53);
  static const Tagx kRequestedResolutionID = const Tagx(0x001c010100050b54);
  static const Tagx kRequestedImageSizeFlag = const Tagx(0x001c010100050b55);
  static const Tagx kDecimateCropResult = const Tagx(0x001c010100050b56);
  static const Tagx kBasicGrayscaleImageSequence =
      const Tagx(0x001c010100160b57);
  static const Tagx kBasicColorImageSequence = const Tagx(0x001c010100160b58);
  static const Tagx kReferencedImageOverlayBoxSequence =
      const Tagx(0x005c010100160b59);
  static const Tagx kReferencedVOILUTBoxSequence =
      const Tagx(0x005c010100160b5a);
  static const Tagx kAnnotationPosition = const Tagx(0x001c0101001f0b5b);
  static const Tagx kTextString = const Tagx(0x001c0101000c0b5c);
  static const Tagx kReferencedOverlayPlaneSequence =
      const Tagx(0x005c010100160b5d);
  static const Tagx kReferencedOverlayPlaneGroups =
      const Tagx(0x005c0163001f0b5e);
  static const Tagx kOverlayPixelDataSequence = const Tagx(0x005c010100160b5f);
  static const Tagx kOverlayMagnificationType = const Tagx(0x005c010100050b60);
  static const Tagx kOverlaySmoothingType = const Tagx(0x005c010100050b61);
  static const Tagx kOverlayOrImageMagnification =
      const Tagx(0x005c010100050b62);
  static const Tagx kMagnifyToNumberOfColumns = const Tagx(0x005c0101001f0b63);
  static const Tagx kOverlayForegroundDensity = const Tagx(0x005c010100050b64);
  static const Tagx kOverlayBackgroundDensity = const Tagx(0x005c010100050b65);
  static const Tagx kOverlayMode = const Tagx(0x005c010100050b66);
  static const Tagx kThresholdDensity = const Tagx(0x005c010100050b67);
  static const Tagx kReferencedImageBoxSequenceRetired =
      const Tagx(0x005c010100160b68);
  static const Tagx kPresentationLUTSequence = const Tagx(0x001c010100160b69);
  static const Tagx kPresentationLUTShape = const Tagx(0x001c010100050b6a);
  static const Tagx kReferencedPresentationLUTSequence =
      const Tagx(0x001c010100160b6b);
  static const Tagx kPrintJobID = const Tagx(0x005c010100140b6c);
  static const Tagx kExecutionStatus = const Tagx(0x001c010100050b6d);
  static const Tagx kExecutionStatusInfo = const Tagx(0x001c010100050b6e);
  static const Tagx kCreationDate = const Tagx(0x001c010100060b6f);
  static const Tagx kCreationTime = const Tagx(0x001c010100190b70);
  static const Tagx kOriginator = const Tagx(0x001c010100010b71);
  static const Tagx kDestinationAE = const Tagx(0x005c010100010b72);
  static const Tagx kOwnerID = const Tagx(0x001c010100140b73);
  static const Tagx kNumberOfFilms = const Tagx(0x001c0101000b0b74);
  static const Tagx kReferencedPrintJobSequencePullStoredPrint =
      const Tagx(0x005c010100160b75);
  static const Tagx kPrinterStatus = const Tagx(0x001c010100050b76);
  static const Tagx kPrinterStatusInfo = const Tagx(0x001c010100050b77);
  static const Tagx kPrinterName = const Tagx(0x001c0101000c0b78);
  static const Tagx kPrintQueueID = const Tagx(0x005c010100140b79);
  static const Tagx kQueueStatus = const Tagx(0x005c010100050b7a);
  static const Tagx kPrintJobDescriptionSequence =
      const Tagx(0x005c010100160b7b);
  static const Tagx kReferencedPrintJobSequence =
      const Tagx(0x005c010100160b7c);
  static const Tagx kPrintManagementCapabilitiesSequence =
      const Tagx(0x005c010100160b7d);
  static const Tagx kPrinterCharacteristicsSequence =
      const Tagx(0x005c010100160b7e);
  static const Tagx kFilmBoxContentSequence = const Tagx(0x005c010100160b7f);
  static const Tagx kImageBoxContentSequence = const Tagx(0x005c010100160b80);
  static const Tagx kAnnotationContentSequence = const Tagx(0x005c010100160b81);
  static const Tagx kImageOverlayBoxContentSequence =
      const Tagx(0x005c010100160b82);
  static const Tagx kPresentationLUTContentSequence =
      const Tagx(0x005c010100160b83);
  static const Tagx kProposedStudySequence = const Tagx(0x005c010100160b84);
  static const Tagx kOriginalImageSequence = const Tagx(0x005c010100160b85);
  static const Tagx kLabelUsingInformationExtractedFromInstances =
      const Tagx(0x001c010100050b86);
  static const Tagx kLabelText = const Tagx(0x001c010100200b87);
  static const Tagx kLabelStyleSelection = const Tagx(0x001c010100050b88);
  static const Tagx kMediaDisposition = const Tagx(0x001c0101000d0b89);
  static const Tagx kBarcodeValue = const Tagx(0x001c0101000d0b8a);
  static const Tagx kBarcodeSymbology = const Tagx(0x001c010100050b8b);
  static const Tagx kAllowMediaSplitting = const Tagx(0x001c010100050b8c);
  static const Tagx kIncludeNonDICOMObjects = const Tagx(0x001c010100050b8d);
  static const Tagx kIncludeDisplayApplication = const Tagx(0x001c010100050b8e);
  static const Tagx kPreserveCompositeInstancesAfterMediaCreation =
      const Tagx(0x001c010100050b8f);
  static const Tagx kTotalNumberOfPiecesOfMediaCreated =
      const Tagx(0x001c0101001f0b90);
  static const Tagx kRequestedMediaApplicationProfile =
      const Tagx(0x001c0101000c0b91);
  static const Tagx kReferencedStorageMediaSequence =
      const Tagx(0x001c010100160b92);
  static const Tagx kFailureAttributes = const Tagx(0x001c01ff00030b93);
  static const Tagx kAllowLossyCompression = const Tagx(0x001c010100050b94);
  static const Tagx kRequestPriority = const Tagx(0x001c010100050b95);
  static const Tagx kRTImageLabel = const Tagx(0x001c010100140b96);
  static const Tagx kRTImageName = const Tagx(0x001c0101000c0b97);
  static const Tagx kRTImageDescription = const Tagx(0x001c010100180b98);
  static const Tagx kReportedValuesOrigin = const Tagx(0x001c010100050b99);
  static const Tagx kRTImagePlane = const Tagx(0x001c010100050b9a);
  static const Tagx kXRayImageReceptorTranslation =
      const Tagx(0x001c010300070b9b);
  static const Tagx kXRayImageReceptorAngle = const Tagx(0x001c010100070b9c);
  static const Tagx kRTImageOrientation = const Tagx(0x001c010600070b9d);
  static const Tagx kImagePlanePixelSpacing = const Tagx(0x001c010200070b9e);
  static const Tagx kRTImagePosition = const Tagx(0x001c010200070b9f);
  static const Tagx kRadiationMachineName = const Tagx(0x001c010100140ba0);
  static const Tagx kRadiationMachineSAD = const Tagx(0x001c010100070ba1);
  static const Tagx kRadiationMachineSSD = const Tagx(0x001c010100070ba2);
  static const Tagx kRTImageSID = const Tagx(0x001c010100070ba3);
  static const Tagx kSourceToReferenceObjectDistance =
      const Tagx(0x001c010100070ba4);
  static const Tagx kFractionNumber = const Tagx(0x001c0101000b0ba5);
  static const Tagx kExposureSequence = const Tagx(0x001c010100160ba6);
  static const Tagx kMetersetExposure = const Tagx(0x001c010100070ba7);
  static const Tagx kDiaphragmPosition = const Tagx(0x001c010400070ba8);
  static const Tagx kFluenceMapSequence = const Tagx(0x001c010100160ba9);
  static const Tagx kFluenceDataSource = const Tagx(0x001c010100050baa);
  static const Tagx kFluenceDataScale = const Tagx(0x001c010100070bab);
  static const Tagx kPrimaryFluenceModeSequence =
      const Tagx(0x001c010100160bac);
  static const Tagx kFluenceMode = const Tagx(0x001c010100050bad);
  static const Tagx kFluenceModeID = const Tagx(0x001c010100140bae);
  static const Tagx kDVHType = const Tagx(0x001c010100050baf);
  static const Tagx kDoseUnits = const Tagx(0x001c010100050bb0);
  static const Tagx kDoseType = const Tagx(0x001c010100050bb1);
  static const Tagx kSpatialTransformOfDose = const Tagx(0x001c010100050bb2);
  static const Tagx kDoseComment = const Tagx(0x001c0101000c0bb3);
  static const Tagx kNormalizationPoint = const Tagx(0x001c010300070bb4);
  static const Tagx kDoseSummationType = const Tagx(0x001c010100050bb5);
  static const Tagx kGridFrameOffsetVector = const Tagx(0x001c01ff00070bb6);
  static const Tagx kDoseGridScaling = const Tagx(0x001c010100070bb7);
  static const Tagx kRTDoseROISequence = const Tagx(0x001c010100160bb8);
  static const Tagx kDoseValue = const Tagx(0x001c010100070bb9);
  static const Tagx kTissueHeterogeneityCorrection =
      const Tagx(0x001c010300050bba);
  static const Tagx kDVHNormalizationPoint = const Tagx(0x001c010300070bbb);
  static const Tagx kDVHNormalizationDoseValue = const Tagx(0x001c010100070bbc);
  static const Tagx kDVHSequence = const Tagx(0x001c010100160bbd);
  static const Tagx kDVHDoseScaling = const Tagx(0x001c010100070bbe);
  static const Tagx kDVHVolumeUnits = const Tagx(0x001c010100050bbf);
  static const Tagx kDVHNumberOfBins = const Tagx(0x001c0101000b0bc0);
  static const Tagx kDVHData = const Tagx(0x001c02ff00070bc1);
  static const Tagx kDVHReferencedROISequence = const Tagx(0x001c010100160bc2);
  static const Tagx kDVHROIContributionType = const Tagx(0x001c010100050bc3);
  static const Tagx kDVHMinimumDose = const Tagx(0x001c010100070bc4);
  static const Tagx kDVHMaximumDose = const Tagx(0x001c010100070bc5);
  static const Tagx kDVHMeanDose = const Tagx(0x001c010100070bc6);
  static const Tagx kStructureSetLabel = const Tagx(0x001c010100140bc7);
  static const Tagx kStructureSetName = const Tagx(0x001c0101000c0bc8);
  static const Tagx kStructureSetDescription = const Tagx(0x001c010100180bc9);
  static const Tagx kStructureSetDate = const Tagx(0x001c010100060bca);
  static const Tagx kStructureSetTime = const Tagx(0x001c010100190bcb);
  static const Tagx kReferencedFrameOfReferenceSequence =
      const Tagx(0x001c010100160bcc);
  static const Tagx kRTReferencedStudySequence = const Tagx(0x001c010100160bcd);
  static const Tagx kRTReferencedSeriesSequence =
      const Tagx(0x001c010100160bce);
  static const Tagx kContourImageSequence = const Tagx(0x001c010100160bcf);
  static const Tagx kPredecessorStructureSetSequence =
      const Tagx(0x001c010100160bd0);
  static const Tagx kStructureSetROISequence = const Tagx(0x001c010100160bd1);
  static const Tagx kROINumber = const Tagx(0x001c0101000b0bd2);
  static const Tagx kReferencedFrameOfReferenceUID =
      const Tagx(0x001c0101001b0bd3);
  static const Tagx kROIName = const Tagx(0x001c0101000c0bd4);
  static const Tagx kROIDescription = const Tagx(0x001c010100180bd5);
  static const Tagx kROIDisplayColor = const Tagx(0x001c0103000b0bd6);
  static const Tagx kROIVolume = const Tagx(0x001c010100070bd7);
  static const Tagx kRTRelatedROISequence = const Tagx(0x001c010100160bd8);
  static const Tagx kRTROIRelationship = const Tagx(0x001c010100050bd9);
  static const Tagx kROIGenerationAlgorithm = const Tagx(0x001c010100050bda);
  static const Tagx kROIGenerationDescription = const Tagx(0x001c0101000c0bdb);
  static const Tagx kROIContourSequence = const Tagx(0x001c010100160bdc);
  static const Tagx kContourSequence = const Tagx(0x001c010100160bdd);
  static const Tagx kContourGeometricType = const Tagx(0x001c010100050bde);
  static const Tagx kContourSlabThickness = const Tagx(0x001c010100070bdf);
  static const Tagx kContourOffsetVector = const Tagx(0x001c010300070be0);
  static const Tagx kNumberOfContourPoints = const Tagx(0x001c0101000b0be1);
  static const Tagx kContourNumber = const Tagx(0x001c0101000b0be2);
  static const Tagx kAttachedContours = const Tagx(0x001c01ff000b0be3);
  static const Tagx kContourData = const Tagx(0x001c03ff00070be4);
  static const Tagx kRTROIObservationsSequence = const Tagx(0x001c010100160be5);
  static const Tagx kObservationNumber = const Tagx(0x001c0101000b0be6);
  static const Tagx kReferencedROINumber = const Tagx(0x001c0101000b0be7);
  static const Tagx kROIObservationLabel = const Tagx(0x001c010100140be8);
  static const Tagx kRTROIIdentificationCodeSequence =
      const Tagx(0x001c010100160be9);
  static const Tagx kROIObservationDescription = const Tagx(0x001c010100180bea);
  static const Tagx kRelatedRTROIObservationsSequence =
      const Tagx(0x001c010100160beb);
  static const Tagx kRTROIInterpretedType = const Tagx(0x001c010100050bec);
  static const Tagx kROIInterpreter = const Tagx(0x001c010100130bed);
  static const Tagx kROIPhysicalPropertiesSequence =
      const Tagx(0x001c010100160bee);
  static const Tagx kROIPhysicalProperty = const Tagx(0x001c010100050bef);
  static const Tagx kROIPhysicalPropertyValue = const Tagx(0x001c010100070bf0);
  static const Tagx kROIElementalCompositionSequence =
      const Tagx(0x001c010100160bf1);
  static const Tagx kROIElementalCompositionAtomicNumber =
      const Tagx(0x001c0101001f0bf2);
  static const Tagx kROIElementalCompositionAtomicMassFraction =
      const Tagx(0x001c0101000a0bf3);
  static const Tagx kFrameOfReferenceRelationshipSequence =
      const Tagx(0x005c010100160bf4);
  static const Tagx kRelatedFrameOfReferenceUID =
      const Tagx(0x005c0101001b0bf5);
  static const Tagx kFrameOfReferenceTransformationType =
      const Tagx(0x005c010100050bf6);
  static const Tagx kFrameOfReferenceTransformationMatrix =
      const Tagx(0x001c011000070bf7);
  static const Tagx kFrameOfReferenceTransformationComment =
      const Tagx(0x001c0101000c0bf8);
  static const Tagx kMeasuredDoseReferenceSequence =
      const Tagx(0x001c010100160bf9);
  static const Tagx kMeasuredDoseDescription = const Tagx(0x001c010100180bfa);
  static const Tagx kMeasuredDoseType = const Tagx(0x001c010100050bfb);
  static const Tagx kMeasuredDoseValue = const Tagx(0x001c010100070bfc);
  static const Tagx kTreatmentSessionBeamSequence =
      const Tagx(0x001c010100160bfd);
  static const Tagx kTreatmentSessionIonBeamSequence =
      const Tagx(0x001c010100160bfe);
  static const Tagx kCurrentFractionNumber = const Tagx(0x001c0101000b0bff);
  static const Tagx kTreatmentControlPointDate = const Tagx(0x001c010100060c00);
  static const Tagx kTreatmentControlPointTime = const Tagx(0x001c010100190c01);
  static const Tagx kTreatmentTerminationStatus =
      const Tagx(0x001c010100050c02);
  static const Tagx kTreatmentTerminationCode = const Tagx(0x001c010100140c03);
  static const Tagx kTreatmentVerificationStatus =
      const Tagx(0x001c010100050c04);
  static const Tagx kReferencedTreatmentRecordSequence =
      const Tagx(0x001c010100160c05);
  static const Tagx kSpecifiedPrimaryMeterset = const Tagx(0x001c010100070c06);
  static const Tagx kSpecifiedSecondaryMeterset =
      const Tagx(0x001c010100070c07);
  static const Tagx kDeliveredPrimaryMeterset = const Tagx(0x001c010100070c08);
  static const Tagx kDeliveredSecondaryMeterset =
      const Tagx(0x001c010100070c09);
  static const Tagx kSpecifiedTreatmentTime = const Tagx(0x001c010100070c0a);
  static const Tagx kDeliveredTreatmentTime = const Tagx(0x001c010100070c0b);
  static const Tagx kControlPointDeliverySequence =
      const Tagx(0x001c010100160c0c);
  static const Tagx kIonControlPointDeliverySequence =
      const Tagx(0x001c010100160c0d);
  static const Tagx kSpecifiedMeterset = const Tagx(0x001c010100070c0e);
  static const Tagx kDeliveredMeterset = const Tagx(0x001c010100070c0f);
  static const Tagx kMetersetRateSet = const Tagx(0x001c0101000a0c10);
  static const Tagx kMetersetRateDelivered = const Tagx(0x001c0101000a0c11);
  static const Tagx kScanSpotMetersetsDelivered =
      const Tagx(0x001c01ff000a0c12);
  static const Tagx kDoseRateDelivered = const Tagx(0x001c010100070c13);
  static const Tagx kTreatmentSummaryCalculatedDoseReferenceSequence =
      const Tagx(0x001c010100160c14);
  static const Tagx kCumulativeDoseToDoseReference =
      const Tagx(0x001c010100070c15);
  static const Tagx kFirstTreatmentDate = const Tagx(0x001c010100060c16);
  static const Tagx kMostRecentTreatmentDate = const Tagx(0x001c010100060c17);
  static const Tagx kNumberOfFractionsDelivered =
      const Tagx(0x001c0101000b0c18);
  static const Tagx kOverrideSequence = const Tagx(0x001c010100160c19);
  static const Tagx kParameterSequencePointer = const Tagx(0x001c010100030c1a);
  static const Tagx kOverrideParameterPointer = const Tagx(0x001c010100030c1b);
  static const Tagx kParameterItemIndex = const Tagx(0x001c0101000b0c1c);
  static const Tagx kMeasuredDoseReferenceNumber =
      const Tagx(0x001c0101000b0c1d);
  static const Tagx kParameterPointer = const Tagx(0x001c010100030c1e);
  static const Tagx kOverrideReason = const Tagx(0x001c010100180c1f);
  static const Tagx kCorrectedParameterSequence =
      const Tagx(0x001c010100160c20);
  static const Tagx kCorrectionValue = const Tagx(0x001c0101000a0c21);
  static const Tagx kCalculatedDoseReferenceSequence =
      const Tagx(0x001c010100160c22);
  static const Tagx kCalculatedDoseReferenceNumber =
      const Tagx(0x001c0101000b0c23);
  static const Tagx kCalculatedDoseReferenceDescription =
      const Tagx(0x001c010100180c24);
  static const Tagx kCalculatedDoseReferenceDoseValue =
      const Tagx(0x001c010100070c25);
  static const Tagx kStartMeterset = const Tagx(0x001c010100070c26);
  static const Tagx kEndMeterset = const Tagx(0x001c010100070c27);
  static const Tagx kReferencedMeasuredDoseReferenceSequence =
      const Tagx(0x001c010100160c28);
  static const Tagx kReferencedMeasuredDoseReferenceNumber =
      const Tagx(0x001c0101000b0c29);
  static const Tagx kReferencedCalculatedDoseReferenceSequence =
      const Tagx(0x001c010100160c2a);
  static const Tagx kReferencedCalculatedDoseReferenceNumber =
      const Tagx(0x001c0101000b0c2b);
  static const Tagx kBeamLimitingDeviceLeafPairsSequence =
      const Tagx(0x001c010100160c2c);
  static const Tagx kRecordedWedgeSequence = const Tagx(0x001c010100160c2d);
  static const Tagx kRecordedCompensatorSequence =
      const Tagx(0x001c010100160c2e);
  static const Tagx kRecordedBlockSequence = const Tagx(0x001c010100160c2f);
  static const Tagx kTreatmentSummaryMeasuredDoseReferenceSequence =
      const Tagx(0x001c010100160c30);
  static const Tagx kRecordedSnoutSequence = const Tagx(0x001c010100160c31);
  static const Tagx kRecordedRangeShifterSequence =
      const Tagx(0x001c010100160c32);
  static const Tagx kRecordedLateralSpreadingDeviceSequence =
      const Tagx(0x001c010100160c33);
  static const Tagx kRecordedRangeModulatorSequence =
      const Tagx(0x001c010100160c34);
  static const Tagx kRecordedSourceSequence = const Tagx(0x001c010100160c35);
  static const Tagx kSourceSerialNumber = const Tagx(0x001c0101000c0c36);
  static const Tagx kTreatmentSessionApplicationSetupSequence =
      const Tagx(0x001c010100160c37);
  static const Tagx kApplicationSetupCheck = const Tagx(0x001c010100050c38);
  static const Tagx kRecordedBrachyAccessoryDeviceSequence =
      const Tagx(0x001c010100160c39);
  static const Tagx kReferencedBrachyAccessoryDeviceNumber =
      const Tagx(0x001c0101000b0c3a);
  static const Tagx kRecordedChannelSequence = const Tagx(0x001c010100160c3b);
  static const Tagx kSpecifiedChannelTotalTime = const Tagx(0x001c010100070c3c);
  static const Tagx kDeliveredChannelTotalTime = const Tagx(0x001c010100070c3d);
  static const Tagx kSpecifiedNumberOfPulses = const Tagx(0x001c0101000b0c3e);
  static const Tagx kDeliveredNumberOfPulses = const Tagx(0x001c0101000b0c3f);
  static const Tagx kSpecifiedPulseRepetitionInterval =
      const Tagx(0x001c010100070c40);
  static const Tagx kDeliveredPulseRepetitionInterval =
      const Tagx(0x001c010100070c41);
  static const Tagx kRecordedSourceApplicatorSequence =
      const Tagx(0x001c010100160c42);
  static const Tagx kReferencedSourceApplicatorNumber =
      const Tagx(0x001c0101000b0c43);
  static const Tagx kRecordedChannelShieldSequence =
      const Tagx(0x001c010100160c44);
  static const Tagx kReferencedChannelShieldNumber =
      const Tagx(0x001c0101000b0c45);
  static const Tagx kBrachyControlPointDeliveredSequence =
      const Tagx(0x001c010100160c46);
  static const Tagx kSafePositionExitDate = const Tagx(0x001c010100060c47);
  static const Tagx kSafePositionExitTime = const Tagx(0x001c010100190c48);
  static const Tagx kSafePositionReturnDate = const Tagx(0x001c010100060c49);
  static const Tagx kSafePositionReturnTime = const Tagx(0x001c010100190c4a);
  static const Tagx kCurrentTreatmentStatus = const Tagx(0x001c010100050c4b);
  static const Tagx kTreatmentStatusComment = const Tagx(0x001c010100180c4c);
  static const Tagx kFractionGroupSummarySequence =
      const Tagx(0x001c010100160c4d);
  static const Tagx kReferencedFractionNumber = const Tagx(0x001c0101000b0c4e);
  static const Tagx kFractionGroupType = const Tagx(0x001c010100050c4f);
  static const Tagx kBeamStopperPosition = const Tagx(0x001c010100050c50);
  static const Tagx kFractionStatusSummarySequence =
      const Tagx(0x001c010100160c51);
  static const Tagx kTreatmentDate = const Tagx(0x001c010100060c52);
  static const Tagx kTreatmentTime = const Tagx(0x001c010100190c53);
  static const Tagx kRTPlanLabel = const Tagx(0x001c010100140c54);
  static const Tagx kRTPlanName = const Tagx(0x001c0101000c0c55);
  static const Tagx kRTPlanDescription = const Tagx(0x001c010100180c56);
  static const Tagx kRTPlanDate = const Tagx(0x001c010100060c57);
  static const Tagx kRTPlanTime = const Tagx(0x001c010100190c58);
  static const Tagx kTreatmentProtocols = const Tagx(0x001c01ff000c0c59);
  static const Tagx kPlanIntent = const Tagx(0x001c010100050c5a);
  static const Tagx kTreatmentSites = const Tagx(0x001c01ff000c0c5b);
  static const Tagx kRTPlanGeometry = const Tagx(0x001c010100050c5c);
  static const Tagx kPrescriptionDescription = const Tagx(0x001c010100180c5d);
  static const Tagx kDoseReferenceSequence = const Tagx(0x001c010100160c5e);
  static const Tagx kDoseReferenceNumber = const Tagx(0x001c0101000b0c5f);
  static const Tagx kDoseReferenceUID = const Tagx(0x001c0101001b0c60);
  static const Tagx kDoseReferenceStructureType =
      const Tagx(0x001c010100050c61);
  static const Tagx kNominalBeamEnergyUnit = const Tagx(0x001c010100050c62);
  static const Tagx kDoseReferenceDescription = const Tagx(0x001c0101000c0c63);
  static const Tagx kDoseReferencePointCoordinates =
      const Tagx(0x001c010300070c64);
  static const Tagx kNominalPriorDose = const Tagx(0x001c010100070c65);
  static const Tagx kDoseReferenceType = const Tagx(0x001c010100050c66);
  static const Tagx kConstraintWeight = const Tagx(0x001c010100070c67);
  static const Tagx kDeliveryWarningDose = const Tagx(0x001c010100070c68);
  static const Tagx kDeliveryMaximumDose = const Tagx(0x001c010100070c69);
  static const Tagx kTargetMinimumDose = const Tagx(0x001c010100070c6a);
  static const Tagx kTargetPrescriptionDose = const Tagx(0x001c010100070c6b);
  static const Tagx kTargetMaximumDose = const Tagx(0x001c010100070c6c);
  static const Tagx kTargetUnderdoseVolumeFraction =
      const Tagx(0x001c010100070c6d);
  static const Tagx kOrganAtRiskFullVolumeDose = const Tagx(0x001c010100070c6e);
  static const Tagx kOrganAtRiskLimitDose = const Tagx(0x001c010100070c6f);
  static const Tagx kOrganAtRiskMaximumDose = const Tagx(0x001c010100070c70);
  static const Tagx kOrganAtRiskOverdoseVolumeFraction =
      const Tagx(0x001c010100070c71);
  static const Tagx kToleranceTableSequence = const Tagx(0x001c010100160c72);
  static const Tagx kToleranceTableNumber = const Tagx(0x001c0101000b0c73);
  static const Tagx kToleranceTableLabel = const Tagx(0x001c010100140c74);
  static const Tagx kGantryAngleTolerance = const Tagx(0x001c010100070c75);
  static const Tagx kBeamLimitingDeviceAngleTolerance =
      const Tagx(0x001c010100070c76);
  static const Tagx kBeamLimitingDeviceToleranceSequence =
      const Tagx(0x001c010100160c77);
  static const Tagx kBeamLimitingDevicePositionTolerance =
      const Tagx(0x001c010100070c78);
  static const Tagx kSnoutPositionTolerance = const Tagx(0x001c0101000a0c79);
  static const Tagx kPatientSupportAngleTolerance =
      const Tagx(0x001c010100070c7a);
  static const Tagx kTableTopEccentricAngleTolerance =
      const Tagx(0x001c010100070c7b);
  static const Tagx kTableTopPitchAngleTolerance =
      const Tagx(0x001c0101000a0c7c);
  static const Tagx kTableTopRollAngleTolerance =
      const Tagx(0x001c0101000a0c7d);
  static const Tagx kTableTopVerticalPositionTolerance =
      const Tagx(0x001c010100070c7e);
  static const Tagx kTableTopLongitudinalPositionTolerance =
      const Tagx(0x001c010100070c7f);
  static const Tagx kTableTopLateralPositionTolerance =
      const Tagx(0x001c010100070c80);
  static const Tagx kRTPlanRelationship = const Tagx(0x001c010100050c81);
  static const Tagx kFractionGroupSequence = const Tagx(0x001c010100160c82);
  static const Tagx kFractionGroupNumber = const Tagx(0x001c0101000b0c83);
  static const Tagx kFractionGroupDescription = const Tagx(0x001c0101000c0c84);
  static const Tagx kNumberOfFractionsPlanned = const Tagx(0x001c0101000b0c85);
  static const Tagx kNumberOfFractionPatternDigitsPerDay =
      const Tagx(0x001c0101000b0c86);
  static const Tagx kRepeatFractionCycleLength = const Tagx(0x001c0101000b0c87);
  static const Tagx kFractionPattern = const Tagx(0x001c0101000d0c88);
  static const Tagx kNumberOfBeams = const Tagx(0x001c0101000b0c89);
  static const Tagx kBeamDoseSpecificationPoint =
      const Tagx(0x001c010300070c8a);
  static const Tagx kBeamDose = const Tagx(0x001c010100070c8b);
  static const Tagx kBeamMeterset = const Tagx(0x001c010100070c8c);
  static const Tagx kBeamDosePointDepth = const Tagx(0x005c0101000a0c8d);
  static const Tagx kBeamDosePointEquivalentDepth =
      const Tagx(0x005c0101000a0c8e);
  static const Tagx kBeamDosePointSSD = const Tagx(0x005c0101000a0c8f);
  static const Tagx kBeamDoseMeaning = const Tagx(0x001c010100050c90);
  static const Tagx kBeamDoseVerificationControlPointSequence =
      const Tagx(0x001c010100160c91);
  static const Tagx kAverageBeamDosePointDepth = const Tagx(0x001c0101000a0c92);
  static const Tagx kAverageBeamDosePointEquivalentDepth =
      const Tagx(0x001c0101000a0c93);
  static const Tagx kAverageBeamDosePointSSD = const Tagx(0x001c0101000a0c94);
  static const Tagx kNumberOfBrachyApplicationSetups =
      const Tagx(0x001c0101000b0c95);
  static const Tagx kBrachyApplicationSetupDoseSpecificationPoint =
      const Tagx(0x001c010300070c96);
  static const Tagx kBrachyApplicationSetupDose =
      const Tagx(0x001c010100070c97);
  static const Tagx kBeamSequence = const Tagx(0x001c010100160c98);
  static const Tagx kTreatmentMachineName = const Tagx(0x001c010100140c99);
  static const Tagx kPrimaryDosimeterUnit = const Tagx(0x001c010100050c9a);
  static const Tagx kSourceAxisDistance = const Tagx(0x001c010100070c9b);
  static const Tagx kBeamLimitingDeviceSequence =
      const Tagx(0x001c010100160c9c);
  static const Tagx kRTBeamLimitingDeviceType = const Tagx(0x001c010100050c9d);
  static const Tagx kSourceToBeamLimitingDeviceDistance =
      const Tagx(0x001c010100070c9e);
  static const Tagx kIsocenterToBeamLimitingDeviceDistance =
      const Tagx(0x001c0101000a0c9f);
  static const Tagx kNumberOfLeafJawPairs = const Tagx(0x001c0101000b0ca0);
  static const Tagx kLeafPositionBoundaries = const Tagx(0x001c01ff00070ca1);
  static const Tagx kBeamNumber = const Tagx(0x001c0101000b0ca2);
  static const Tagx kBeamName = const Tagx(0x001c0101000c0ca3);
  static const Tagx kBeamDescription = const Tagx(0x001c010100180ca4);
  static const Tagx kBeamType = const Tagx(0x001c010100050ca5);
  static const Tagx kRadiationType = const Tagx(0x001c010100050ca6);
  static const Tagx kHighDoseTechniqueType = const Tagx(0x001c010100050ca7);
  static const Tagx kReferenceImageNumber = const Tagx(0x001c0101000b0ca8);
  static const Tagx kPlannedVerificationImageSequence =
      const Tagx(0x001c010100160ca9);
  static const Tagx kImagingDeviceSpecificAcquisitionParameters =
      const Tagx(0x001c01ff000c0caa);
  static const Tagx kTreatmentDeliveryType = const Tagx(0x001c010100050cab);
  static const Tagx kNumberOfWedges = const Tagx(0x001c0101000b0cac);
  static const Tagx kWedgeSequence = const Tagx(0x001c010100160cad);
  static const Tagx kWedgeNumber = const Tagx(0x001c0101000b0cae);
  static const Tagx kWedgeType = const Tagx(0x001c010100050caf);
  static const Tagx kWedgeID = const Tagx(0x001c010100140cb0);
  static const Tagx kWedgeAngle = const Tagx(0x001c0101000b0cb1);
  static const Tagx kWedgeFactor = const Tagx(0x001c010100070cb2);
  static const Tagx kTotalWedgeTrayWaterEquivalentThickness =
      const Tagx(0x001c0101000a0cb3);
  static const Tagx kWedgeOrientation = const Tagx(0x001c010100070cb4);
  static const Tagx kIsocenterToWedgeTrayDistance =
      const Tagx(0x001c0101000a0cb5);
  static const Tagx kSourceToWedgeTrayDistance = const Tagx(0x001c010100070cb6);
  static const Tagx kWedgeThinEdgePosition = const Tagx(0x001c0101000a0cb7);
  static const Tagx kBolusID = const Tagx(0x001c010100140cb8);
  static const Tagx kBolusDescription = const Tagx(0x001c010100180cb9);
  static const Tagx kNumberOfCompensators = const Tagx(0x001c0101000b0cba);
  static const Tagx kMaterialID = const Tagx(0x001c010100140cbb);
  static const Tagx kTotalCompensatorTrayFactor =
      const Tagx(0x001c010100070cbc);
  static const Tagx kCompensatorSequence = const Tagx(0x001c010100160cbd);
  static const Tagx kCompensatorNumber = const Tagx(0x001c0101000b0cbe);
  static const Tagx kCompensatorID = const Tagx(0x001c010100140cbf);
  static const Tagx kSourceToCompensatorTrayDistance =
      const Tagx(0x001c010100070cc0);
  static const Tagx kCompensatorRows = const Tagx(0x001c0101000b0cc1);
  static const Tagx kCompensatorColumns = const Tagx(0x001c0101000b0cc2);
  static const Tagx kCompensatorPixelSpacing = const Tagx(0x001c010200070cc3);
  static const Tagx kCompensatorPosition = const Tagx(0x001c010200070cc4);
  static const Tagx kCompensatorTransmissionData =
      const Tagx(0x001c01ff00070cc5);
  static const Tagx kCompensatorThicknessData = const Tagx(0x001c01ff00070cc6);
  static const Tagx kNumberOfBoli = const Tagx(0x001c0101000b0cc7);
  static const Tagx kCompensatorType = const Tagx(0x001c010100050cc8);
  static const Tagx kCompensatorTrayID = const Tagx(0x001c010100140cc9);
  static const Tagx kNumberOfBlocks = const Tagx(0x001c0101000b0cca);
  static const Tagx kTotalBlockTrayFactor = const Tagx(0x001c010100070ccb);
  static const Tagx kTotalBlockTrayWaterEquivalentThickness =
      const Tagx(0x001c0101000a0ccc);
  static const Tagx kBlockSequence = const Tagx(0x001c010100160ccd);
  static const Tagx kBlockTrayID = const Tagx(0x001c010100140cce);
  static const Tagx kSourceToBlockTrayDistance = const Tagx(0x001c010100070ccf);
  static const Tagx kIsocenterToBlockTrayDistance =
      const Tagx(0x001c0101000a0cd0);
  static const Tagx kBlockType = const Tagx(0x001c010100050cd1);
  static const Tagx kAccessoryCode = const Tagx(0x001c0101000c0cd2);
  static const Tagx kBlockDivergence = const Tagx(0x001c010100050cd3);
  static const Tagx kBlockMountingPosition = const Tagx(0x001c010100050cd4);
  static const Tagx kBlockNumber = const Tagx(0x001c0101000b0cd5);
  static const Tagx kBlockName = const Tagx(0x001c0101000c0cd6);
  static const Tagx kBlockThickness = const Tagx(0x001c010100070cd7);
  static const Tagx kBlockTransmission = const Tagx(0x001c010100070cd8);
  static const Tagx kBlockNumberOfPoints = const Tagx(0x001c0101000b0cd9);
  static const Tagx kBlockData = const Tagx(0x001c02ff00070cda);
  static const Tagx kApplicatorSequence = const Tagx(0x001c010100160cdb);
  static const Tagx kApplicatorID = const Tagx(0x001c010100140cdc);
  static const Tagx kApplicatorType = const Tagx(0x001c010100050cdd);
  static const Tagx kApplicatorDescription = const Tagx(0x001c0101000c0cde);
  static const Tagx kCumulativeDoseReferenceCoefficient =
      const Tagx(0x001c010100070cdf);
  static const Tagx kFinalCumulativeMetersetWeight =
      const Tagx(0x001c010100070ce0);
  static const Tagx kNumberOfControlPoints = const Tagx(0x001c0101000b0ce1);
  static const Tagx kControlPointSequence = const Tagx(0x001c010100160ce2);
  static const Tagx kControlPointIndex = const Tagx(0x001c0101000b0ce3);
  static const Tagx kNominalBeamEnergy = const Tagx(0x001c010100070ce4);
  static const Tagx kDoseRateSet = const Tagx(0x001c010100070ce5);
  static const Tagx kWedgePositionSequence = const Tagx(0x001c010100160ce6);
  static const Tagx kWedgePosition = const Tagx(0x001c010100050ce7);
  static const Tagx kBeamLimitingDevicePositionSequence =
      const Tagx(0x001c010100160ce8);
  static const Tagx kLeafJawPositions = const Tagx(0x001c02ff00070ce9);
  static const Tagx kGantryAngle = const Tagx(0x001c010100070cea);
  static const Tagx kGantryRotationDirection = const Tagx(0x001c010100050ceb);
  static const Tagx kBeamLimitingDeviceAngle = const Tagx(0x001c010100070cec);
  static const Tagx kBeamLimitingDeviceRotationDirection =
      const Tagx(0x001c010100050ced);
  static const Tagx kPatientSupportAngle = const Tagx(0x001c010100070cee);
  static const Tagx kPatientSupportRotationDirection =
      const Tagx(0x001c010100050cef);
  static const Tagx kTableTopEccentricAxisDistance =
      const Tagx(0x001c010100070cf0);
  static const Tagx kTableTopEccentricAngle = const Tagx(0x001c010100070cf1);
  static const Tagx kTableTopEccentricRotationDirection =
      const Tagx(0x001c010100050cf2);
  static const Tagx kTableTopVerticalPosition = const Tagx(0x001c010100070cf3);
  static const Tagx kTableTopLongitudinalPosition =
      const Tagx(0x001c010100070cf4);
  static const Tagx kTableTopLateralPosition = const Tagx(0x001c010100070cf5);
  static const Tagx kIsocenterPosition = const Tagx(0x001c010300070cf6);
  static const Tagx kSurfaceEntryPoint = const Tagx(0x001c010300070cf7);
  static const Tagx kSourceToSurfaceDistance = const Tagx(0x001c010100070cf8);
  static const Tagx kCumulativeMetersetWeight = const Tagx(0x001c010100070cf9);
  static const Tagx kTableTopPitchAngle = const Tagx(0x001c0101000a0cfa);
  static const Tagx kTableTopPitchRotationDirection =
      const Tagx(0x001c010100050cfb);
  static const Tagx kTableTopRollAngle = const Tagx(0x001c0101000a0cfc);
  static const Tagx kTableTopRollRotationDirection =
      const Tagx(0x001c010100050cfd);
  static const Tagx kHeadFixationAngle = const Tagx(0x001c0101000a0cfe);
  static const Tagx kGantryPitchAngle = const Tagx(0x001c0101000a0cff);
  static const Tagx kGantryPitchRotationDirection =
      const Tagx(0x001c010100050d00);
  static const Tagx kGantryPitchAngleTolerance = const Tagx(0x001c0101000a0d01);
  static const Tagx kPatientSetupSequence = const Tagx(0x001c010100160d02);
  static const Tagx kPatientSetupNumber = const Tagx(0x001c0101000b0d03);
  static const Tagx kPatientSetupLabel = const Tagx(0x001c0101000c0d04);
  static const Tagx kPatientAdditionalPosition = const Tagx(0x001c0101000c0d05);
  static const Tagx kFixationDeviceSequence = const Tagx(0x001c010100160d06);
  static const Tagx kFixationDeviceType = const Tagx(0x001c010100050d07);
  static const Tagx kFixationDeviceLabel = const Tagx(0x001c010100140d08);
  static const Tagx kFixationDeviceDescription = const Tagx(0x001c010100180d09);
  static const Tagx kFixationDevicePosition = const Tagx(0x001c010100140d0a);
  static const Tagx kFixationDevicePitchAngle = const Tagx(0x001c0101000a0d0b);
  static const Tagx kFixationDeviceRollAngle = const Tagx(0x001c0101000a0d0c);
  static const Tagx kShieldingDeviceSequence = const Tagx(0x001c010100160d0d);
  static const Tagx kShieldingDeviceType = const Tagx(0x001c010100050d0e);
  static const Tagx kShieldingDeviceLabel = const Tagx(0x001c010100140d0f);
  static const Tagx kShieldingDeviceDescription =
      const Tagx(0x001c010100180d10);
  static const Tagx kShieldingDevicePosition = const Tagx(0x001c010100140d11);
  static const Tagx kSetupTechnique = const Tagx(0x001c010100050d12);
  static const Tagx kSetupTechniqueDescription = const Tagx(0x001c010100180d13);
  static const Tagx kSetupDeviceSequence = const Tagx(0x001c010100160d14);
  static const Tagx kSetupDeviceType = const Tagx(0x001c010100050d15);
  static const Tagx kSetupDeviceLabel = const Tagx(0x001c010100140d16);
  static const Tagx kSetupDeviceDescription = const Tagx(0x001c010100180d17);
  static const Tagx kSetupDeviceParameter = const Tagx(0x001c010100070d18);
  static const Tagx kSetupReferenceDescription = const Tagx(0x001c010100180d19);
  static const Tagx kTableTopVerticalSetupDisplacement =
      const Tagx(0x001c010100070d1a);
  static const Tagx kTableTopLongitudinalSetupDisplacement =
      const Tagx(0x001c010100070d1b);
  static const Tagx kTableTopLateralSetupDisplacement =
      const Tagx(0x001c010100070d1c);
  static const Tagx kBrachyTreatmentTechnique = const Tagx(0x001c010100050d1d);
  static const Tagx kBrachyTreatmentType = const Tagx(0x001c010100050d1e);
  static const Tagx kTreatmentMachineSequence = const Tagx(0x001c010100160d1f);
  static const Tagx kSourceSequence = const Tagx(0x001c010100160d20);
  static const Tagx kSourceNumber = const Tagx(0x001c0101000b0d21);
  static const Tagx kSourceType = const Tagx(0x001c010100050d22);
  static const Tagx kSourceManufacturer = const Tagx(0x001c0101000c0d23);
  static const Tagx kActiveSourceDiameter = const Tagx(0x001c010100070d24);
  static const Tagx kActiveSourceLength = const Tagx(0x001c010100070d25);
  static const Tagx kSourceModelID = const Tagx(0x001c010100140d26);
  static const Tagx kSourceDescription = const Tagx(0x001c0101000c0d27);
  static const Tagx kSourceEncapsulationNominalThickness =
      const Tagx(0x001c010100070d28);
  static const Tagx kSourceEncapsulationNominalTransmission =
      const Tagx(0x001c010100070d29);
  static const Tagx kSourceIsotopeName = const Tagx(0x001c0101000c0d2a);
  static const Tagx kSourceIsotopeHalfLife = const Tagx(0x001c010100070d2b);
  static const Tagx kSourceStrengthUnits = const Tagx(0x001c010100050d2c);
  static const Tagx kReferenceAirKermaRate = const Tagx(0x001c010100070d2d);
  static const Tagx kSourceStrength = const Tagx(0x001c010100070d2e);
  static const Tagx kSourceStrengthReferenceDate =
      const Tagx(0x001c010100060d2f);
  static const Tagx kSourceStrengthReferenceTime =
      const Tagx(0x001c010100190d30);
  static const Tagx kApplicationSetupSequence = const Tagx(0x001c010100160d31);
  static const Tagx kApplicationSetupType = const Tagx(0x001c010100050d32);
  static const Tagx kApplicationSetupNumber = const Tagx(0x001c0101000b0d33);
  static const Tagx kApplicationSetupName = const Tagx(0x001c0101000c0d34);
  static const Tagx kApplicationSetupManufacturer =
      const Tagx(0x001c0101000c0d35);
  static const Tagx kTemplateNumber = const Tagx(0x001c0101000b0d36);
  static const Tagx kTemplateType = const Tagx(0x001c010100140d37);
  static const Tagx kTemplateName = const Tagx(0x001c0101000c0d38);
  static const Tagx kTotalReferenceAirKerma = const Tagx(0x001c010100070d39);
  static const Tagx kBrachyAccessoryDeviceSequence =
      const Tagx(0x001c010100160d3a);
  static const Tagx kBrachyAccessoryDeviceNumber =
      const Tagx(0x001c0101000b0d3b);
  static const Tagx kBrachyAccessoryDeviceID = const Tagx(0x001c010100140d3c);
  static const Tagx kBrachyAccessoryDeviceType = const Tagx(0x001c010100050d3d);
  static const Tagx kBrachyAccessoryDeviceName = const Tagx(0x001c0101000c0d3e);
  static const Tagx kBrachyAccessoryDeviceNominalThickness =
      const Tagx(0x001c010100070d3f);
  static const Tagx kBrachyAccessoryDeviceNominalTransmission =
      const Tagx(0x001c010100070d40);
  static const Tagx kChannelSequence = const Tagx(0x001c010100160d41);
  static const Tagx kChannelNumber = const Tagx(0x001c0101000b0d42);
  static const Tagx kChannelLength = const Tagx(0x001c010100070d43);
  static const Tagx kChannelTotalTime = const Tagx(0x001c010100070d44);
  static const Tagx kSourceMovementType = const Tagx(0x001c010100050d45);
  static const Tagx kNumberOfPulses = const Tagx(0x001c0101000b0d46);
  static const Tagx kPulseRepetitionInterval = const Tagx(0x001c010100070d47);
  static const Tagx kSourceApplicatorNumber = const Tagx(0x001c0101000b0d48);
  static const Tagx kSourceApplicatorID = const Tagx(0x001c010100140d49);
  static const Tagx kSourceApplicatorType = const Tagx(0x001c010100050d4a);
  static const Tagx kSourceApplicatorName = const Tagx(0x001c0101000c0d4b);
  static const Tagx kSourceApplicatorLength = const Tagx(0x001c010100070d4c);
  static const Tagx kSourceApplicatorManufacturer =
      const Tagx(0x001c0101000c0d4d);
  static const Tagx kSourceApplicatorWallNominalThickness =
      const Tagx(0x001c010100070d4e);
  static const Tagx kSourceApplicatorWallNominalTransmission =
      const Tagx(0x001c010100070d4f);
  static const Tagx kSourceApplicatorStepSize = const Tagx(0x001c010100070d50);
  static const Tagx kTransferTubeNumber = const Tagx(0x001c0101000b0d51);
  static const Tagx kTransferTubeLength = const Tagx(0x001c010100070d52);
  static const Tagx kChannelShieldSequence = const Tagx(0x001c010100160d53);
  static const Tagx kChannelShieldNumber = const Tagx(0x001c0101000b0d54);
  static const Tagx kChannelShieldID = const Tagx(0x001c010100140d55);
  static const Tagx kChannelShieldName = const Tagx(0x001c0101000c0d56);
  static const Tagx kChannelShieldNominalThickness =
      const Tagx(0x001c010100070d57);
  static const Tagx kChannelShieldNominalTransmission =
      const Tagx(0x001c010100070d58);
  static const Tagx kFinalCumulativeTimeWeight = const Tagx(0x001c010100070d59);
  static const Tagx kBrachyControlPointSequence =
      const Tagx(0x001c010100160d5a);
  static const Tagx kControlPointRelativePosition =
      const Tagx(0x001c010100070d5b);
  static const Tagx kControlPoint3DPosition = const Tagx(0x001c010300070d5c);
  static const Tagx kCumulativeTimeWeight = const Tagx(0x001c010100070d5d);
  static const Tagx kCompensatorDivergence = const Tagx(0x001c010100050d5e);
  static const Tagx kCompensatorMountingPosition =
      const Tagx(0x001c010100050d5f);
  static const Tagx kSourceToCompensatorDistance =
      const Tagx(0x001c01ff00070d60);
  static const Tagx kTotalCompensatorTrayWaterEquivalentThickness =
      const Tagx(0x001c0101000a0d61);
  static const Tagx kIsocenterToCompensatorTrayDistance =
      const Tagx(0x001c0101000a0d62);
  static const Tagx kCompensatorColumnOffset = const Tagx(0x001c0101000a0d63);
  static const Tagx kIsocenterToCompensatorDistances =
      const Tagx(0x001c01ff000a0d64);
  static const Tagx kCompensatorRelativeStoppingPowerRatio =
      const Tagx(0x001c0101000a0d65);
  static const Tagx kCompensatorMillingToolDiameter =
      const Tagx(0x001c0101000a0d66);
  static const Tagx kIonRangeCompensatorSequence =
      const Tagx(0x001c010100160d67);
  static const Tagx kCompensatorDescription = const Tagx(0x001c0101000d0d68);
  static const Tagx kRadiationMassNumber = const Tagx(0x001c0101000b0d69);
  static const Tagx kRadiationAtomicNumber = const Tagx(0x001c0101000b0d6a);
  static const Tagx kRadiationChargeState = const Tagx(0x001c010100170d6b);
  static const Tagx kScanMode = const Tagx(0x001c010100050d6c);
  static const Tagx kVirtualSourceAxisDistances =
      const Tagx(0x001c0102000a0d6d);
  static const Tagx kSnoutSequence = const Tagx(0x001c010100160d6e);
  static const Tagx kSnoutPosition = const Tagx(0x001c0101000a0d6f);
  static const Tagx kSnoutID = const Tagx(0x001c010100140d70);
  static const Tagx kNumberOfRangeShifters = const Tagx(0x001c0101000b0d71);
  static const Tagx kRangeShifterSequence = const Tagx(0x001c010100160d72);
  static const Tagx kRangeShifterNumber = const Tagx(0x001c0101000b0d73);
  static const Tagx kRangeShifterID = const Tagx(0x001c010100140d74);
  static const Tagx kRangeShifterType = const Tagx(0x001c010100050d75);
  static const Tagx kRangeShifterDescription = const Tagx(0x001c0101000c0d76);
  static const Tagx kNumberOfLateralSpreadingDevices =
      const Tagx(0x001c0101000b0d77);
  static const Tagx kLateralSpreadingDeviceSequence =
      const Tagx(0x001c010100160d78);
  static const Tagx kLateralSpreadingDeviceNumber =
      const Tagx(0x001c0101000b0d79);
  static const Tagx kLateralSpreadingDeviceID = const Tagx(0x001c010100140d7a);
  static const Tagx kLateralSpreadingDeviceType =
      const Tagx(0x001c010100050d7b);
  static const Tagx kLateralSpreadingDeviceDescription =
      const Tagx(0x001c0101000c0d7c);
  static const Tagx kLateralSpreadingDeviceWaterEquivalentThickness =
      const Tagx(0x001c0101000a0d7d);
  static const Tagx kNumberOfRangeModulators = const Tagx(0x001c0101000b0d7e);
  static const Tagx kRangeModulatorSequence = const Tagx(0x001c010100160d7f);
  static const Tagx kRangeModulatorNumber = const Tagx(0x001c0101000b0d80);
  static const Tagx kRangeModulatorID = const Tagx(0x001c010100140d81);
  static const Tagx kRangeModulatorType = const Tagx(0x001c010100050d82);
  static const Tagx kRangeModulatorDescription = const Tagx(0x001c0101000c0d83);
  static const Tagx kBeamCurrentModulationID = const Tagx(0x001c010100140d84);
  static const Tagx kPatientSupportType = const Tagx(0x001c010100050d85);
  static const Tagx kPatientSupportID = const Tagx(0x001c010100140d86);
  static const Tagx kPatientSupportAccessoryCode =
      const Tagx(0x001c0101000c0d87);
  static const Tagx kFixationLightAzimuthalAngle =
      const Tagx(0x001c0101000a0d88);
  static const Tagx kFixationLightPolarAngle = const Tagx(0x001c0101000a0d89);
  static const Tagx kMetersetRate = const Tagx(0x001c0101000a0d8a);
  static const Tagx kRangeShifterSettingsSequence =
      const Tagx(0x001c010100160d8b);
  static const Tagx kRangeShifterSetting = const Tagx(0x001c0101000c0d8c);
  static const Tagx kIsocenterToRangeShifterDistance =
      const Tagx(0x001c0101000a0d8d);
  static const Tagx kRangeShifterWaterEquivalentThickness =
      const Tagx(0x001c0101000a0d8e);
  static const Tagx kLateralSpreadingDeviceSettingsSequence =
      const Tagx(0x001c010100160d8f);
  static const Tagx kLateralSpreadingDeviceSetting =
      const Tagx(0x001c0101000c0d90);
  static const Tagx kIsocenterToLateralSpreadingDeviceDistance =
      const Tagx(0x001c0101000a0d91);
  static const Tagx kRangeModulatorSettingsSequence =
      const Tagx(0x001c010100160d92);
  static const Tagx kRangeModulatorGatingStartValue =
      const Tagx(0x001c0101000a0d93);
  static const Tagx kRangeModulatorGatingStopValue =
      const Tagx(0x001c0101000a0d94);
  static const Tagx kRangeModulatorGatingStartWaterEquivalentThickness =
      const Tagx(0x001c0101000a0d95);
  static const Tagx kRangeModulatorGatingStopWaterEquivalentThickness =
      const Tagx(0x001c0101000a0d96);
  static const Tagx kIsocenterToRangeModulatorDistance =
      const Tagx(0x001c0101000a0d97);
  static const Tagx kScanSpotTuneID = const Tagx(0x001c010100140d98);
  static const Tagx kNumberOfScanSpotPositions = const Tagx(0x001c0101000b0d99);
  static const Tagx kScanSpotPositionMap = const Tagx(0x001c01ff000a0d9a);
  static const Tagx kScanSpotMetersetWeights = const Tagx(0x001c01ff000a0d9b);
  static const Tagx kScanningSpotSize = const Tagx(0x001c0102000a0d9c);
  static const Tagx kNumberOfPaintings = const Tagx(0x001c0101000b0d9d);
  static const Tagx kIonToleranceTableSequence = const Tagx(0x001c010100160d9e);
  static const Tagx kIonBeamSequence = const Tagx(0x001c010100160d9f);
  static const Tagx kIonBeamLimitingDeviceSequence =
      const Tagx(0x001c010100160da0);
  static const Tagx kIonBlockSequence = const Tagx(0x001c010100160da1);
  static const Tagx kIonControlPointSequence = const Tagx(0x001c010100160da2);
  static const Tagx kIonWedgeSequence = const Tagx(0x001c010100160da3);
  static const Tagx kIonWedgePositionSequence = const Tagx(0x001c010100160da4);
  static const Tagx kReferencedSetupImageSequence =
      const Tagx(0x001c010100160da5);
  static const Tagx kSetupImageComment = const Tagx(0x001c010100180da6);
  static const Tagx kMotionSynchronizationSequence =
      const Tagx(0x001c010100160da7);
  static const Tagx kControlPointOrientation = const Tagx(0x001c0103000a0da8);
  static const Tagx kGeneralAccessorySequence = const Tagx(0x001c010100160da9);
  static const Tagx kGeneralAccessoryID = const Tagx(0x001c010100140daa);
  static const Tagx kGeneralAccessoryDescription =
      const Tagx(0x001c010100180dab);
  static const Tagx kGeneralAccessoryType = const Tagx(0x001c010100050dac);
  static const Tagx kGeneralAccessoryNumber = const Tagx(0x001c0101000b0dad);
  static const Tagx kSourceToGeneralAccessoryDistance =
      const Tagx(0x001c0101000a0dae);
  static const Tagx kApplicatorGeometrySequence =
      const Tagx(0x001c010100160daf);
  static const Tagx kApplicatorApertureShape = const Tagx(0x001c010100050db0);
  static const Tagx kApplicatorOpening = const Tagx(0x001c0101000a0db1);
  static const Tagx kApplicatorOpeningX = const Tagx(0x001c0101000a0db2);
  static const Tagx kApplicatorOpeningY = const Tagx(0x001c0101000a0db3);
  static const Tagx kSourceToApplicatorMountingPositionDistance =
      const Tagx(0x001c0101000a0db4);
  static const Tagx kReferencedRTPlanSequence = const Tagx(0x001c010100160db5);
  static const Tagx kReferencedBeamSequence = const Tagx(0x001c010100160db6);
  static const Tagx kReferencedBeamNumber = const Tagx(0x001c0101000b0db7);
  static const Tagx kReferencedReferenceImageNumber =
      const Tagx(0x001c0101000b0db8);
  static const Tagx kStartCumulativeMetersetWeight =
      const Tagx(0x001c010100070db9);
  static const Tagx kEndCumulativeMetersetWeight =
      const Tagx(0x001c010100070dba);
  static const Tagx kReferencedBrachyApplicationSetupSequence =
      const Tagx(0x001c010100160dbb);
  static const Tagx kReferencedBrachyApplicationSetupNumber =
      const Tagx(0x001c0101000b0dbc);
  static const Tagx kReferencedSourceNumber = const Tagx(0x001c0101000b0dbd);
  static const Tagx kReferencedFractionGroupSequence =
      const Tagx(0x001c010100160dbe);
  static const Tagx kReferencedFractionGroupNumber =
      const Tagx(0x001c0101000b0dbf);
  static const Tagx kReferencedVerificationImageSequence =
      const Tagx(0x001c010100160dc0);
  static const Tagx kReferencedReferenceImageSequence =
      const Tagx(0x001c010100160dc1);
  static const Tagx kReferencedDoseReferenceSequence =
      const Tagx(0x001c010100160dc2);
  static const Tagx kReferencedDoseReferenceNumber =
      const Tagx(0x001c0101000b0dc3);
  static const Tagx kBrachyReferencedDoseReferenceSequence =
      const Tagx(0x001c010100160dc4);
  static const Tagx kReferencedStructureSetSequence =
      const Tagx(0x001c010100160dc5);
  static const Tagx kReferencedPatientSetupNumber =
      const Tagx(0x001c0101000b0dc6);
  static const Tagx kReferencedDoseSequence = const Tagx(0x001c010100160dc7);
  static const Tagx kReferencedToleranceTableNumber =
      const Tagx(0x001c0101000b0dc8);
  static const Tagx kReferencedBolusSequence = const Tagx(0x001c010100160dc9);
  static const Tagx kReferencedWedgeNumber = const Tagx(0x001c0101000b0dca);
  static const Tagx kReferencedCompensatorNumber =
      const Tagx(0x001c0101000b0dcb);
  static const Tagx kReferencedBlockNumber = const Tagx(0x001c0101000b0dcc);
  static const Tagx kReferencedControlPointIndex =
      const Tagx(0x001c0101000b0dcd);
  static const Tagx kReferencedControlPointSequence =
      const Tagx(0x001c010100160dce);
  static const Tagx kReferencedStartControlPointIndex =
      const Tagx(0x001c0101000b0dcf);
  static const Tagx kReferencedStopControlPointIndex =
      const Tagx(0x001c0101000b0dd0);
  static const Tagx kReferencedRangeShifterNumber =
      const Tagx(0x001c0101000b0dd1);
  static const Tagx kReferencedLateralSpreadingDeviceNumber =
      const Tagx(0x001c0101000b0dd2);
  static const Tagx kReferencedRangeModulatorNumber =
      const Tagx(0x001c0101000b0dd3);
  static const Tagx kApprovalStatus = const Tagx(0x001c010100050dd4);
  static const Tagx kReviewDate = const Tagx(0x001c010100060dd5);
  static const Tagx kReviewTime = const Tagx(0x001c010100190dd6);
  static const Tagx kReviewerName = const Tagx(0x001c010100130dd7);
  static const Tagx kArbitrary = const Tagx(0x005c0101000d0dd8);
  static const Tagx kTextComments = const Tagx(0x005c0101000d0dd9);
  static const Tagx kResultsID = const Tagx(0x005c010100140dda);
  static const Tagx kResultsIDIssuer = const Tagx(0x005c0101000c0ddb);
  static const Tagx kReferencedInterpretationSequence =
      const Tagx(0x005c010100160ddc);
  static const Tagx kReportProductionStatusTrial =
      const Tagx(0x005c010100050ddd);
  static const Tagx kInterpretationRecordedDate =
      const Tagx(0x005c010100060dde);
  static const Tagx kInterpretationRecordedTime =
      const Tagx(0x005c010100190ddf);
  static const Tagx kInterpretationRecorder = const Tagx(0x005c010100130de0);
  static const Tagx kReferenceToRecordedSound = const Tagx(0x005c0101000c0de1);
  static const Tagx kInterpretationTranscriptionDate =
      const Tagx(0x005c010100060de2);
  static const Tagx kInterpretationTranscriptionTime =
      const Tagx(0x005c010100190de3);
  static const Tagx kInterpretationTranscriber = const Tagx(0x005c010100130de4);
  static const Tagx kInterpretationText = const Tagx(0x005c010100180de5);
  static const Tagx kInterpretationAuthor = const Tagx(0x005c010100130de6);
  static const Tagx kInterpretationApproverSequence =
      const Tagx(0x005c010100160de7);
  static const Tagx kInterpretationApprovalDate =
      const Tagx(0x005c010100060de8);
  static const Tagx kInterpretationApprovalTime =
      const Tagx(0x005c010100190de9);
  static const Tagx kPhysicianApprovingInterpretation =
      const Tagx(0x005c010100130dea);
  static const Tagx kInterpretationDiagnosisDescription =
      const Tagx(0x005c0101000d0deb);
  static const Tagx kInterpretationDiagnosisCodeSequence =
      const Tagx(0x005c010100160dec);
  static const Tagx kResultsDistributionListSequence =
      const Tagx(0x005c010100160ded);
  static const Tagx kDistributionName = const Tagx(0x005c010100130dee);
  static const Tagx kDistributionAddress = const Tagx(0x005c0101000c0def);
  static const Tagx kInterpretationID = const Tagx(0x005c010100140df0);
  static const Tagx kInterpretationIDIssuer = const Tagx(0x005c0101000c0df1);
  static const Tagx kInterpretationTypeID = const Tagx(0x005c010100050df2);
  static const Tagx kInterpretationStatusID = const Tagx(0x005c010100050df3);
  static const Tagx kImpressions = const Tagx(0x005c010100180df4);
  static const Tagx kResultsComments = const Tagx(0x005c010100180df5);
  static const Tagx kLowEnergyDetectors = const Tagx(0x001c010100050df6);
  static const Tagx kHighEnergyDetectors = const Tagx(0x001c010100050df7);
  static const Tagx kDetectorGeometrySequence = const Tagx(0x001c010100160df8);
  static const Tagx kThreatROIVoxelSequence = const Tagx(0x001c010100160df9);
  static const Tagx kThreatROIBase = const Tagx(0x001c0103000a0dfa);
  static const Tagx kThreatROIExtents = const Tagx(0x001c0103000a0dfb);
  static const Tagx kThreatROIBitmap = const Tagx(0x001c0101000e0dfc);
  static const Tagx kRouteSegmentID = const Tagx(0x001c010100140dfd);
  static const Tagx kGantryType = const Tagx(0x001c010100050dfe);
  static const Tagx kOOIOwnerType = const Tagx(0x001c010100050dff);
  static const Tagx kRouteSegmentSequence = const Tagx(0x001c010100160e00);
  static const Tagx kPotentialThreatObjectID = const Tagx(0x001c0101001f0e01);
  static const Tagx kThreatSequence = const Tagx(0x001c010100160e02);
  static const Tagx kThreatCategory = const Tagx(0x001c010100050e03);
  static const Tagx kThreatCategoryDescription = const Tagx(0x001c0101000d0e04);
  static const Tagx kATDAbilityAssessment = const Tagx(0x001c010100050e05);
  static const Tagx kATDAssessmentFlag = const Tagx(0x001c010100050e06);
  static const Tagx kATDAssessmentProbability = const Tagx(0x001c0101000a0e07);
  static const Tagx kMass = const Tagx(0x001c0101000a0e08);
  static const Tagx kDensity = const Tagx(0x001c0101000a0e09);
  static const Tagx kZEffective = const Tagx(0x001c0101000a0e0a);
  static const Tagx kBoardingPassID = const Tagx(0x001c010100140e0b);
  static const Tagx kCenterOfMass = const Tagx(0x001c0103000a0e0c);
  static const Tagx kCenterOfPTO = const Tagx(0x001c0103000a0e0d);
  static const Tagx kBoundingPolygon = const Tagx(0x001c01ff000a0e0e);
  static const Tagx kRouteSegmentStartLocationID =
      const Tagx(0x001c010100140e0f);
  static const Tagx kRouteSegmentEndLocationID = const Tagx(0x001c010100140e10);
  static const Tagx kRouteSegmentLocationIDType =
      const Tagx(0x001c010100050e11);
  static const Tagx kAbortReason = const Tagx(0x001c01ff00050e12);
  static const Tagx kVolumeOfPTO = const Tagx(0x001c0101000a0e13);
  static const Tagx kAbortFlag = const Tagx(0x001c010100050e14);
  static const Tagx kRouteSegmentStartTime = const Tagx(0x001c010100080e15);
  static const Tagx kRouteSegmentEndTime = const Tagx(0x001c010100080e16);
  static const Tagx kTDRType = const Tagx(0x001c010100050e17);
  static const Tagx kInternationalRouteSegment = const Tagx(0x001c010100050e18);
  static const Tagx kThreatDetectionAlgorithmandVersion =
      const Tagx(0x001c01ff000c0e19);
  static const Tagx kAssignedLocation = const Tagx(0x001c010100140e1a);
  static const Tagx kAlarmDecisionTime = const Tagx(0x001c010100080e1b);
  static const Tagx kAlarmDecision = const Tagx(0x001c010100050e1c);
  static const Tagx kNumberOfTotalObjects = const Tagx(0x001c0101001f0e1d);
  static const Tagx kNumberOfAlarmObjects = const Tagx(0x001c0101001f0e1e);
  static const Tagx kPTORepresentationSequence = const Tagx(0x001c010100160e1f);
  static const Tagx kATDAssessmentSequence = const Tagx(0x001c010100160e20);
  static const Tagx kTIPType = const Tagx(0x001c010100050e21);
  static const Tagx kDICOSVersion = const Tagx(0x001c010100050e22);
  static const Tagx kOOIOwnerCreationTime = const Tagx(0x001c010100080e23);
  static const Tagx kOOIType = const Tagx(0x001c010100050e24);
  static const Tagx kOOISize = const Tagx(0x001c0103000a0e25);
  static const Tagx kAcquisitionStatus = const Tagx(0x001c010100050e26);
  static const Tagx kBasisMaterialsCodeSequence =
      const Tagx(0x001c010100160e27);
  static const Tagx kPhantomType = const Tagx(0x001c010100050e28);
  static const Tagx kOOIOwnerSequence = const Tagx(0x001c010100160e29);
  static const Tagx kScanType = const Tagx(0x001c010100050e2a);
  static const Tagx kItineraryID = const Tagx(0x001c0101000c0e2b);
  static const Tagx kItineraryIDType = const Tagx(0x001c010100140e2c);
  static const Tagx kItineraryIDAssigningAuthority =
      const Tagx(0x001c0101000c0e2d);
  static const Tagx kRouteID = const Tagx(0x001c010100140e2e);
  static const Tagx kRouteIDAssigningAuthority = const Tagx(0x001c010100140e2f);
  static const Tagx kInboundArrivalType = const Tagx(0x001c010100050e30);
  static const Tagx kCarrierID = const Tagx(0x001c010100140e31);
  static const Tagx kCarrierIDAssigningAuthority =
      const Tagx(0x001c010100050e32);
  static const Tagx kSourceOrientation = const Tagx(0x001c0103000a0e33);
  static const Tagx kSourcePosition = const Tagx(0x001c0103000a0e34);
  static const Tagx kBeltHeight = const Tagx(0x001c0101000a0e35);
  static const Tagx kAlgorithmRoutingCodeSequence =
      const Tagx(0x001c010100160e36);
  static const Tagx kTransportClassification = const Tagx(0x001c010100050e37);
  static const Tagx kOOITypeDescriptor = const Tagx(0x001c0101000d0e38);
  static const Tagx kTotalProcessingTime = const Tagx(0x001c0101000a0e39);
  static const Tagx kDetectorCalibrationData = const Tagx(0x001c0101000e0e3a);
  static const Tagx kAdditionalScreeningPerformed =
      const Tagx(0x001c010100050e3b);
  static const Tagx kAdditionalInspectionSelectionCriteria =
      const Tagx(0x001c010100050e3c);
  static const Tagx kAdditionalInspectionMethodSequence =
      const Tagx(0x001c010100160e3d);
  static const Tagx kAITDeviceType = const Tagx(0x001c010100050e3e);
  static const Tagx kQRMeasurementsSequence = const Tagx(0x001c010100160e3f);
  static const Tagx kTargetMaterialSequence = const Tagx(0x001c010100160e40);
  static const Tagx kSNRThreshold = const Tagx(0x001c010100090e41);
  static const Tagx kImageScaleRepresentation = const Tagx(0x001c010100070e42);
  static const Tagx kReferencedPTOSequence = const Tagx(0x001c010100160e43);
  static const Tagx kReferencedTDRInstanceSequence =
      const Tagx(0x001c010100160e44);
  static const Tagx kPTOLocationDescription = const Tagx(0x001c010100180e45);
  static const Tagx kAnomalyLocatorIndicatorSequence =
      const Tagx(0x001c010100160e46);
  static const Tagx kAnomalyLocatorIndicator = const Tagx(0x001c0103000a0e47);
  static const Tagx kPTORegionSequence = const Tagx(0x001c010100160e48);
  static const Tagx kInspectionSelectionCriteria =
      const Tagx(0x001c010100050e49);
  static const Tagx kSecondaryInspectionMethodSequence =
      const Tagx(0x001c010100160e4a);
  static const Tagx kPRCSToRCSOrientation = const Tagx(0x001c010600070e4b);
  static const Tagx kMACParametersSequence = const Tagx(0x001c010100160e4c);
  static const Tagx kCurveDimensions = const Tagx(0x005c0101001f0e4d);
  static const Tagx kNumberOfPoints = const Tagx(0x005c0101001f0e4e);
  static const Tagx kTypeOfData = const Tagx(0x005c010100050e4f);
  static const Tagx kCurveDescription = const Tagx(0x005c0101000c0e50);
  static const Tagx kAxisUnits = const Tagx(0x005c01ff00140e51);
  static const Tagx kAxisLabels = const Tagx(0x005c01ff00140e52);
  static const Tagx kDataValueRepresentation = const Tagx(0x005c0101001f0e53);
  static const Tagx kMinimumCoordinateValue = const Tagx(0x005c01ff001f0e54);
  static const Tagx kMaximumCoordinateValue = const Tagx(0x005c01ff001f0e55);
  static const Tagx kCurveRange = const Tagx(0x005c01ff00140e56);
  static const Tagx kCurveDataDescriptor = const Tagx(0x005c01ff001f0e57);
  static const Tagx kCoordinateStartValue = const Tagx(0x005c01ff001f0e58);
  static const Tagx kCoordinateStepValue = const Tagx(0x005c01ff001f0e59);
  static const Tagx kCurveActivationLayer = const Tagx(0x005c010100050e5a);
  static const Tagx kAudioType = const Tagx(0x005c0101001f0e5b);
  static const Tagx kAudioSampleFormat = const Tagx(0x005c0101001f0e5c);
  static const Tagx kNumberOfChannels = const Tagx(0x005c0101001f0e5d);
  static const Tagx kNumberOfSamples = const Tagx(0x005c0101001c0e5e);
  static const Tagx kSampleRate = const Tagx(0x005c0101001c0e5f);
  static const Tagx kTotalTime = const Tagx(0x005c0101001c0e60);
  static const Tagx kAudioSampleData = const Tagx(0x005c0101001d0e61);
  static const Tagx kAudioComments = const Tagx(0x005c0101000d0e62);
  static const Tagx kCurveLabel = const Tagx(0x005c0101000c0e63);
  static const Tagx kCurveReferencedOverlaySequence =
      const Tagx(0x005c010100160e64);
  static const Tagx kCurveReferencedOverlayGroup =
      const Tagx(0x005c0101001f0e65);
  static const Tagx kCurveData = const Tagx(0x005c0101001d0e66);
  static const Tagx kSharedFunctionalGroupsSequence =
      const Tagx(0x001c010100160e67);
  static const Tagx kPerFrameFunctionalGroupsSequence =
      const Tagx(0x001c010100160e68);
  static const Tagx kWaveformSequence = const Tagx(0x001c010100160e69);
  static const Tagx kChannelMinimumValue = const Tagx(0x001c0101001d0e6a);
  static const Tagx kChannelMaximumValue = const Tagx(0x001c0101001d0e6b);
  static const Tagx kWaveformBitsAllocated = const Tagx(0x001c0101001f0e6c);
  static const Tagx kWaveformSampleInterpretation =
      const Tagx(0x001c010100050e6d);
  static const Tagx kWaveformPaddingValue = const Tagx(0x001c0101001d0e6e);
  static const Tagx kWaveformData = const Tagx(0x001c0101001d0e6f);
  static const Tagx kFirstOrderPhaseCorrectionAngle =
      const Tagx(0x001c010100100e70);
  static const Tagx kSpectroscopyData = const Tagx(0x001c010100100e71);
  static const Tagx kOverlayRows = const Tagx(0x001c0101001f0e72);
  static const Tagx kOverlayColumns = const Tagx(0x001c0101001f0e73);
  static const Tagx kOverlayPlanes = const Tagx(0x005c0101001f0e74);
  static const Tagx kNumberOfFramesInOverlay = const Tagx(0x001c0101000b0e75);
  static const Tagx kOverlayDescription = const Tagx(0x001c0101000c0e76);
  static const Tagx kOverlayType = const Tagx(0x001c010100050e77);
  static const Tagx kOverlaySubtype = const Tagx(0x001c0101000c0e78);
  static const Tagx kOverlayOrigin = const Tagx(0x001c010200170e79);
  static const Tagx kImageFrameOrigin = const Tagx(0x001c0101001f0e7a);
  static const Tagx kOverlayPlaneOrigin = const Tagx(0x005c0101001f0e7b);
  static const Tagx kOverlayCompressionCode = const Tagx(0x005c010100050e7c);
  static const Tagx kOverlayCompressionOriginator =
      const Tagx(0x005c010100140e7d);
  static const Tagx kOverlayCompressionLabel = const Tagx(0x005c010100140e7e);
  static const Tagx kOverlayCompressionDescription =
      const Tagx(0x005c010100050e7f);
  static const Tagx kOverlayCompressionStepPointers =
      const Tagx(0x005c01ff00030e80);
  static const Tagx kOverlayRepeatInterval = const Tagx(0x005c0101001f0e81);
  static const Tagx kOverlayBitsGrouped = const Tagx(0x005c0101001f0e82);
  static const Tagx kOverlayBitsAllocated = const Tagx(0x001c0101001f0e83);
  static const Tagx kOverlayBitPosition = const Tagx(0x001c0101001f0e84);
  static const Tagx kOverlayFormat = const Tagx(0x005c010100050e85);
  static const Tagx kOverlayLocation = const Tagx(0x005c0101001f0e86);
  static const Tagx kOverlayCodeLabel = const Tagx(0x005c01ff00050e87);
  static const Tagx kOverlayNumberOfTables = const Tagx(0x005c0101001f0e88);
  static const Tagx kOverlayCodeTableLocation = const Tagx(0x005c01ff00030e89);
  static const Tagx kOverlayBitsForCodeWord = const Tagx(0x005c0101001f0e8a);
  static const Tagx kOverlayActivationLayer = const Tagx(0x001c010100050e8b);
  static const Tagx kOverlayDescriptorGray = const Tagx(0x005c0101001f0e8c);
  static const Tagx kOverlayDescriptorRed = const Tagx(0x005c0101001f0e8d);
  static const Tagx kOverlayDescriptorGreen = const Tagx(0x005c0101001f0e8e);
  static const Tagx kOverlayDescriptorBlue = const Tagx(0x005c0101001f0e8f);
  static const Tagx kOverlaysGray = const Tagx(0x005c01ff001f0e90);
  static const Tagx kOverlaysRed = const Tagx(0x005c01ff001f0e91);
  static const Tagx kOverlaysGreen = const Tagx(0x005c01ff001f0e92);
  static const Tagx kOverlaysBlue = const Tagx(0x005c01ff001f0e93);
  static const Tagx kROIArea = const Tagx(0x001c0101000b0e94);
  static const Tagx kROIMean = const Tagx(0x001c010100070e95);
  static const Tagx kROIStandardDeviation = const Tagx(0x001c010100070e96);
  static const Tagx kOverlayLabel = const Tagx(0x001c0101000c0e97);
  static const Tagx kOverlayData = const Tagx(0x001c0101001d0e98);
  static const Tagx kOverlayComments = const Tagx(0x005c0101000d0e99);
  static const Tagx kPixelData = const Tagx(0x001c0101001d0e9a);
  static const Tagx kCoefficientsSDVN = const Tagx(0x005c010100120e9b);
  static const Tagx kCoefficientsSDHN = const Tagx(0x005c010100120e9c);
  static const Tagx kCoefficientsSDDN = const Tagx(0x005c010100120e9d);
  static const Tagx kVariablePixelData = const Tagx(0x005c0101001d0e9e);
  static const Tagx kVariableNextDataGroup = const Tagx(0x005c0101001f0e9f);
  static const Tagx kVariableCoefficientsSDVN = const Tagx(0x005c010100120ea0);
  static const Tagx kVariableCoefficientsSDHN = const Tagx(0x005c010100120ea1);
  static const Tagx kVariableCoefficientsSDDN = const Tagx(0x005c010100120ea2);
  static const Tagx kDigitalSignaturesSequence = const Tagx(0x001c010100160ea3);
  static const Tagx kDataSetTrailingPadding = const Tagx(0x001c0101000e0ea4);
  static const Tagx kItem = const Tagx(0x001c010000000ea5);
  static const Tagx kItemDelimitationItem = const Tagx(0x001c010000000ea6);

  static const Tagx kSequenceDelimitationItem = const Tagx(0x001c010000000ea7);


}
