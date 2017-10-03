// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.


import 'package:fast_tag/src/internal/base.dart';

/// Returns [true] if value [v] is in the specified range.
bool _inRange(int v, int min, int max) => v >= 0 && v <= 0xFFFF;
class FullTag extends TagBase {
  int _fields;

  FullTag(this._fields);

  @override
  int get fields => _fields;

  bool isValidIndex(int v) => _inRange(v, 0, 0xFFFF);
  int checkIndex(int v) => isValidIndex(v) ? v : invalidFieldError('Index', v);
  void set index(int i) =>
      _fields = ((checkIndex(i) << kIndexShift) & kIndexMask) | _fields;

  // VR Setter
  void set vrIndex(int i) =>
      _fields = ((checkVRIndex(i) << kVRIndexShift) & kVRIndexMask) | _fields;

  // Value Multiplicity Setters
  void set vmMin(int i) =>
      _fields = ((checkVMMin(i) << kVMMinShift) & kVMMinMask) | _fields;

  void set vmMax(int i) =>
      _fields = ((checkVMMax(i) << kVMMaxShift) & kVMMaxMask) | _fields;

  void set vmRank(int i) =>
      _fields = ((checkVMRank(i) << kVMRankShift) & kVMRankMask) | _fields;

  // EType Index Setter
  void set eTypeIndex(int i) =>
      _fields = ((checkEType(i) << kETypeShift) & kETypeMask) | _fields;

  void set ieIndex(int i) =>
      _fields = ((checkIELevel(i) << kIELevelShift) & kIELevelMask) | _fields;

  void set private(int i) =>
      _fields = ((checkPrivate(i) << kPrivateShift) & kPrivateMask) | _fields;

  void set isPrivate(bool v) => v ? 1 : 0;

 void set retired(int i) =>
      _fields = ((checkRetired(i) << kRetiredShift) & kRetiredMask) | _fields;

void set isRetired(bool v) => retired = v ? 1 : 0;

    void set deIdIndex(int i) =>
      _fields = ((checkDeId(i) << kDeIdShift) & kDeIdMask) | _fields;


  // **** Static Getters and Methods ****

  static bool isValidTagIndex(int i) => tagInRange(i);

  static int getIndex(int tag) => (tag & kIndexMask) >> kIndexShift;

  static int setIndex(int tag, int value) =>
      ((value << kIndexShift) & kIndexMask) | tag;

  static int setVRIndex(int tag, int value) =>
      ((value << kVRIndexShift) & kVRIndexMask) | tag;

  static int getVRIndex(int tag) => (tag & kVRIndexMask) >> kVRIndexShift;

  static int setVMMin(int tag, int value) =>
      ((value << kVMMinShift) & kVMMinMask) | tag;

  static int getVMMin(int tag) => (tag & kVMMinMask) >> kVMMinShift;

  static int setVMMax(int tag, int value) =>
      ((value << kVMMaxShift) & kVMMaxMask) | tag;

  static int getVMMax(int tag) => (tag & kVMMaxMask) >> kVMMaxShift;

  static int setVMRank(int tag, int value) =>
      ((value << kVMRankShift) & kVMRankMask) | tag;

  static int getVMRank(int tag) => (tag & kVMRankMask) >> kVMRankShift;

  static int setEType(int tag, int value) =>
      ((value << kETypeShift) & kETypeMask) | tag;

  static int getEType(int tag) => (tag & kETypeMask) >> kETypeShift;

  static int setIELevel(int tag, int value) =>
      ((value << kIELevelShift) & kIELevelMask) | tag;

  static int getIELevel(int tag) => (tag & kIELevelMask) >> kIELevelShift;

  static int setPrivate(int tag, int value) =>
      ((value << kPrivateShift) & kPrivateMask) | tag;

  static int getPrivate(int tag) => (tag & kPrivateMask) >> kPrivateShift;

  static int setRetired(int tag, int value) =>
      ((value << kRetiredShift) & kRetiredMask) | tag;

  static int getRetired(int tag) => (tag & kRetiredMask) >> kRetiredShift;

  static String showTag(int v) =>
      v.toRadixString(16).padLeft(16, "0").toUpperCase();

  static int fromList(List<int> tl) => makeFastTag(
      tl[0], tl[1], tl[2], tl[3], tl[4], tl[5], tl[6], tl[7], tl[8]);

  static int makeFastTag(int index, int vrIndex, int vmMin, int vmMax,
      int vmRank, int eType, int ieLevel, int private, int retired) {
    int tag = 0;

    tag = setIndex(tag, index);
    tag = setVRIndex(tag, vrIndex);
    tag = setVMMin(tag, vmMin);
    tag = setVMMax(tag, vmMax);
    tag = setVMRank(tag, vmRank);
    tag = setEType(tag, eType);
    tag = setIELevel(tag, ieLevel);
    tag = setPrivate(tag, private);
    tag = setRetired(tag, retired);
    return tag;
  }

  static List<int> readFastTag(int tag) {
    int index = getIndex(tag);
    int vrIndex = getVRIndex(tag);
    int vmMin = getVMMin(tag);
    int vmMax = getVMMax(tag);
    int vmRank = getVMRank(tag);
    int eType = getEType(tag);
    int ieLevel = getIELevel(tag);
    int private = getPrivate(tag);
    int retired = getRetired(tag);
    return [
      index,
      vrIndex,
      vmMin,
      vmMax,
      vmRank,
      eType,
      ieLevel,
      private,
      retired
    ];
  }
}
