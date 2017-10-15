// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:fast_tag/src/vr.dart';

void main() {
  print('Total VRs: ${VRx.kByIndex.length}');
  print('kUT.index: ${VRx.kUT.index}');
  assert(VRx.kMaxIndex == VRx.kUT.index);
  assert(VRx.kMaxSpecialIndex == VRx.kCodes.length);

  checkCodeOrder();
  checkKeywordVSCode();
  checkTables();
}

String hex8(int x) => x.toRadixString(16).padLeft(2, '0');
String hex16(int x) => x.toRadixString(16).padLeft(4, '0');
void checkCodeOrder() {
  for (var i = 0; i < VRx.kUT.index - 1; i++) {
	  final x0 = VRx.kSortedCodes[i];
	  final x1 = VRx.kSortedCodes[i+1];
    print('x0: $x0, x1: $x1');
    assert(x0 < x1);

	  final k0 = VRx.keywords[i];
	  final k1 = VRx.keywords[i+1];
    print('k0: $k0, k1: $k1');
    assert(k0.compareTo(k1) == -1);

	  final vr = VRx.kByIndex[i];
	  final next = VRx.kByIndex[i + 1];
	  final v = vr.keyword.compareTo(next.keyword);
    print('$i: $vr $next : $v');
    assert(v == -1);
  }
}

// check codes match keywords
// char order is reversed code order because little endian.
void checkKeywordVSCode() {
  for (var i = 0; i < VRx.kMaxIndex; i++) {
	  final vr = VRx.kByIndex[i];
    print('$i: ${VRx.kByIndex[i]}');
    print('${vr.keyword}: ${hex16(vr.code)}');
    final char0 = vr.keyword.codeUnitAt(0);
    final char1 = vr.keyword.codeUnitAt(1);
    final code0 = vr.code & 0xFF;
    final code1 = vr.code >> 8;

    print('${hex8(char0)} == ${hex8(code0)}');
    print('${hex8(char1)} == ${hex8(code1)}');
    assert(char0 == code0);
    assert(char1 == code1);
  }
}

void checkTables() {
  for (var i = 0; i < VRx.kMaxIndex; i++) {
    final vr0 = VRx.kByIndex[i];
    final vr01 = VRx.kByIndex[i + 1];
    print('$i: alphabetic: $vr0');
    assert(vr0.index == i);
    assert(vr0.code == VRx.kCodes[vr0.index]);
    assert(vr0.keyword.compareTo(vr01.keyword) == -1);
    assert(vr0 == VRx.sortedCodesToVR[vr0.code]);

    final vr1 = VRx.kBySortedCodeIndex[i];
    print('i: $i, vr1: $vr1: index: ${vr1.sortIndex}');
    assert(vr1 == VRx.kBySortedCodeIndex[vr1.sortIndex]);
    final vr11 = VRx.kBySortedCodeIndex[i+1];
    print('$i: sorted codes: $vr1');
    assert(vr1.sortIndex == i);
    assert(vr1.code == VRx.kCodes[vr1.index]);
    assert(vr1.code.compareTo(vr11.code) == -1);
  //  assert(vr1.code == VRx.sortedCodes[vr1.index]);

    final index = VRx.codeToIndex(vr0.code);


    print('i: $i, index: $index');
    print('index: ${vr0.index}');
    assert(vr0.keyword == VRx.keywords[vr0.index]);
    assert(vr0.keyword == VRx.keywords[i]);
    assert(i == VRx.keywordToIndex(vr0.keyword));
    assert(vr0.index == VRx.keywordToIndex(vr0.keyword));

    final i0 = vr0.index;
    final i1 = VRx.codeToIndex(vr0.code);
    final i2 = VRx.keywordToIndex(vr0.keyword);

    print('i0: $i0, i1: $i1, i2: $i2');
    assert(i0 == i2);
    assert(i0 == i2);

    assert(vr0 == VRx.kByIndex[vr0.index]);
    assert(vr0 == VRx.codeToVR(vr0.code));
    assert(vr0 == VRx.keywordToVR[vr0.keyword]);
  }
}
