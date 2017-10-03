// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

// Element Type

const int kEType1 = 0;
const int kEType1c = 1;
const int kEType2 = 2;
const int kEType2c = 3;
const int kEType3 = 4;

const int kMinEtype = kEType1;
const int kMaxEtype = kEType3;

/// Element Type
/// Information Entity
class ETypeX {
  final int index;
  final String name;
  final String meaning;

  const ETypeX(this.index, this.name, this.meaning);

  bool get isRequiredNonEmpty => index == 0;
  bool get isConditionallyRequiredNonEmpty => index == 1;
  bool get isRequired => index == 3;
  bool get isConditionallyRequired => index == 4;
  bool get isOptional => index == 5;

  String get info => '$this: $meaning';

  @override
  String toString() => '$runtimeType.$name';

  static const ETypeX k1 = const ETypeX(0, "1", "RequiredNonEmpty");
  static const ETypeX k1c = const ETypeX(1, "1C", "ConditionallyRequiredNonEmpty");
  static const ETypeX k2 = const ETypeX(2, "2", "Required");
  static const ETypeX k2c = const ETypeX(3, "2C", "ConditionallyRequired");
  static const ETypeX k3 = const ETypeX(4, "3", "Optional");

  static const List<ETypeX> byIndex = const [k1, k1c, k2, k2c, k3];

  static ETypeX fromIndex(int i) => (i >= k1.index && i <= k3.index)
      ? byIndex[i]
      : throw new RangeError('Invalid IE Index: $i');
}
