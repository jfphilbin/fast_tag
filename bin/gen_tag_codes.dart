// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:system/server.dart';
import 'package:fast_tag/src/gen/create_codes.dart';

void main() {
  Server.initialize(name: 'gen_tag_codes.dart', level: Level.info0);

  // Generate Codes
  var heading = createHeading();
  var code =
      'int tagCodeToIndex(int code) => binarySearch(sortedCodes, code);\n\n';

  List<int> codeList = publicCodeListByIndex();
  List<String> hexStrings = codeListToHexList(codeList);
  var byIndex = genTagCodesByIndex(hexStrings);
  var sorted = genSortedTagCodes(hexStrings);
  log.debug(sorted);
  var out = heading + code + byIndex + sorted;
  var f = new File('C:/poplar_hill/fast_tag/bin/output/codes.dart');
  f.writeAsStringSync(out);

  // Generate Code Strings
  code = 'int tagCodeStringToIndex(int code) => '
      'binarySearch(sortedCodeStrings, code);\n\n';

  List<String> strings = codeListToQuotedCodeList(codeList);
  byIndex = genTagCodeStringsByIndex(strings);
  sorted = genSortedTagCodeStrings(codeListToQuotedCodeList(codeList));
  log.debug(sorted);

  out = heading + code + byIndex + sorted;

  f = new File('C:/poplar_hill/fast_tag/bin/output/code_strings.dart');
  f.writeAsStringSync(out);

  //out = fmtDart(out);
  // writeCodeFile('C:/poplar_hill/fast_tag/bin/output/code_strings.dart', out);
}
