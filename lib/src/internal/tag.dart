// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:fast_tag/src/internal/tag_base.dart';

/// A class containing the public Tag definitions.
class Tag extends TagBase {
  @override
  final int tag;

  const Tag(this.tag);

  static const Tag kUnknownPrivate = const Tag(0x0000000000000000);
}

/// A class containing the Private Creator Tag definitions.
class PrivateCreatorTag extends TagBase {
  @override
  final int tag;
  final String token;

  const PrivateCreatorTag(this.tag, this.token);

  static const Tag kUnknownPrivate = const Tag(0x0000000000000000);
}

/// A class containing the Private Data Tag definitions.
class PrivateDataTag extends TagBase {
  @override
  final int tag;

  const PrivateDataTag(this.tag);

  static const Tag kUnknownPrivate = const Tag(0x0000000000000000);
}