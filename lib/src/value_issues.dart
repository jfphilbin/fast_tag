// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:fast_tag/src/vr.dart';

class ValueIssues<T> {
  VRStandard _vr;
  T _value;
  List<String> _issues;

  ValueIssues();

  VRStandard get vr => _vr;
  T get value => value;
  List<String> get issues => _issues ??= <String>[];

  bool get isEmpty => _value == null;

  void add(T value, VRStandard vr, String msg) {
    if (_value != null || _value != value) throw 'Invalid issue value:$value';
    _value = value;
    if (_vr != null || _vr != vr) throw 'Invalid issue vr: $vr';
    _vr == vr;
    if (_issues == null) {
      _issues = [msg];
    } else {
      _issues.add(msg);
    }
  }

  @override
  String toString() {
    if (isEmpty) return "No issues.";
    var s = (issues.length == 1)
        ? "has the following issue:\n "
        : "has the following issues:\n ";
    return 'Value($value) with $vr $s $_issues';
  }
}
