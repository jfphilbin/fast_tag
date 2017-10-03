// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See /[package]/AUTHORS file for other contributors.

class DeIdMethod<K, V> {
  final int index;
  final String letter;
  final String keyword;
  final String description;

  const DeIdMethod._(this.index, this.letter, this.keyword, this.description);

//  Element<K, V> action(Dataset ds, K key, [V value]);

  @override
  String toString() => '$runtimeType: $keyword';

  static const DeIdMethod kKeep = const DeIdMethod._(
      0,
      "K",
      "Keep",
      "Keep the Element (unchanged for non-sequence attributes, "
      "cleaned for sequences).");

  static const DeIdMethod kRemove =
      const DeIdMethod._(1, "X", "Remove", "Remove the Element.");

  static const DeIdMethod kEmpty = const DeIdMethod._(
      2,
      "Z",
      "Empty",
      "Empty, tghat is replace with a zero length value, or a non-zero "
      "length value that may be a dummy value and consistent with the VR.");

  static const DeIdMethod kReplace = const DeIdMethod._(
      3,
      "R",
      "Replace",
      "Replace with a non-zero length value that is consistent with the VR,"
      "and may be a dummy value. If the values are UIDs, then replace"
      "with new UIDs that are internally consistent within a set of "
      "Instances.");

  static const DeIdMethod kRemoveOrEmpty = const DeIdMethod._(
      4,
      "XZ",
      "RemoveOrEmpty",
      "Rempve(X) unless Empty(Z) is required to maintain IOD conformance "
      "(Type 3 versus Type 2)");

  static const DeIdMethod kXZ = kRemoveOrEmpty;

  static const DeIdMethod kRemoveOrReplace =
      const DeIdMethod._(5, "XD", "RemoveOrReplace", "");

  static const DeIdMethod kXD = kRemoveOrReplace;
  static const DeIdMethod kEmptyOrReplace = const DeIdMethod._(
      6,
      "ZD",
      "EmptyOrDummy",
      "Empty(Z) unless Replace(D) is required to maintain IOD conformance"
      " (Type 2 versus Type 1).");

  static const DeIdMethod kZD = kEmptyOrReplace;

  static const DeIdMethod kRemoveOrEmptyOrReplace = const DeIdMethod._(
      7,
      "XZD",
      "RemoveOrEmptyOrDummy",
      "Remove(X) unless Empty(Z) or Replace(D) is required to maintain IOD"
      " conformance (Type 3 versus Type 2 versus Type 1).");

  static const DeIdMethod kXZD = kRemoveOrEmptyOrReplace;

  static const List<DeIdMethod> byIndex = const <DeIdMethod>[
    kKeep, kRemove, kEmpty, kReplace,
    kRemoveOrEmpty, kRemoveOrReplace, kEmptyOrReplace,
    kRemoveOrEmptyOrReplace // No reformat
  ];

  static const Map<String, DeIdMethod> byKeyword = const <String, DeIdMethod>{
    "Keep": kKeep,
    "Remove": kRemove,
    "Empty": kEmpty,
    "Replace": kReplace,
    "RemoveOrEmpty": kRemoveOrEmpty,
    "RemoveOrReplace": kRemoveOrReplace,
    "EmptyOrReplace": kEmptyOrReplace,
    "RemoveOrEmptyOrReplace": kRemoveOrEmptyOrReplace // No reformat
  };

/*
  //TODO: decide if next two are needed.

  static const DeId kClean = const DeId._(
      8,
      "C",
      "Clean",
      "Clean, that is replace with values of similar meaning known not to "
          "contain identifying information and consistent with the VR.");
*/

}
