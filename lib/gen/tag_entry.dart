// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See /[package]/AUTHORS file for other contributors.

import 'package:fast_tag/tag.dart';

const Map<String, String> tagEntryType = const <String, String>{
  'code': 'int',
  'keyword': 'String',
  'name': 'String',
  'vr': 'VR',
  'vm': 'VM',
  'eType': 'EType',
  'ie': 'IE',
  'isPublic': 'bool',
  'isRetired': 'bool'
};

class TagEntry {
  final Map<String, String> type = tagEntryType;
  int code;
  String keyword;
  String name;
  VRx vr;
  VMx vm;
  ETypeX eType;
  IEx ie;
  DeIdMethod deIdMethod;
  bool isPublic;
  bool isRetired;

  TagEntry(this.code, this.keyword, this.name, this.vr, this.vm, this.eType,
      this.ie, this.deIdMethod, {this.isPublic, this.isRetired});

  String _toHex4(int v) => v.toRadixString(16).padLeft(4, '0');
  String _toHex8(int v) =>  v.toRadixString(16).padLeft(8, '0');
  int get group => code >> 16;
  String get groupHex => '0x${_toHex4(group)}';
  int get element => code & 0xFFFF;
  String get elementHex => '0x${_toHex4(element)}';
  String get hex => '0x${_toHex8(code)}';
  String get dcm => '(${_toHex4(group)},${_toHex4(element)})';

  // VRs
  int get vrIndex => vr.index;
  int get vrCode => vr.code;
  String get vrKeyword => vr.keyword;
  bool isValidValue<T>(T v) => vr.isValid(v);
  bool isNotValidValue<T>(List<T> v, int maxLength) => vm.isNotValid(v, maxLength);

  // VMs
  int get minValues => vm.min;
  int get maxValues => vm.max;
  int get rank => vm.rank;
  bool isValidLength<T>(List<T> v, int maxLength) => vm.isValid(v, maxLength);
  bool isNotValidLength<T>(List<T> v, int maxLength) => vm.isNotValid(v, maxLength);

  bool isValidValues<T>(List<T> values, int maxLength) {
    if (vm.isNotValid(values, maxLength)) return false;
    for (var i = 0; i < values.length; i++)
      if (vr.isNotValid(values[i])) return false;
    return true;
  }

  /// Entity Type
  bool get isRequiredNonEmpty => eType.isRequiredNonEmpty;
  bool get isConditionallyRequiredNonEmpty =>
      eType.isConditionallyRequiredNonEmpty;
  bool get isRequired => eType.isRequired;
  bool get isConditionallyRequired => eType.isConditionallyRequired;
  bool get isOptional => eType.isOptional;

  /// Information Entity
  bool get isPatient => ie.isPatient;
  bool get isStudy => ie.isStudy;
  bool get isSeries => ie.isStudy;
  bool get isInstance => ie.isInstance;

  /// Returns _true_ if _this_ is a internal (group.isOdd) Element.
  bool get isPrivate => !isPublic;

  @override
  String toString() => '$runtimeType: $dcm $vr $vm, $eType, $ie, '
      '$isPublic, $isRetired $deIdMethod';
}
