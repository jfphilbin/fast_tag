// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:tag/tag.dart';
//import 'package:fast_tag/tag.dart';

import 'package:fast_tag/gen/tag_entry.dart';
import 'package:fast_tag/gen/tag_database.dart';
import 'package:fast_tag/src/vr.dart';
import 'package:fast_tag/src/vm.dart';
import 'package:fast_tag/src/etype.dart';
import 'package:fast_tag/src/ie.dart';
import 'package:fast_tag/src/de_id_method.dart';


void main() {
  for (PTag t in pTagCodes.values) {
    if (t.code >= 0xfffee000) continue;
    print('vr.index: ${t.vr.index}');
    int vrIndex = t.vr.index;
    int vrxIndex =  vrIndex - 1;
    if (vrIndex > 3) vrxIndex -= 1;
    VRx vr = (vrxIndex == -1) ? null : VRx.kByAlphabeticIndex[vrxIndex];
    if (t.vr == VR.kInvalid) vr = null;
    print('  vr: ${t.vr.id}');
    print(' vrx: $vr');
    print('t.vm: ${t.vm}');
    String id = t.vm.id;
    VMx vmx = VMx.keywordMap[id];
    print(' vm.keyword: "${id}"');
    print('        vmx: $vmx');
    print('----');
    createTag(t.code, t.keyword, t.name, vr, vmx, ETypeX.k3, IEx.kInstance,
        false, t.isRetired, DeIdMethod.kRemove);
  }

  print(tagsByCode);
  for(TagEntry tag in tagsByCode.entries.values)
    print(tag);
}
