// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:tag/tag.dart';

import 'package:fast_tag/gen/tag_database.dart';
import 'package:fast_tag/src/vr.dart';
import 'package:fast_tag/src/vm.dart';
import 'package:fast_tag/src/etype.dart';
import 'package:fast_tag/src/ie.dart';
import 'package:fast_tag/src/de_id_method.dart';


void main() {
  for (var t in pTagCodeMap.values) {
    if (t.code >= 0xfffee000) continue;
    print('vr.index: ${t.vr.index}');
    final vrIndex = t.vr.index;
    var vrxIndex =  vrIndex - 1;
    if (vrIndex > 3) vrxIndex -= 1;
    var vr = (vrIndex == -1) ? null : VRx.kVRFromIndex(vrxIndex);
    if (t.vr == VR.kInvalid) vr = null;
    print('  vr: ${t.vr.id}');
    print(' vrx: $vr');
    print('t.vm: ${t.vm}');
    final id = t.vm.id;
    final vmx = VMx.keywordMap[id];
    print(' vm.keyword: "$id"');
    print('        vmx: $vmx');
    print('----');
    createTag(t.code, t.keyword, t.name, vr, vmx, ETypeX.k3, IEx.kInstance,
         DeIdMethod.kRemove, isPublic: true, isRetired: t.isRetired);
  }

  print(tagsByCode);
  tagsByCode.entries.values.forEach(print);
}
