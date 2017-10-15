// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See /[package]/AUTHORS file for other contributors.

import 'package:fast_tag/src/db/etype.dart';
import 'package:fast_tag/src/db/ie_level.dart';
import 'package:fast_tag/src/vr.dart';
import 'package:fast_tag/src/vm.dart';

class Tag {
  final int code;
  final String keyword;
  final String name;
  final VRStandard vr;
  final VMx vm;
  final EType eType;
  final IE ie;
  final bool isPrivate;
  final bool isRetired;
  final bool isPHI;
  final Anonymizer anonymizer;

  Tag(this.code, this.keyword, this.name, this.vr, this.vm, this.eType, this.ie,
      this.anonymizer, {this.isPrivate = true, this.isRetired = false, this.isPHI});

}

class Anonymizer {

}