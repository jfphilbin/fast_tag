// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:system/server.dart';
import 'package:tag/tag.dart';
import 'package:fast_tag/tag_full.dart';
import 'package:fast_tag/tag.dart';
/*

int kIndexMask = 0x000000000000FFFF;
int kVRIndexMask = 0x0000000000FF0000;
int kVMMinMask = 0x00000000FF000000;
int kVMMaxMask = 0x000000FF00000000;
int kVMRankMask = 0x0000FF0000000000;
int kETypeMask = 0x0007000000000000;
int kIELevelMask = 0x0018000000000000;
int kPrivateMask = 0x0020000000000000;
int kRetiredMask = 0x0040000000000000;
int kDeIdMask = 0x0380000000000000;

int kIndexShift = 0;
int kVRIndexShift = 16;
int kVMMinShift = 24;
int kVMMaxShift = 32;
int kVMRankShift = 40;
int kETypeShift = 48;
int kIELevelShift = 51;
int kPrivateShift = 53;
int kRetiredShift = 54;
int kDeIdShift = 55;

int setField(int attribute, int value, int shift, int mask) =>
    ((value << shift) & mask) | attribute;

int getField(int attribute, int shift, int mask) => (attribute & mask) >> shift;

int setIndex(int attribute, int value) =>
    ((value << kIndexShift) & kIndexMask) | attribute;

int getIndex(int attribute) => (attribute & kIndexMask) >> kIndexShift;

int setVRIndex(int attribute, int value) =>
    ((value << kVRIndexShift) & kVRIndexMask) | attribute;

int getVRIndex(int attribute) => (attribute & kVRIndexMask) >> kVRIndexShift;

int setVMMin(int attribute, int value) =>
    ((value << kVMMinShift) & kVMMinMask) | attribute;

int getVMMin(int attribute) => (attribute & kVMMinMask) >> kVMMinShift;

int setVMMax(int attribute, int value) =>
    ((value << kVMMaxShift) & kVMMaxMask) | attribute;

int getVMMax(int attribute) => (attribute & kVMMaxMask) >> kVMMaxShift;

int setVMRank(int attribute, int value) =>
    ((value << kVMRankShift) & kVMRankMask) | attribute;

int getVMRank(int attribute) => (attribute & kVMRankMask) >> kVMRankShift;

int setEType(int attribute, int value) =>
    ((value << kETypeShift) & kETypeMask) | attribute;

int getEType(int attribute) => (attribute & kETypeMask) >> kETypeShift;

int setIELevel(int attribute, int value) =>
    ((value << kIELevelShift) & kIELevelMask) | attribute;

int getIELevel(int attribute) => (attribute & kIELevelMask) >> kIELevelShift;

int setPrivate(int attribute, int value) =>
    ((value << kPrivateShift) & kPrivateMask) | attribute;

int getPrivate(int attribute) => (attribute & kPrivateMask) >> kPrivateShift;

int setRetired(int attribute, int value) =>
    ((value << kRetiredShift) & kRetiredMask) | attribute;

int getRetired(int attribute) => (attribute & kRetiredMask) >> kRetiredShift;

int setDeId(int attribute, int value) =>
    ((value << kDeIdShift) & kDeIdMask) | attribute;

int getDeId(int attribute) => (attribute & kDeIdMask) >> kDeIdShift;

String showTag(int v) => v.toRadixString(16).padLeft(16, "0").toUpperCase();
*/

FullTag makeFastTagFromList(List<int> tl) => makeFastTag(
    tl[0], tl[1], tl[2], tl[3], tl[4], tl[5], tl[6], tl[7], tl[8], tl[9]);

FullTag makeFastTag(int index, int vrIndex, int vmMin, int vmMax, int vmRank,
    int eType, int ieLevel, int private, int retired, int deId) {
  FullTag tag = new FullTag(0);

  tag.index = index;
  tag.vrIndex = vrIndex;
  tag.vmMin = vmMin;
  tag.vmMax = vmMax;
  tag.vmRank = vmRank;
  tag.eTypeIndex = eType;
  tag.ieIndex = ieLevel;
  tag.private = private;
  tag.retired = retired;
  tag.deIdIndex = deId;
  print('${tag.info}');
  return tag;
}

List<int> readFastTag(FullTag tag) {
  print('${tag.fieldsAsHex}');
  int index = tag.index;
  print('${tag.index}');
  int vrIndex = tag.vrIndex;
  int vmMin = tag.vmMin;
  int vmMax = tag.vmMax;
  int vmRank = tag.vmRank;
  int eType = tag.eTypeIndex;
  int ieLevel = tag.ieIndex;
  int private = tag.private;
  int retired = tag.retired;
  int deId = tag.deIdIndex;

  return [
    index,
    vrIndex,
    vmMin,
    vmMax,
    vmRank,
    eType,
    ieLevel,
    private,
    retired,
    deId
  ];
}

//String showTag(int v) => v.toRadixString(16).padLeft(16, "0").toUpperCase();

const List<List<int>> tags = const <List<int>>[
// [index, vrIndex, vmMin, vmMax, vmRank, eType, ieLevel, private, retired]
  const [0x1234, 0x56, 0x78, 0x9A, 0xBC, 0, 0, 0x01, 0x01, 0x01],
  const [0xFEDC, 0xBA, 0x98, 0x76, 0x54, 1, 1, 0x00, 0x00, 0x02],
  const [0xFEDC, 0xBA, 0x98, 0x76, 0x54, 2, 2, 0x00, 0x00, 0x03],
  const [0xFEDC, 0xBA, 0x98, 0x76, 0x54, 3, 3, 0x00, 0x00, 0x04],
  const [0xFEDC, 0xBA, 0x98, 0x76, 0x54, 4, 4, 0x00, 0x00, 0x05],
  const [0xFEDC, 0xBA, 0x98, 0x76, 0x54, 5, 5, 0x00, 0x00, 0x06],
  const [0xFEDC, 0xBA, 0x98, 0x76, 0x54, 6, 6, 0x00, 0x00, 0x07]
];

FullTag convertTag(int index, Tag tag) {
  log.debug2('$index: $tag');
  FullTag t = new FullTag(0);
  var sIndex = TagBase.tagCodeToIndex(tag.code);
  log.debug('index($index) sIndex($sIndex)');
  t.index = index;
  log.debug('index: $index, t.index: ${t.index}');
  // *** VR Index
  log.debug3('tag.vrIndex: ${tag.vrIndex}');
  int vrIndex = tag.vrIndex - 1;
  log.debug3('vrIndex: $vrIndex');
  if (tag.vr.index > 3) vrIndex -= 1;
  log.debug3('vrIndex: $vrIndex');
  t.vrIndex = vrIndex;
  log.debug3('vrIndex: ${t.vrIndex}, tag.vr.index: ${tag.vr.index}');

  // VM
  int vmRank = tag.vm.width;
  if (vmRank == 0) vmRank = 1;
  int vmMax = tag.vm.max;
  if (tag.vm.max == 0) vmMax = 1;
  int vmMin = tag.vm.min;
  vmMax = tag.vm.max * vmRank;

  log.debug1('vmMin: $vmMin, vmMax: $vmMax, vmRank: $vmRank');
  t.vmMin = vmMin;
  t.vmMax = vmMax;
  t.vmRank = vmRank;
  log.debug1('vmMin: ${t.vmMin}, vmMax: ${t.vmMax}, vmRank: ${t.vmRank}');

  t.eTypeIndex = ETypeX.k3.index;
  t.ieIndex = IEx.kInstance.index;
  t.isRetired = tag.isRetired;
  t.deIdIndex = DeIdMethod.kKeep.index;

  log.debug('$index: ${t.fields}');
  if (index != t.index) log.error('Bad index($index) tag.index(${t.index}');
  Tagx tagx = new Tagx(t.fields);
  log.debug('${tagx.index}: Tagx: ${tagx.info}');
  return t;
}

void main() {
  Server.initialize(name: "make_fast_tag.dart", level: Level.debug1);
/*  //for (int i = 0; i < tags.length; i++) {
  for (int i = 0; i < 1; i++) {
    var tagList = tags[i];
    FullTag tag = makeFastTagFromList(tagList);
    print('$tag');
    print('${tag.info}');
    List<int> list = readFastTag(tag);
    print(' in: $tagList');
    print('fast_tag: ${tag.info}');
    print('out: $list\n');
  }
  */
  int index = 0x100;
  Tag tag = tagMap.values.toList()[index];
  int kIndex = TagBase.tagKeywordToIndex(tag.keyword);
  log.debug('index: $index: keyword index: $kIndex');
  log.debug('$index: $tag');
  FullTag ft = convertTag(index, tag);
  log.debug('ft: ${ft.info}');
  createIndexes();
}

void createIndexes() {
  List<int> codesByIndex = <int>[];
  List<String> keywordsByIndex = <String>[];
  Map<String, int> keywords = <String, int>{};
  List<String> namesByIndex = <String>[];
  List<VR> vrsByIndex = <VR>[];
  List<VM> vmsByIndex = <VM>[];
  List<bool> isRetiredByIndex = <bool>[];

  List<PTag> ptags = tagMap.values.toList();
  var staticConst = "";
  var keywordConst = "";
  var codeConst = "";
//  for (int i = 0; i < tagMap.length; i++) {
  for (int i = 0; i < 2; i++) {
    log.debug('index: $i');
    FullTag t = new FullTag(0);
    int code = ptags[i].code;
    codesByIndex.add(code);
    String keyword = ptags[i].keyword;
    keywordsByIndex.add(keyword);
    keywords[keyword] = i;

    namesByIndex.add(ptags[i].name);
    t.index = i;

    VR vr = ptags[i].vr;
    vrsByIndex.add(vr);
    t.vrIndex = vr.index;

    VM vm = ptags[i].vm;
    vmsByIndex.add(vm);
    log.debug('vm ${vm.keyword}: ${t.vmMin}, ${t.vmMax}, ${t.vmRank}');
    t.vmRank = (vm.width == 0) ? 1 : vm.width;
    log.debug('vmRank: ${t.vmRank}');
 //   t.vmMin = (vm.min ;
    t.vmMax = (vm.max == -1) ? 255 : vm.max;
    t.vmMax = t.vmMax * t.vmRank;
    log.debug('vmMax: ${t.vmRank}');

    t.eTypeIndex = ETypeX.k3.index;
    t.ieIndex = IEx.kInstance.index;
    t.isPrivate = ptags[i].isPublic;
    bool retired = ptags[i].isRetired;
    t.isRetired = retired;
    isRetiredByIndex.add(retired);

    t.deIdIndex = DeIdMethod.kKeep.index;

    log.debug('T: ${t.info}');
    staticConst +=
        'static const Tagx k$keyword = const Tagx(${t.fieldsAsHex});';
    keywordConst += 'static const Tagx k$keyword = ${t.fieldsAsHex});';
    codeConst += 'const k$code = ${t.fieldsAsHex});';
  }
  print('Tags: $staticConst');
  print('keywords: $keywordConst');
  print('Codes: $codeConst');
  List<String> sortedKeywords = new List.from(keywordsByIndex);
  sortedKeywords.sort();
  List<int> sortedKeywordIndexToIndex = new List<int>(sortedKeywords.length);
  for(int i = 0; i < sortedKeywords.length; i++) {

    String keyword = keywordsByIndex[i];
    log.debug('$i: "$keyword"');
    int sortedIndex = sortedKeywords.indexOf(keyword);
    sortedKeywordIndexToIndex[sortedIndex] = i;
    log.debug('sortedIndex = $sortedIndex: ${sortedKeywords[sortedIndex]}');
    assert(keywordsByIndex[i] == sortedKeywords[sortedIndex]);
  }

  print('kbi: ${keywordsByIndex.length}');
  print('kbi: ${sortedKeywordIndexToIndex.length}');
  print('kbi: ${sortedKeywords.length}');


  writeListFile('bin/output/keywords_by_index.dart',
    stringListToListDef('keywordsByIndex', keywordsByIndex));
  writeListFile('bin/output/sorted_keywords.dart',
      stringListToListDef('sortedKeywords', sortedKeywords));
  writeListFile('bin/output/sorted_keywords_index.dart',
      intListToListDef('sortedKeywordIndex', sortedKeywordIndexToIndex));

  writeListFile('bin/output/codes_by_index.dart',
      intListToListDef('codes_by_index', codesByIndex));
  writeListFile('bin/output/sorted_codes_index.dart',
      intListToListDef('sortedCodesIndex', sortedCodes));

}

String stringListToListDef(String name, List<String> values) {
  Iterable<String> sList = values.map((v) => '"$v"');
  var s = sList.join(', ');
  return '''
  const List<String> $name = const <String>[
  $s
  ];
  ''';
}

String intListToListDef(String name, List<int> values) {
  Iterable<String> sList = values.map((v) => '$v');
  var s = sList.join(', ');
  return '''
  const List<int> $name = const <int>[
  $s
  ];
  ''';
}

void writeListFile(String path, String contents) {
  File f = new File(path);
  f.writeAsStringSync(contents);

}
