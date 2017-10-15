// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.
library odw.sdk.core.tag_base;

import 'package:system/system.dart';

import 'package:fast_tag/src/de_id_method.dart';
import 'package:fast_tag/src/error.dart';
import 'package:fast_tag/src/etype.dart';
import 'package:fast_tag/src/ie.dart';
import 'package:fast_tag/src/vm.dart';
import 'package:fast_tag/src/vr.dart';

part 'package:fast_tag/src/internal/code_strings_by_index.dart';
part 'package:fast_tag/src/internal/codes_by_index.dart';
part 'package:fast_tag/src/internal/field_definitions.dart';
part 'package:fast_tag/src/internal/keywords_by_index.dart';
part 'package:fast_tag/src/internal/names_by_index.dart';

// ***** This file should not be exported by this library    ******
// ***** The definitions may change from version to version. *****
/// Fast Attributes
///
/// Fast Attributes allow complete verification of DICOM Data Elements.
/// A Fast Attribute fits into 63 bits, which means it is a small integer
/// value in Dart.
///
/// **Attribute Components**
///   Index: The Attribute's Identifier. It is used to access components
///      of the Attribute, such as Tag, Keyword, and Name, that are used
///      less often.
///   VR Index: Identifies the Attributes Value Representation or Data Type.
///   VM Min: The minimum number of values the Attribute must have.
///   VM Max: The maximum number of values the Attribute must have.
///   VM Rank: The width of the values array.
///   Type: The conditionality of the Attribute.
///   Private: Is the Attribute internal.
///   Retired: Is the Attribute retired.
///   Information Entity Level: The Level in the IE hierarchy.
///
/// The following table shows the different Attribute Values and the
/// number of bits needed for each.import.
///
/// |            |  Bits  |    Bits   |        |            |
/// | Name       | Needed | Allocated | Offset |    Mask    |
/// |------------|--------|-----------|--------|------------|
/// | Index      |      ? |        16 |      0 | 0x00000000 |
/// | VR Index   |      6 |         8 |     16 | 0x00000000 |
/// | VM Min     |      ? |         8 |     24 | 0x00000000 |
/// | VM Max     |      ? |         8 |     32 | 0x00000000 |
/// | VM Width   |      ? |         8 |     40 | 0x00000000 |
/// | Mode       |      3 |         3 |     43 | 0x00000000 |
/// | IE Level   |      2 |         2 |     45 | 0x00000000 |
/// | isPrivate  |      1 |         1 |     46 | 0x00000000 |
/// | is Retired |      1 |         1 |     24 | 0x00000000 |
/// |------------|--------|---- ------|--------|------------|
/// | Total      |      ? |        55 |        |            |
///

const int kIndexMask = 0x000000000000FFFF;
const int kVRIndexMask = 0x0000000000FF0000;
const int kVMMinMask = 0x00000000FF000000;
const int kVMMaxMask = 0x000000FF00000000;
const int kVMRankMask = 0x0000FF0000000000;
const int kETypeMask = 0x0007000000000000;
const int kIELevelMask = 0x0018000000000000;
const int kPrivateMask = 0x0020000000000000;
const int kRetiredMask = 0x0040000000000000;
const int kDeIdMask = 0x0380000000000000;

// Field shift values
const int kIndexShift = 0;
const int kVRIndexShift = 16;
const int kVMMinShift = 24;
const int kVMMaxShift = 32;
const int kVMRankShift = 40;
const int kETypeShift = 48;
const int kIELevelShift = 51;
const int kPrivateShift = 53;
const int kRetiredShift = 54;
const int kDeIdShift = 55;

/// Returns [true] if value [v] is in the specified range.
bool _inRange(int v, int min, int max) => v >= 0 && v <= 0xFFFF;

//Urgent: validate
// [0, 0, 0, 1, 1, 0, 0, 0, 0]
const int _kMinValidTag = 0x0000010100000000;
//Urgent: validate
// // [FFFF, 32, ?, 255, 3, 5, 4, 1, 1]
const int _kMaxValidTag = 0x07FFFFFFFFFFFFFFFFFF;

bool tagInRange(int tag) => tag >= 0 && tag <= 0x07FFFFFFFFFFFFFF;

String get64BitHex(int i) => '0x${i.toRadixString(16).padLeft(4, '0')}';
String get32BitHex(int i) => '0x${i.toRadixString(16).padLeft(4, '0')}';
String get16BitHex(int i) => '0x${i.toRadixString(16).padLeft(4, '0')}';

// Index
const int _kMinIndex = 0;
const int _kMaxIndex = 0xFFFF;
const int _kIndexOffset = 0;
bool _isValidIndex(int i) => _inRange(i, _kMinIndex, _kMaxIndex);
int checkIndex(int i) => _isValidIndex(i) ? i : invalidValueError(i, 'Index');

// vrIndex
const int kMinVRIndex = 0;
const int kMaxVRIndex = VRx.kMaxIndex;
bool _isValidVRIndex(int i) => _inRange(i, kMinVRIndex, kMaxVRIndex);
int checkVRIndex(int i) => _isValidVRIndex(i) ? i : invalidValueError(i, 'Index');

// vmMin
const int _kMinVMMin = 0;
const int _kMaxPublicVMMin = 24;
bool _isValidVMMin(int i) => _inRange(i, _kMinVMMin, _kMaxPublicVMMin);
int checkVMMin(int i) => _isValidVMMin(i) ? i : invalidValueError(i, 'vmMin');

// vmMax
const int _kMinVMMax = 1;
const int _kMaxVMMax = 255;
bool _isValidVMMax(int i) => _inRange(i, _kMinVMMax, _kMaxVMMax);
int checkVMMax(int i) => _isValidVMMax(i) ? i : invalidValueError(i, 'vmMax');

// vmRank
const int _kMinVMRank = 1;
const int _kMaxVMRank = -1;
bool _isValidVMRank(int i) => _inRange(i, _kMinVMRank, _kMaxVMRank);
int checkVMRank(int i) => _isValidVMRank(i) ? i : invalidValueError(i, 'vmRank');

// EType
const int _kMinEType = 0;
const int _kMaxEType = 4;
bool _isValidEType(int i) => _inRange(i, _kMinEType, _kMaxEType);
int checkEType(int i) => _isValidEType(i) ? i : invalidValueError(i, 'EType');

// IELevel
const int _kMinIELevel = 0;
const int _kMaxIELevel = 3;
bool _isValidIELevel(int i) => _inRange(i, _kMinIELevel, _kMaxIELevel);
int checkIELevel(int i) => _isValidIELevel(i) ? i : invalidValueError(i, 'IELevel');

// Private
const int _kMinPrivate = 0;
const int _kMaxPrivate = 3;
bool _isValidPrivate(int i) => _inRange(i, _kMinPrivate, _kMaxPrivate);
int checkPrivate(int i) => _isValidPrivate(i) ? i : invalidValueError(i, 'Private');

// Retired
const int _kMinRetired = 0;
const int _kMaxRetired = 3;
bool _isValidRetired(int i) => _inRange(i, _kMinRetired, _kMaxRetired);
int checkRetired(int i) => _isValidRetired(i) ? i : invalidValueError(i, 'Retired');

// De-Identification
const int _kMinDeId = 0;
const int _kMaxDeId = 7;
bool _isValidDeId(int i) => _inRange(i, _kMinDeId, _kMaxDeId);
int checkDeId(int i) => _isValidDeId(i) ? i : invalidValueError(i, 'De-Identifier');

abstract class TagBase {
   const TagBase();

  int get fields;

  // Tag Index
  int get index => (fields & kIndexMask) >> kIndexShift;

  /// Returns the [vrIndex] for [this].
  int get vrIndex => (fields & kVRIndexMask) >> kVRIndexShift;

  // Value Multiplicity Getters
  int get vmMin => (fields & kVMMinMask) >> kVMMinShift;
  int get vmMax => (fields & kVMMaxMask) >> kVMMaxShift;
  int get vmRank => (fields & kVMRankMask) >> kVMRankShift;

  /// Returns the Element Type index for [this].
  int get eTypeIndex => (fields & kETypeMask) >> kETypeShift;

  /// Returns the Information Entity index for [this].
  int get ieIndex => (fields & kIELevelMask) >> kIELevelShift;

  int get private => (fields & kPrivateMask) >> kPrivateShift;
  int get retired => (fields & kRetiredMask) >> kRetiredShift;
  int get deIdIndex => (fields & kDeIdMask) >> kDeIdShift;

  String get fieldsAsHex => '0x${fields.toRadixString(16).padLeft(16, '0')}';

  /// Returns the [keyword] for [this].
  String get keyword => kKeywordsByIndex[index];

  /// Returns the [name] for [this].
  String get name => namesByIndex[index];

  /// Returns the DICOM Tag Code for [this].
  int get code => codesByIndex[index];

  /// Returns the DICOM Tag Code for [this] as a DICOM formated [String],
  /// i.e. "(gggg,eeee)".
  String get asDcm => '($groupAsHex,$eltAsHex)';

  // **** VR Getters

  /// Returns the [VRx] for [this].
  VRx get vr => VRx.kVRFromIndex(vrIndex);

  VMx get vm => VMx.lookup(vmMin, vmMax, vmRank);

  /// Returns the Element Type ([ETypeX]) for [this].
  ETypeX get eType => ETypeX.byIndex[eTypeIndex];

  /// Returns the Information Entity ([IEx]) for [this].
  IEx get entity => IEx.byIndex[ieIndex];

  bool get isPrivate => private == 1;
  bool get isPublic => !isPrivate;
  bool get isRetired => retired == 1;
  DeIdMethod get deIdMethod => DeIdMethod.byIndex[deIdIndex];

  String get info {
    final sb = new StringBuffer('$this $vr $vm $eType $entity ')
      ..write((isPrivate) ? 'Private' : '')
      ..write((isRetired) ? 'Retired' : '');
    return sb.toString();
  }

  @override
  String toString() => '$runtimeType: $keyword$asDcm';
}
