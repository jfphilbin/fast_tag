// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:system/system.dart';

import 'package:fast_tag/src/gen/constant_strings.dart';

/// Returns a [String] of form 'xxxxxxxx', where 'x' is a hexadecimal character.
String codeToHex(int code, {bool withPrefix = false}) {
  var s = code.toRadixString(16).padLeft(8, "0");
  return withPrefix ? '0x$s' : s;
}
/// Returns a [String] of form '"xxxxxxxx"', where 'x' is a hexadecimal character.
String quotedString(String s) => '"$s"';

String quotedCode(int code) => quotedString(codeToHex(code));

String createFileHeading(String imports) => '$copyright\n$imports';

List<String> intListAsStrings(List<int> values) {
  List<String> sList = <String>[];
  for (int i in values) sList.add('$i');
  return sList;
}

String _toString(String s) => s.toString();

typedef String StringConverter<V>(V s);

String stringify<V>(List<V> list,
    {StringConverter converter, bool newlines = false}) {
  var convert = (converter == null) ? _toString : converter;
  var separator = (newlines) ? ',\n' : ', ';

  log.debug(list);
  var sList = new List<String>(list.length);
  for (int i = 0; i < list.length; i++)
     sList[i] = convert(list[i]);
  log.debug(sList);
  return sList.join(separator);
}

String genDefinition(String name, String value, {bool isConstant = true}) {
  const suffix = ';\n';
  var prefix = (isConstant)
      ? 'const List<int> $name = const \n'
      : 'List<int> $name = \n';
  log.debug(value);
  return prefix + value + suffix;
}
String genListDefinition<V>(String name, String type, List<V> list,
    {bool isConstant = true, bool newlines = false}) {
    var prefix = (isConstant)
      ? 'const List<$type> $name = const <$type>[\n'
      : 'List<$type> $name =  <$type>\n';
    log.debug(list);
    var s = stringify(list, newlines: newlines);
  var suffix = '];\n';
  return prefix + s + suffix;
}

int compareStrings(String a, String b) => a.compareTo(b);

List<String> stringSort(List<String> sList) {
  var sorted = new List.from(sList);
  sorted.sort(compareStrings);
  return sorted;
}

int compareIntegers(int x, int y) => x.compareTo(y);

List<int> integerSort(List<int> sList) {
  var sorted = new List.from(sList);
  sorted.sort(compareIntegers);
  return sorted;
}

List<V> listSort<V>(List<V> list, {Comparator<V> compare}) {
  List<V> copy = new List.from(list);
  copy.sort(compare);
  return copy;
}
