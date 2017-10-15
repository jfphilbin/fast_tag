// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

library odw.sdk.core.tag;

import 'package:collection/collection.dart';

import 'package:fast_tag/src/error.dart';
import 'package:fast_tag/src/internal/tag_base.dart';
import 'package:fast_tag/src/issues.dart';
import 'package:fast_tag/src/vr.dart';

abstract class TagX<V> implements TagBase {
  @override
  int get fields;

  //const TagX(this.fields);

  /// Returns the DICOM Tag Code for [this] as a hexadecimal [String].
  String get asHex => get32BitHex(code);

  /// Returns the Tag Code Group Number of [this].
  int get group => code >> 16;

  /// Returns the Tag Code Group Number of [this] as a hexadecimal [String].
  String get groupAsHex => get16BitHex(group);

  /// Returns the Tag Code Element Number of [this].
  int get elt => code & 0xFFF;

  /// Returns the Tag Code Element Number of [this] as a hexadecimal [String].
  String get eltAsHex => get16BitHex(group);

  bool isValidVR(VRx vr, [Issues issues]) => vr.index == vrIndex;
  bool isValidVRIndex(int index, [Issues issues]) =>
      index >= 0 && index <= VRx.kCodes.length;
  bool isValidVRCode(int code, [Issues issues]) => VRx.isValidCode(code);

  /// Returns [true] if [vList] has a valid length for [this].
  bool isValidLength(Iterable<V> vList, [Issues issues]) {
    assert(vList != null);
    final length = vList.length;
    if (length == 0 && eTypeIndex > 1) return true;
    return (length >= vmMin && length <= vmMax && (length % vmRank) == 0)
        ? true
        : invalidValuesLength(this, vList, issues);
  }

  /// Returns [true] if [vList] is a valid values [List] for [this].
  //TODO: should _Note_: Checks all values in [vList], so [issues] will be complete.
  bool isValidValues(Iterable<V> vList, [Issues issues]) =>
      vList is List<V> && isValidLength(vList, issues) && _isValidValues(vList, issues);

  bool _isValidValues(List<V> vList, [Issues issues]) {
    for (var v in vList) if (vr.isNotValid(v)) return false;
    return true;
  }

  bool isNotValidLength(List<V> values, [Issues issues]) =>
      !isValidLength(values, issues);

  bool isNotValidValues(List<V> vList) => !isValidValues(vList);

  @override
  String toString() => '$runtimeType: $keyword$asDcm';

  // **** Static Getters and Methods ****

  static bool isValidTagIndex(int i) => tagInRange(i);

  static int tagCodeStringToIndex(String s) => binarySearch(sortedCodeStrings, s);

  static int tagCodeToIndex(int code) => binarySearch(sortedCodes, code);

  static String getTagKeyword(int index) =>
      (index <= 0 || index >= kKeywordsByIndex.length) ? null : kKeywordsByIndex[index];

  static int tagKeywordToIndex(String name) => binarySearch(sortedKeywords, name);

  static String getTagName(int index) =>
      (index <= 0 || index >= namesByIndex.length) ? null : namesByIndex[index];

  static int tagNameToIndex(String name) => binarySearch(sortedNames, name);

  /// A [List] of [TagBase]s by their index.
  static List<TagBase> byIndex = [];

  /// Returns the [TagBase] corresponding to [index].
  static TagBase lookup(int index) => byIndex[index];

  /// Returns the [TagBase] corresponding to its [index].
  static TagBase fromIndex(int index) => byIndex[index];

  /// Returns the [TagBase] corresponding to the DICOM [code].
  static TagBase fromCode(int code) => byIndex[tagCodeToIndex(code)];

  /// Returns the [TagBase] corresponding to code [String] [s]. A code [String]
  /// has the format "ggggeeee".
  static TagBase fromCodeString(String s) => byIndex[tagCodeStringToIndex(s)];

  /// Returns the [TagBase] corresponding to [keyword].
  static TagBase fromKeyword(String keyword) => byIndex[tagKeywordToIndex(keyword)];

  /// Returns the [TagBase] corresponding to [name].
  static TagBase fromName(String name) => byIndex[tagNameToIndex(name)];
}
