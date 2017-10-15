// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'dart:typed_data';

import 'package:system/system.dart';

import 'package:fast_tag/src/issues.dart';
import 'package:fast_tag/src/tag.dart';
import 'package:fast_tag/src/vr.dart';

/// A [NullValuesError] is thrown when an Values [List]
/// should not be [null].
class NullValuesError extends Error {
  TagX tag;

  NullValuesError([this.tag]);

  @override
  String toString() => _msg(tag);

  static String _msg([TagX tag]) =>
      'Attempt to create a $tag Element with a Null Values field.';
}

/// Called when an Element has a [null] Values field.
///
/// This should never happen
void nullValuesError<E>([TagX tag]) {
  final msg = NullValuesError._msg(tag);
  log.error(msg);
  if (throwOnError) throw new NullValuesError(tag);
}

Null invalidValueError(int value, String name) {
  final msg = 'Invalid Tag Field Value for field "$name": $value';
  log.error(msg);
  if (throwOnError) throw new InvalidFieldError(msg);
  return null;
}

Null invalidField(String name, int value) {
  final msg = 'Invalid Tag Field Error: $name Value: $value';
  log.error(msg);
  if (throwOnError) throw new InvalidFieldError(msg);
  return null;
}

class InvalidFieldError extends Error {
  String msg;

  InvalidFieldError(this.msg);

  @override
  String toString() => msg;
}

class InvalidIdentifierError<T> extends Error {
  T id;

  InvalidIdentifierError(this.id);

  @override
  String toString() => 'Invalid Tag Identifier: $id';
}

Null invalidIdentifier<T>(T id, Type type) {
  final v = (id is String) ? '"$id"' : id;
  final msg = 'Invalid $type identifier: $v)';
  log.error(msg);
  if (throwOnError) throw new InvalidIdentifierError(v);
  return null;
}

class InvalidValuesLengthError<V> extends Error {
  TagX tag;
  Iterable<V> vList;
  Issues issues;

  InvalidValuesLengthError(this.tag, this.vList, [this.issues]);

  @override
  String toString() => _msg(tag, vList, issues);

  static String _msg<V>(TagX tag, Iterable<V> values, [Issues issues]) =>
      '''Invalid values length for Tag: $tag
  values: ${system.truncate(values.toList(growable: false))}
  $issues''';
}

Null invalidValuesLength<V>(TagX tag, Iterable<V> vList, [Issues issues]) {
  final length = vList.length;
  if (length < tag.vmMin && length > tag.vmMax) {
    issues.add('Invalid number of values: '
        'min(${tag.vmMin}) <= length($length <= max(${tag.vmMax}))');
  }
  if (length % tag.vmRank != 0) {
    issues.add('Invalid number of values: '
        'length($length modulo width($tag.vmRank) must equal 0, '
        'but is ${length % tag.vmRank}');
  }
  log.error(InvalidValuesLengthError._msg<V>(tag, vList, issues));
  if (throwOnError) throw new InvalidValuesLengthError<V>(tag, vList, issues);
  return null;
}

class InvalidValuesError<V> extends Error {
  TagX tag;
  Iterable<V> values;
  Issues issues;

  InvalidValuesError(this.tag, this.values, [this.issues]);

  @override
  String toString() => '${_msg<V>(tag, values, issues)}';

  static String _msg<V>(TagX tag, List<V> values, [Issues issues]) =>
      '''Invalid values for Tag: $tag
  values: ${system.truncate(values)}
  $issues''';
}

Null invalidValues<V>(TagX tag, List<V> values) {
  if (log != null) log.error(InvalidValuesError._msg(tag, values));
  if (throwOnError) throw new InvalidValuesError(tag, values);
  return null;
}

class InvalidTagError extends Error {
  Object tag;

  InvalidTagError(this.tag);

  @override
  String toString() => _msg(tag);

  static String _msg(Object tag) => 'InvalidTagError: $tag';
}

Null invalidTag(Object obj) {
  log.error(InvalidTagKeyError._msg(obj));
  if (throwOnError) throw new InvalidTagError(obj);
  return null;
}

//TODO: convert this to handle both int and String and remove next two Errors
class InvalidTagKeyError<K> extends Error {
  K key;
  VRx vr;
  String creator;

  InvalidTagKeyError(this.key, [this.vr, this.creator]);

  @override
  String toString() => _msg(key, vr, creator);

  static String _msg<K>(K key, [VRx vr, String creator]) =>
      'InvalidTagKeyError: "$_value" $vr creator:"$creator"';

  static String _value(Object key) {
    if (key == null) return 'null';
    if (key is String) return key;
    if (key is int) return TagX.fromCode(key).asDcm;
    return key;
  }
}

Null invalidTagKey<K>(K key, [VRx vr, String creator]) {
  log.error(InvalidTagKeyError._msg(key, vr, creator));
  if (throwOnError) throw new InvalidTagKeyError(key);
  return null;
}

//Flush when replaced with InvalidTagKeyError
class InvalidTagCodeError extends Error {
  int code;
  String msg;

  InvalidTagCodeError(this.code, [this.msg]);

  @override
  String toString() => _msg(code, msg);

  static String _msg(int code, String msg) =>
      'InvalidTagCodeError: "${_value(code)}": $msg';

  static String _value(int code) => (code == null) ? 'null' : TagX.fromCode(code).asDcm;
}

Null invalidTagCode(int code, [String msg]) {
  log.error(InvalidTagCodeError._msg(code, msg));
  if (throwOnError) throw new InvalidTagCodeError(code, msg);
  return null;
}

//Flush when replaced with InvalidTagKeyError
class InvalidTagKeywordError extends Error {
  String keyword;

  InvalidTagKeywordError(this.keyword);

  @override
  String toString() => _msg(keyword);

  static String _msg(String keyword) => 'InvalidTagKeywordError: "$keyword"';
}

Null invalidTagKeyword(String keyword) {
  log.error(InvalidTagKeywordError._msg(keyword));
  if (throwOnError) throw new InvalidTagKeywordError(keyword);
  return null;
}

//TODO: convert this to handle both int and String and remove next two Errors
class InvalidVRError extends Error {
  VRx vr;
  String message;

  InvalidVRError(this.vr, [this.message = '']);

  @override
  String toString() => _msg(vr);

  static String _msg(VRx vr, [String message = '']) =>
      'Error: Invalid VR (Value Representation) "$vr" - $message';
}

Null invalidVR(VRx vr, [String message = '']) {
  log.error(InvalidVRError._msg(vr, message));
  if (throwOnError) throw new InvalidVRError(vr);
  return null;
}

class InvalidValueFieldLength extends Error {
  final Uint8List vfBytes;
  final int elementSize;

  InvalidValueFieldLength(this.vfBytes, this.elementSize) {
    if (log != null) log.error(toString());
  }

  @override
  String toString() => _msg(vfBytes, elementSize);

  static String _msg(Uint8List vfBytes, int elementSize) =>
      'InvalidValueFieldLengthError: lengthInBytes(${vfBytes.length}'
      'elementSize($elementSize)';
}

Null invalidValueFieldLengthError(Uint8List vfBytes, int elementSize) {
  log.error(InvalidValueFieldLength._msg(vfBytes, elementSize));
  if (throwOnError) throw new InvalidValueFieldLength(vfBytes, elementSize);
  return null;
}

class InvalidValuesTypeError extends Error {
  final TagX tag;
  final List values;

  InvalidValuesTypeError(this.tag, this.values) {
    if (log != null) log.error(toString());
  }

  @override
  String toString() => _msg(tag, values);

  static String _msg(TagX tag, List values) =>
      'InvalidValuesTypeError:\n  Tag(${tag.info})\n  values: $values';
}

Null invalidValuesType(TagX tag, Iterable values) {
  log.error(InvalidValuesTypeError._msg(tag, values));
  if (throwOnError) throw new InvalidValuesTypeError(tag, values);
  return null;
}

/// An invalid DICOM Group number [Error].
/// Note: Don't use this directly, use [invalidGroup] instead.
class InvalidGroupError extends Error {
  int group;

  InvalidGroupError(this.group);

  @override
  String toString() => _msg(group);

  static String _msg(int group) => 'Invalid DICOM Group Error: ${hex16(group)}';
}

Null invalidGroup(int group) {
  if (log != null) log.error(InvalidGroupError._msg(group));
  if (throwOnError) throw new InvalidGroupError(group);
  return null;
}
