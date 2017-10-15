// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:tag/tag.dart';

import 'package:fast_tag/src/gen/constant_strings.dart';
import 'package:fast_tag/src/gen/common.dart';

String createHeading() => '''
$copyright

import 'package:collection/collection.dart';

''';

List<int> publicCodeListByIndex() {
  final codesByIndex = <int>[];
  final pTags = pTagCodeMap.values.toList(growable: false);
  print('Tag count: ${pTags.length}');

  for (var i = 1; i < pTags.length; i++) {
    final tag = pTags[i];
    codesByIndex.add(tag.code);
  }
  return codesByIndex;
}

List<String> codeListToHexList(List<int> codeList) {
	final strings = new List<String>(codeList.length);
  for(var i = 0; i < strings.length; i++)
    strings[i] = codeToHex(codeList[i], withPrefix: true);
  return strings;
}

String genTagCodesByIndex(List<String> codeStrings) =>
     genListDefinition('tagCodesByIndex', 'int', codeStrings);

String genSortedTagCodes(List<String> codeStrings) {
	final strings = listSort(codeStrings);
  return genListDefinition('sortedCodes', 'int', strings);
}

List<String> codeListToQuotedCodeList(List<int> codeList) {
  final codeStringList = <String>[];
  for (var code in codeList) codeStringList.add(quotedString(codeToHex(code)));
  return codeStringList;
}

String genTagCodeStringsByIndex(List<String> codes) =>
 genListDefinition('tagCodeStringsByIndex', 'String', codes);

String genSortedTagCodeStrings(List<String> codes) =>
 genListDefinition('sortedCodeStrings', 'String', listSort(codes));

List<String> genCodeAsStrings() {
  final codes = <String>[];
  final pTags = pTagCodeMap.values.toList(growable: false);
  print('Tag count: ${pTags.length}');

  for (var i = 1; i < pTags.length; i++) {
	  final tag = pTags[i];
	  final code = codeToHex(tag.code);
    codes.add(code);
  }
  return codes;

}

List<String> genIntCodesList() {
	final codesByIndex = <String>[];

  final pTags = pTagCodeMap.values.toList(growable: false);
  print('Tag count: ${pTags.length}');

  for (var i = 1; i < pTags.length; i++) {
	  final tag = pTags[i];
    final code = codeToHex(tag.code);
    codesByIndex.add(code);
  }
  return codesByIndex;
}

