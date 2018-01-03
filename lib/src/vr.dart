// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:collection/collection.dart';
import 'package:string/string.dart';
import 'package:system/system.dart';

import 'package:fast_tag/src/item.dart';
import 'package:fast_tag/src/issues.dart';

abstract class VRx<T> {
  /// The [keyword] for _this_.
  final String keyword;

  /// The [index] for _this_.
  final int index;

  const VRx._(this.keyword, this.index);

  /// The 16-bit code of _this_.
  int get code;

  /// The size of value in bytes.
  int get size;

  /// The maximum Value Field length.
  int get maxVFLength;

  int get sortIndex;

  bool isValidVR(VRx vr);

  bool isValid(T value, [Issues issues, VRx vr]) =>
      isValidVR(vr) && vr.isValid(value);

  bool isNotValid(T value, [Issues issues, VRx vr]) =>
      !isValid(value, issues, vr);

  @override
  String toString() => 'VR.k$keyword';

  // Standard VRs
  static const VRx kAE = VRString.kAE;
  static const VRx kAS = VRString.kAS;
  static const VRx kAT = VRInt.kAT;
  static const VRx kCS = VRString.kCS;
  static const VRx kDA = VRString.kDA;
  static const VRx kDS = VRString.kDS;
  static const VRx kDT = VRString.kDT;
  static const VRx kFD = VRFloat.kFD;
  static const VRx kFL = VRFloat.kFL;
  static const VRx kIS = VRString.kIS;
  static const VRx kLO = VRString.kLO;
  static const VRx kLT = VRString.kLT;
  static const VRx kOB = VRInt.kOB;
  static const VRx kOD = VRFloat.kOD;
  static const VRx kOF = VRFloat.kOF;
  static const VRx kOL = VRInt.kOL;
  static const VRx kOW = VRInt.kOW;
  static const VRx kPN = VRString.kPN;
  static const VRx kSH = VRString.kSH;
  static const VRx kSL = VRInt.kSL;
  static const VRx kSQ = VRSequence.kSQ;
  static const VRx kSS = VRInt.kSS;
  static const VRx kST = VRString.kST;
  static const VRx kTM = VRString.kTM;
  static const VRx kUC = VRString.kUC;
  static const VRx kUI = VRString.kUI;
  static const VRx kUL = VRInt.kUL;
  static const VRx kUN = VRInt.kUN;
  static const VRx kUR = VRString.kUR;
  static const VRx kUS = VRInt.kUS;
  static const VRx kUT = VRString.kUT;

  static const VRx kOBOW = VRSpecial.kOBOW;
  static const VRx kUSSS = VRSpecial.kUSSS;
  static const VRx kUSSSOW = VRSpecial.kUSSSOW;
  static const VRx kUSOW = VRSpecial.kUSOW;
  static const VRx kUSOW1 = VRSpecial.kUSOW1;

  static const int kMinIndex = 0;
  static const int kMaxIndex = 30;
  static const int kMaxSpecialIndex = 36;

  static const List<VRx> kByIndex = const <VRx>[
    kAE, kAS, kAT, kCS, kDA, kDS, kDT, kFD,
    kFL, kIS, kLO, kLT, kOB, kOD, kOF, kOL,
    kOW, kPN, kSH, kSL, kSQ, kSS, kST, kTM,
    kUC, kUI, kUL, kUN, kUR, kUS, kUT,
    // stop reformat
    kOBOW, kUSSS, kUSSSOW, kUSOW, kUSOW1
  ];

  static VRx kVRFromIndex(int index) {
  	RangeError.checkValidIndex(index, kByIndex);
	  return kByIndex[index];
  }

  /// VR codes in sorted order from min to max;
  static const List<VRx> kBySortedCodeIndex = const <VRx>[
    kDA, kOB, kUC, kFD, kOD, kAE, kOF, kSH,
    kUI, kFL, kOL, kSL, kUL, kTM, kPN, kUN,
    kLO, kSQ, kUR, kAS, kCS, kDS, kIS, kSS,
    kUS, kAT, kDT, kLT, kST, kUT, kOW // No reformat
  ];

  static const int kMinCode = 0x4541;
  static const int kMaxCode = 0x5455;

  /// VR codes in sorted order from min to max;
  static const List<int> kCodes = const <int>[
    0x4541, 0x5341, 0x5441, 0x5343, 0x4144, 0x5344, 0x5444, 0x4446,
    0x4c46, 0x5349, 0x4f4c, 0x544c, 0x424f, 0x444f, 0x464f, 0x4c4f,
    0x574f, 0x4e50, 0x4853, 0x4c53, 0x5153, 0x5353, 0x5453, 0x4d54,
    0x4355, 0x4955, 0x4c55, 0x4e55, 0x5255, 0x5355, 0x5455 // No reformat
  ];

  /// VR codes in sorted order from min to max;
  static const List<int> kSortedCodes = const <int>[
    0x4144, 0x424f, 0x4355, 0x4446, 0x444f, 0x4541, 0x464f, 0x4853,
    0x4955, 0x4c46, 0x4c4f, 0x4c53, 0x4c55, 0x4d54, 0x4e50, 0x4e55,
    0x4f4c, 0x5153, 0x5255, 0x5341, 0x5343, 0x5344, 0x5349, 0x5353,
    0x5355, 0x5441, 0x5444, 0x544c, 0x5453, 0x5455, 0x574f // No reformat
  ];

  /// Returns the index of the VRCode as a 16-bit Little Endian number.
  static int codeToIndex(int code) => binarySearch(kSortedCodes, code);
  static bool isValidCode(int code) => codeToIndex(code) != null;
  static VRx codeToVR(int code) => kVRFromIndex(codeToIndex(code));

  static const List<String> keywords = const <String>[
    'AE', 'AS', 'AT', 'CS', 'DA', 'DS', 'DT', 'FD',
    'FL', 'IS', 'LO', 'LT', 'OB', 'OD', 'OF', 'OL',
    'OW', 'PN', 'SH', 'SL', 'SQ', 'SS', 'ST', 'TM',
    'UC', 'UI', 'UL', 'UN', 'UR', 'US', 'UT',
    // No reformat
    'OBOW', 'USSS', 'USSSOW', 'USOW', 'USOW1'
  ];

  /// Returns the index of the VRCode as a 16-bit Little Endian number.
  static int keywordToIndex(String keyword) => binarySearch(keywords, keyword);

  /// VR codes in sorted order from min to max;
  static const Map<int, VRx> sortedCodesToVR = const <int, VRx>{
    0x4144: kDA, 0x424f: kOB, 0x4355: kUC, 0x4446: kFD,
    0x444f: kOD, 0x4541: kAE, 0x464f: kOF, 0x4853: kSH,
    0x4955: kUI, 0x4c46: kFL, 0x4c4f: kOL, 0x4c53: kSL,
    0x4c55: kUL, 0x4d54: kTM, 0x4e50: kPN, 0x4e55: kUN,
    0x4f4c: kLO, 0x5153: kSQ, 0x5255: kUR, 0x5341: kAS,
    0x5343: kCS, 0x5344: kDS, 0x5349: kIS, 0x5353: kSS,
    0x5355: kUS, 0x5441: kAT, 0x5444: kDT, 0x544c: kLT,
    0x5453: kST, 0x5455: kUT, 0x574f: kOW // No reformat
  };

  static const Map<int, VRx> codeToVRMap = const <int, VRx>{
    0x4541: kAE, 0x5341: kAS, 0x5441: kAT, 0x5343: kCS,
    0x4144: kDA, 0x5344: kDS, 0x5444: kDT, 0x4446: kFD,
    0x4c46: kFL, 0x5349: kIS, 0x4f4c: kLO, 0x544c: kLT,
    0x424f: kOB, 0x444f: kOD, 0x464f: kOF, 0x4c4f: kOL,
    0x574f: kOW, 0x4e50: kPN, 0x4853: kSH, 0x4c53: kSL,
    0x5153: kSQ, 0x5353: kSS, 0x5453: kST, 0x4d54: kTM,
    0x4355: kUC, 0x4955: kUI, 0x4c55: kUL, 0x4e55: kUN,
    0x5255: kUR, 0x5355: kUS, 0x5455: kUT // stop reformat
  };

  //TODO: compare the performance of this to [codeToVR]. Pick one.
  VRx vrFromCode(int vrCode) => codeToVRMap[vrCode];

  static const Map<String, VRx> keywordToVR = const <String, VRx>{
    'AE': kAE, 'AS': kAS, 'AT': kAT, 'CS': kCS,
    'DA': kDA, 'DS': kDS, 'DT': kDT, 'FD': kFD,
    'FL': kFL, 'IS': kIS, 'LO': kLO, 'LT': kLT,
    'OB': kOB, 'OD': kOD, 'OF': kOF, 'OL': kOL,
    'OW': kOW, 'PN': kPN, 'SH': kSH, 'SL': kSL,
    'SQ': kSQ, 'SS': kSS, 'ST': kST, 'TM': kTM,
    'UC': kUC, 'UI': kUI, 'UL': kUL, 'UN': kUN,
    'UR': kUR, 'US': kUS, 'UT': kUT,
    // prevent reformat
    'OBOW': kOBOW, 'USSS': kUSSS, 'USSSOW': kUSSSOW,
    'USOW': kUSOW, 'USOW1': kUSOW1
  };
}

class VRStandard<T> extends VRx<T> {
  @override
  final int code;
  @override
  final int size;
  @override
  final int maxVFLength;
  @override
  final int sortIndex;

  const VRStandard._(String keyword, this.code, int index, this.size,
      this.maxVFLength, this.sortIndex)
      : super._(keyword, index);

  bool get isInteger => false;
  bool get isFloat => false;
  bool get isString => false;
  bool get isSequence => false;

  @override
  bool isValidVR(VRx vr) => true;

  @override
  bool isValid(T value, [Issues issues, VRx vr]) => false;
}

class VRFloat extends VRStandard<double> {
  const VRFloat._(String keyword, int code, int index, int size,
      int maxVFLength, int min, int max, int sortIndex)
      : super._(keyword, code, index, size, maxVFLength, sortIndex);

  @override
  bool get isFloat => true;

  @override
  bool isValid(Object value, [Issues issues, VRx vr]) =>
      (value is double) ? true : invalidValue(value, issues);

  static const VRStandard kFD =
      const VRFloat._('FD', 0x4446, 7, 8, kMaxShortVF, 8, 8, 3);
  static const VRStandard kFL =
      const VRFloat._('FL', 0x4c46, 8, 4, kMaxShortVF, 4, 4, 9);
  static const VRStandard kOD =
      const VRFloat._('OD', 0x444f, 13, 8, kMax64BitLongVF, 8, 8, 4);
  static const VRStandard kOF =
      const VRFloat._('OF', 0x464f, 14, 4, kMax32BitLongVF, 4, 4, 6);
}

class VRInt extends VRStandard<int> {
  final int minValue;
  final int maxValue;

  const VRInt._(String keyword, int code, int index, int size, int maxVFLength,
      this.minValue, this.maxValue, int sortIndex)
      : super._(keyword, code, index, size, maxVFLength, sortIndex);

  @override
  bool get isInteger => true;

  @override
  bool isValid(Object value, [Issues issues, VRx vr]) =>
      (value is int && value >= minValue && value <= maxValue)
          ? true
          : invalidValue(this, value);

  static const VRStandard kAT = const VRInt._(
      'AT', 0x5441, 2, kMaxShortVF, 4, kUint32Min, kUint32Max, 25);
  static const VRStandard kOB =
      const VRInt._('OB', 0x424f, 12, kMaxLongVF, 1, kUint8Min, kUint8Max, 1);
  static const VRStandard kOL = const VRInt._(
      'OL', 0x4c4f, 15, kMaxLongVF, 4, kUint32Min, kUint32Max, 10);
  static const VRStandard kOW = const VRInt._(
      'OW', 0x574f, 16, kMaxLongVF, 2, kUint16Min, kUint16Max, 30);
  static const VRStandard kSL =
      const VRInt._('SL', 0x4c53, 19, kMaxShortVF, 4, kInt32Min, kInt32Max, 11);
  static const VRStandard kSS =
      const VRInt._('SS', 0x5353, 21, kMaxShortVF, 2, kInt16Min, kInt16Max, 23);
  static const VRStandard kUL = const VRInt._(
      'UL', 0x4c55, 26, kMaxShortVF, 4, kUint32Min, kUint32Max, 12);
  static const VRStandard kUN =
      const VRInt._('UN', 0x4e55, 27, kMaxLongVF, 1, kUint8Min, kUint8Max, 15);
  static const VRStandard kUS = const VRInt._(
      'US', 0x5355, 29, kMaxShortVF, 2, kUint16Min, kUint16Max, 24);
}

typedef bool _StringValidator(String s);

class VRString extends VRStandard<String> {
  /// The [String] [validator].
  final _StringValidator validator;
  /// The minimum [String] length.
  final int minLength;
  /// The maximum [String] length.
  final int maxLength;

  const VRString._(String keyword, int code, int index, int maxVFLength,
      this.validator, this.minLength, this.maxLength, int sortIndex)
      : super._(keyword, code, index, 1, maxVFLength, sortIndex);

  @override
  bool isValid(String s, [Issues issues, VRx vr]) =>
      //Urgent: verify that validator checks length.
      (validator(s)) ? true : invalidValue(this, s);

  @override
  bool get isString => true;

  static const VRStandard kAE =
      const VRString._('AE', 0x4541, 0, kMaxShortVF, isAEString, 1, 16, 5);
  static const VRStandard kAS =
      const VRString._('AS', 0x5341, 1, 4, isASString, 4, 4, 19);
  static const VRStandard kCS =
      const VRString._('CS', 0x5343, 3, kMaxShortVF, isCSString, 1, 16, 20);
  static const VRStandard kDA =
      const VRString._('DA', 0x4144, 4, kMaxShortVF, isDAString, 8, 8, 0);
  static const VRStandard kDS =
      const VRString._('DS', 0x5344, 5, kMaxShortVF, isDSString, 1, 16, 21);
  static const VRStandard kDT =
      const VRString._('DT', 0x5444, 6, kMaxShortVF, isDTString, 8, 26, 26);
  static const VRStandard kIS =
      const VRString._('IS', 0x5349, 9, kMaxShortVF, isISString, 1, 12, 22);
  static const VRStandard kLO =
      const VRString._('LO', 0x4f4c, 10, kMaxShortVF, isLOString, 1, 64, 16);
  static const VRStandard kLT =
      const VRString._('LT', 0x544c, 11, kMaxShortVF, isLTString, 1, 10240, 27);
  static const VRStandard kPN = const VRString._(
      'PN', 0x4e50, 17, kMaxShortVF, isPNString, 1, 3 * 64, 14);
  static const VRStandard kSH =
      const VRString._('SH', 0x4853, 18, kMaxShortVF, isSHString, 1, 16, 7);
  static const VRStandard kST =
      const VRString._('ST', 0x5453, 22, kMaxShortVF, isSTString, 1, 1024, 28);
  static const VRStandard kTM =
      const VRString._('TM', 0x4d54, 23, kMaxShortVF, isTMString, 2, 13, 13);
  static const VRStandard kUC = const VRString._(
      'UC', 0x4355, 24, kMaxLongVF, isUCString, 1, kMaxLongVF, 2);
  static const VRStandard kUI =
      const VRString._('UI', 0x4955, 25, kMaxShortVF, isUIString, 1, 64, 8);
  static const VRStandard kUR = const VRString._(
      'UR', 0x5255, 28, kMaxLongVF, isURString, 1, kMaxLongVF, 18);
  static const VRStandard kUT = const VRString._(
      'UT', 0x5455, 30, kMaxLongVF, isUTString, 1, kMaxLongVF, 29);
}

class VRSequence extends VRStandard<Item> {
  const VRSequence._(
      String keyword, int code, int index, int maxVFLength, int sortIndex)
      : super._(keyword, code, index, 1, maxVFLength, sortIndex);

  @override
  bool isValid(Object item, [Issues issues, VRx vr]) =>
      (item is Item) ? true : invalidValue(this, item, issues);

  static const VRSequence kSQ =
      const VRSequence._('SQ', 0x5153, 20, kMaxLongVF, 17);
}

/// Special [VRx]s uses by very few Tags.
class VRSpecial extends VRx<int> {
  final List<VRx> vrList;

  const VRSpecial._(String keyword, int index, this.vrList)
      : super._(keyword, index);

  @override
  int get code => unsupportedError('Special VR($this) doesn\'t have a code');

  @override
  int get maxVFLength =>
      unsupportedError('Special VR($this) doesn\'t have a maxVFLength');

  @override
  int get size => unsupportedError('Special VR($this) doesn\'t have a size');

  @override
  int get sortIndex => -1;
  @override
  bool isValidVR(VRx vr) => vrList.contains(vr);

  @override
  bool isValid(int value, [Issues issues, VRx vr]) =>
      (isValidVR(vr) && vr.isValid(value, issues))
          ? true
          : invalidValue(vr, value, issues);

  static const VRSpecial kOBOW =
      const VRSpecial._('OBOW', 31, const [VRx.kOB, VRx.kOW]);

  static const VRSpecial kUSSS =
      const VRSpecial._('USSS', 32, const [VRx.kUS, VRx.kSS]);

  static const VRSpecial kUSSSOW =
      const VRSpecial._('kSSSOW', 32, const [VRx.kUS, VRx.kSS, VRx.kOW]);

  static const VRSpecial kUSOW =
      const VRSpecial._('kUSOW', 33, const [VRx.kUS, VRx.kOW]);

  static const VRSpecial kUSOW1 =
      const VRSpecial._('kSSSOW', 34, const [VRx.kUS, VRx.kOW]);
}

class InvalidVRError extends Error {
  Object value;
  String msg;

  InvalidVRError(this.value, [this.msg = '']);
}

Null invalidVRError(VRx vr, Object value, [Issues issues]) {
  final msg = 'Invalid VR.k$keyword value: $value';
  log.error(msg);
  if (issues != null) issues.add(msg);
  if (throwOnError) throw new InvalidFloatValueError(value, msg);
  return null;
}

class InvalidValueError extends Error {
  Object value;
  String msg;

  InvalidValueError(this.value, [this.msg = '']);
}

Null invalidValue(VRx vr, Object value, [Issues issues]) {
  final msg = 'Invalid VR.k$keyword value: $value';
  log.error(msg);
  if (issues != null) issues.add(msg);
  if (throwOnError) throw new InvalidFloatValueError(value, msg);
  return null;
}

class InvalidFloatValueError extends Error {
  Object value;
  String msg;

  InvalidFloatValueError(this.value, [this.msg = '']);
}

/* Flush if not needed
Null invalidFloatValue(VRStandard vr, Object value, [Issues issues]) {
  final msg = 'Invalid VR.k$keyword value: $value';
  log.error(msg);
  if (issues != null) issues.add(vr, value, msg);
  if (throwOnError) throw new InvalidFloatValueError(value, msg);
  return null;
}

class InvalidIntegerValueError extends Error {
  Object value;
  String msg;

  InvalidIntegerValueError(this.value, [this.msg = '']);
}

Null invalidIntegerValue(VRStandard vr, Object value, [Issues issues]) {
  final msg = 'Invalid VR.k$keyword value: $value';
  log.error(msg);
  if (issues != null) issues.add(vr, value, msg);
  if (throwOnError) throw new InvalidIntegerValueError(value, msg);
  return null;
}

class InvalidStringValueError extends Error {
  Object value;
  String msg;

  InvalidStringValueError(this.value, [this.msg = '']);
}

Null invalidStringValue(VRStandard vr, Object value, [Issues issues]) {
  final msg = 'Invalid VR.k$keyword value: $value';
  log.error(msg);
  if (issues != null) issues.add(vr, value, msg);
  if (throwOnError) throw new InvalidStringValueError(value, msg);
  return null;
}

class InvalidSequenceValueError extends Error {
  Object value;
  String msg;

  InvalidSequenceValueError(this.value, [this.msg = '']);

  @override
  String toString() => 'Invalid String value('$value') $msg';
}

Null invalidSequenceValue(VRStandard vr, Object value, [Issues issues]) {
  final msg = 'Invalid VR.k$keyword value: $value';
  log.error(msg);
  if (issues != null) issues.add(vr, value, msg);
  if (throwOnError) throw new InvalidSequenceValueError(value, msg);
  return null;
}
*/
