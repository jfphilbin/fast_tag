// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:system/system.dart';

import 'package:fast_tag/src/gen/constant_strings.dart';

/// Returns a [String] of form 'xxxxxxxx', where 'x' is a hexadecimal character.
String codeToHex(int code, {bool withPrefix = false}) {
  final s = code.toRadixString(16).padLeft(8, '0');
  return withPrefix ? '0x$s' : s;
}

/// Returns a [String] of form '"xxxxxxxx"', where 'x' is a hexadecimal character.
String quotedString(String s) => '"$s"';

String quotedCode(int code) => quotedString(codeToHex(code));

String createFileHeading(String imports) => '$copyright\n$imports';

List<String> intListAsStrings(List<int> values) {
  final sList = <String>[];
  for (var i in values) sList.add('$i');
  return sList;
}

String _toString(String s) => s.toString();

typedef String StringConverter<V>(V s);

String stringify<V>(List<V> list, {StringConverter converter, bool newlines = false}) {
  final convert = (converter == null) ? _toString : converter;
  final separator = (newlines) ? ',\n' : ', ';

  log.debug(list);
  final sList = new List<String>(list.length);
  for (var i = 0; i < list.length; i++) sList[i] = convert(list[i]);
  log.debug(sList);
  return sList.join(separator);
}

String genDefinition(String name, String value, {bool isConstant = true}) {
  const suffix = ';\n';
  final prefix =
      (isConstant) ? 'const List<int> $name = const \n' : 'List<int> $name = \n';
  log.debug(value);
  return '$prefix$value$suffix';
}

String genListDefinition<V>(String name, String type, List<V> list,
    {bool isConstant = true, bool newlines = false}) {
  final prefix = (isConstant)
      ? 'const List<$type> $name = const <$type>[\n'
      : 'List<$type> $name =  <$type>\n';
  log.debug(list);
  final s = stringify(list, newlines: newlines);
  final suffix = '];\n';
  return '$prefix$s$suffix';
}

int compareStrings(String a, String b) => a.compareTo(b);

List<String> stringSort(List<String> sList) {
  final sorted = new List<String>.from(sList)..sort(compareStrings);
  return sorted;
}

int compareIntegers(int x, int y) => x.compareTo(y);

List<int> integerSort(List<int> sList) {
  final sorted = new List<int>.from(sList)..sort(compareIntegers);
  return sorted;
}

List<V> listSort<V>(List<V> list, {Comparator<V> compare}) {
  final copy = new List<V>.from(list)..sort(compare);
  return copy;
}
