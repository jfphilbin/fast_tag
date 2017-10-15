// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:tag/tag.dart';

void main() {
  final codesByIndex = <String>[];
  var sortedCodes = <String>[];

  final keywordsByIndex = <String>[];
  var sortedKeywords = <String>[];

  final namesByIndex = <String>[];
  var sortedNames = <String>[];

  final tagArray = <List<int>>[];
//  List<int> tags = <int>[];
  final tagStrings = <String>[];

  final pTags = pTagCodeMap.values.toList(growable: false);
  print('Tag count: ${pTags.length}');
//  for(PTag fast_tag in pTagCodes.values) {
  for (var i = 1; i < pTags.length; i++) {
    final tag = pTags[i];
    print(tag);

    final code = '0x${tag.code.toRadixString(16).padLeft(8, "0")}';
    codesByIndex.add(code);
    keywordsByIndex.add('"${tag.keyword}"');
    namesByIndex.add('"${tag.name}"');
    final vr = tag.vr;
    print(vr);
    final vrIndex = tag.vrIndex;
    final vm = tag.vm;
    final vmMin = vm.min * vm.width;
    final vmMax = (vm.max == -1) ? 255 : vm.max * vm.width;
    final vmRank = vm.width;
    final eType = EType.k3.index;
    final ieLevel = 4;
    final retired = tag.isRetired ? 1 : 0;
    final private = 0;
    final fTag = [i, vrIndex, vmMin, vmMax, vmRank, eType, ieLevel, private, retired];
    print(fTag);

    tagArray.add(fTag);
    final fTagString = '$fTag';
    tagStrings.add(fTagString);
  }

  final tagArrayString = tagStrings.join(', const ');

  final x = 1;
  final y = 2;
  print('x:y ${x.compareTo(y)}');

  int compareStrings(String a, String b) => a.compareTo(b);

  sortedCodes = new List.from(codesByIndex)..sort(compareStrings);
  print(codesByIndex);
  print(sortedCodes);

  sortedKeywords = new List.from(keywordsByIndex)..sort(compareStrings);
  print(keywordsByIndex);
  print(sortedKeywords);

  sortedNames = new List.from(namesByIndex)..sort(compareStrings);
  print(namesByIndex);
  print(sortedNames);

  print(tagArray);
  print('const List<List<int> tagArray = const [\n$tagArrayString];');
}
