// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'dart:io';

void writeCodeFile(String path, String content) {
  final p = (path.contains('.dart')) ? path : '$path.dart';
  new File(p)..writeAsStringSync(content);
}
