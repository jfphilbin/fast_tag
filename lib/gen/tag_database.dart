// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:fast_tag/tag.dart';

import 'tag_entry.dart';

class DBDescriptor {
  final String name;
  final String title;
  final String keyType;
  final String valueType;
  final Map<String, String> memberType;

  const DBDescriptor(
      this.name, this.title, this.keyType, this.valueType, this.memberType);
}

abstract class TagDatabase<K> {
  DBDescriptor get descriptor;
  Map<K, TagEntry> get entries;

  TagEntry operator [](K index) => entries[index];
  void operator []=(K index, TagEntry e) => entries[index] = e;

  void add(TagEntry e);

  TagEntry lookup(K key);

  @override
  String toString() => '$runtimeType: ${entries.length} entries: '
      'Descriptor: $descriptor';
}

class IntTagDatabase extends TagDatabase<int> {
  @override
  final DBDescriptor descriptor = const DBDescriptor(
      "TagsByCode", "Tags by Code", "int", "TagEntry", tagEntryType);

  @override
  final Map<int, TagEntry> entries = <int, TagEntry>{};

  IntTagDatabase();

  @override
  void add(TagEntry e) => entries[e.code] = e;

  @override
  TagEntry lookup(int code) => entries[code];
}

class KeywordTagDatabase extends TagDatabase<String> {
  @override
  final DBDescriptor descriptor = const DBDescriptor(
      "TagsByKeyword", "Tags by Keyword", "String", "TagEntry", tagEntryType);

  @override
  final Map<String, TagEntry> entries = <String, TagEntry>{};

  KeywordTagDatabase();

  @override
  void add(TagEntry e) => entries[e.keyword] = e;

  @override
  TagEntry lookup(String keyword) => entries[keyword];
}

final IntTagDatabase tagsByCode = new IntTagDatabase();

final KeywordTagDatabase tagsByKeyword = new KeywordTagDatabase();

TagEntry createTag(
    int code,
    String keyword,
    String name,
    VRx vr,
    VMx vm,
    ETypeX eType,
    IEx ie,
    bool isPrivate,
    bool isRetired,
    DeIdMethod deIdMethod) {
  var entry = new TagEntry(
      code, keyword, name, vr, vm, eType, ie, isPrivate, isRetired, deIdMethod);
  tagsByCode[code] = entry;
  tagsByKeyword[keyword] = entry;
  return entry;
}
