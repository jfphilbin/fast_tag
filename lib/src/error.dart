// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

part of odw.sdk.core.tag_base;

Null invalidValueError(int value, String name) {
  var msg = 'Invalid Tag Field Value for field "$name": $value';
  log.error(msg);
  if (throwOnError) throw new InvalidFieldError(msg);
  return null;
}

Null invalidFieldError(String name, int value) {
  var msg = 'Invalid Attribute Field Error: $name Value: $value';
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
  String toString() => 'Invalid Attribute Identifier: $id';
}

Null invalidIdentifierError<T>(T id, Type type) {
  var v = (id is String) ? '"$id"' : id;
  var msg = 'Invalid $type identifier: $v)';
  log.error(msg);
  if (throwOnError) throw new InvalidIdentifierError(v);
  return null;
}

class InvalidValuesLengthError<T> extends Error {
  TagBase a;
  List<T> values;
  ValuesIssues issues;

  InvalidValuesLengthError(this.a, this.values, [this.issues]);

  @override
  String toString() => '''Invalid values length for Attribute: $a
  values: ${system.truncate(values)}
  $issues''';
}

class InvalidValuesError<T> extends Error {
  TagBase a;
  List<T> values;
  ValuesIssues issues;

  InvalidValuesError(this.a, this.values, [this.issues]);

  @override
  String toString() => '''Invalid values for Attribute: $a
  values: ${system.truncate(values)}
  $issues''';
}


class ValuesIssues {
  final TagBase a;
  final List<String> issues = <String>[];

  ValuesIssues(this.a, [String msg]) {
    if (msg != null) issues.add(msg);
  }

  String get message {
    var s = issues.join('\n  ');
    return 'Invalid values for Attribute: $a\n  $s';
  }

  void add(String msg) => issues.add(msg);

  void addAll(List<String> msgs) => issues.addAll(msgs);

  @override
  String toString() => message;
}
