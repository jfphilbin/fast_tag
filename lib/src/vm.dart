// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// See the AUTHORS file for contributors.

// Urgent: separate internal and public
// Urgent: how to lookup vm from fast_tag
// Urgent: sort order min then max then width
// Urgent: add lookup(int min, int max, int width;
// Urgent: add isPublic, isPrivate, isBoth

/// A class that defined Value Multiplicities and their validators.
///
/// The Value Multiplicity (VM) of an Attribute defines the minimum,
/// maximum and width of an array of values in an Attribute's Value Field.
class VMx {
  /// The name of this [VMx].
  final String keyword;

  /// THe minimum number of values that must be present, if any values
  /// are present. [min] [%] [rank] must equal 0.
  final int min;

  /// The maximum number of values that are allowed. [max] [%] [rank]
  /// must equal 0. If [max] is -1 than as many values as will fit in the
  /// Value Field are allowed.
  final int max;

  /// The [rank] of the array of values. Both [min] and [max] must be
  /// evenly divisible by [rank]. That is [min] % [rank] == [max] %
  /// [rank] == 0 must be [true].
  final int rank;

  /// Returns [true] if this is a VM used only with internal Tags.
  final bool isPrivate;

  // Constructor
  const VMx(this.keyword, this.min, this.max, this.rank,
      [this.isPrivate = false]);

  String get id {
    var s = keyword.replaceAll("-", "_");
    return 'k$s';
  }

  bool get isFixed => min == max;

  bool get isSingleton => min == 1 && max == 1 && rank == 1;

  bool isValid<T>(List<T> v) => v.length >= min && v.length <= max;

  bool isNotValid<T>(List<T> v) => !isValid(v);

  @override
  String toString() => 'VM.$keyword';

  // Members
  static const VMx kUnknown = const VMx("kUnknown", -1, -1, -1);
  static const VMx kNoVM = const VMx("kNoVM", 0, 0, 0);
  static const VMx k0_n = const VMx("k0-n", 0, -1, 1, true);

  static const VMx k1 = const VMx("k1", 1, 1, 1);
  static const VMx k1_2 = const VMx("k1-2", 1, 2, 1);
  static const VMx k1_3 = const VMx("k1-3", 1, 3, 1);
  static const VMx k1_8 = const VMx("k1-8", 1, 8, 1);
  static const VMx k1_16 = const VMx("k1-16", 1, 16, 1, true);
  static const VMx k1_32 = const VMx("k1-32", 1, 32, 1);
  static const VMx k1_99 = const VMx("k1-99", 1, 99, 1);
  static const VMx k1_143 = const VMx("k1-143", 1, 143, 1, true);
  static const VMx k1_256 = const VMx("k1-256", 1, 256, 1, true);
  static const VMx k1_n = const VMx("k1-n", 1, -1, 1);

  static const VMx k2 = const VMx("k2", 2, 2, 1);
  static const VMx k2_3 = const VMx("k2-3", 2, 3, 1, true);
  static const VMx k2_n = const VMx("k2-n", 2, -1, 1);
  static const VMx k2_2n = const VMx("k2-2n", 2, -1, 2);

  static const VMx k3 = const VMx("k3", 3, 3, 1);
  static const VMx k3_n = const VMx("k3-n", 3, -1, 1);
  static const VMx k3_3n = const VMx("k3-3n", 3, -1, 3);

  static const VMx k4 = const VMx("k4", 4, 4, 1);
  static const VMx k4_n = const VMx("k4-n", 4, -1, 1, true);
  static const VMx k4_4n = const VMx("k4-4n", 4, -1, 4, true);

  static const VMx k5 = const VMx("k5", 5, 5, 1, true);

  static const VMx k6 = const VMx("k6", 6, 6, 1);
  static const VMx k6_n = const VMx("k6-n", 6, -1, 1);
  static const VMx k6_6n = const VMx("k6-6n", 6, -1, 6, true);

  static const VMx k7 = const VMx("k7", 7, 7, 1, true);
  static const VMx k7_n = const VMx("k7-n", 7, -1, 1, true);

  static const VMx k8 = const VMx("k8", 8, 8, 1, true);
  static const VMx k9 = const VMx("k9", 9, 9, 1);

  static const VMx k12 = const VMx("k12", 12, 12, 1, true);
  static const VMx k12_n = const VMx("k12-n", 12, -1, 1, true);

  static const VMx k16 = const VMx("k16", 16, 16, 1);
  static const VMx k18 = const VMx("k18", 18, 18, 1, true);
  static const VMx k24 = const VMx("k24", 24, 24, 1, true);
  static const VMx k28 = const VMx("k28", 28, 28, 1, true);
  static const VMx k30_30n = const VMx("k30-30n", 30, -1, 30, true);
  static const VMx k32 = const VMx("k32", 32, 32, 1, true);
  static const VMx k35 = const VMx("k35", 35, 35, 1, true);
  static const VMx k47_47n = const VMx("k47-47n", 47, -1, 47, true);
  static const VMx k256 = const VMx("k256", 256, 256, 1, true);

  //If valid they need special lookup table
  static const VMx k40909 = const VMx("k40909", 40909, 40909, 1, true);
  static const VMx k40910 = const VMx("k40910", 40910, 40910, 1, true);
  static const VMx k40915 = const VMx("k40915", 40915, 40915, 1, true);
  static const VMx k40923 = const VMx("k40923", 40923, 40923, 1, true);

  static VMx lookup(int min, int max, int rank) {
    for (int i = 0; i < byIndex.length; i++) {
      VMx vm = byIndex[i];
      if (vm.min != min) continue;
      if (vm.max != max) continue;
      if (vm.rank != rank) continue;
      return vm;
    }
    return null;
  }

  // Lookup Map
  static const List<VMx> byIndex = const [
    VMx.k0_n,

    VMx.k1,
    VMx.k1_2,
    VMx.k1_3,
    VMx.k1_8,
    VMx.k1_32,
    VMx.k1_99,
    VMx.k1_143,
    VMx.k1_256,
    VMx.k1_n,

    VMx.k2,
    VMx.k2_3,
    VMx.k2_n,
    VMx.k2_2n,

    VMx.k3,
    VMx.k3_n,
    VMx.k3_3n,

    VMx.k4,
    VMx.k4_n,
    VMx.k4_4n,

    VMx.k5,

    VMx.k6,
    VMx.k6_n,
    VMx.k6_6n,

    VMx.k7,
    VMx.k7_n,

    VMx.k8,
    VMx.k9,

    VMx.k12,
    VMx.k12_n,

    VMx.k16,
    VMx.k18,
    VMx.k24,
    VMx.k28,
    VMx.k30_30n,
    VMx.k32,
    VMx.k35,
    VMx.k47_47n,
    VMx.k256,

    //???
    VMx.k40909,
    VMx.k40910,
    VMx.k40915,
    VMx.k40923,
  ];

  //TODO: add all internal definitions to this map
  // Lookup Map
  static const Map<String, VMx> publicKeywordMap = const {
    "kNoVM": VMx.kNoVM,
    "k1": VMx.k1,
    "k1_2": VMx.k1_2,
    "k1_3": VMx.k1_3,
    "k1_8": VMx.k1_8,
    "k1_32": VMx.k1_32,
    "k1_99": VMx.k1_99,
    "k1_n": VMx.k1_n,

    "k2": VMx.k2,
    "k2_n": VMx.k2_n,
    "k2_2n": VMx.k2_2n,
    "k3": VMx.k3,
    "k3_n": VMx.k3_n,
    "k3_3n": VMx.k3_3n,
    "k4": VMx.k4,
    "k6": VMx.k6,
    "k6_n": VMx.k6_n,
    "k9": VMx.k9,
    "k16": VMx.k16,
  };

  static const Map<String, VMx> keywordMap = const {
    "kNoVM": VMx.kNoVM,
    "k0_n": VMx.k0_n,
    "k1": VMx.k1,
    "k1_2": VMx.k1_2,
    "k1_3": VMx.k1_3,
    "k1_8": VMx.k1_8,
    "k1_32": VMx.k1_32,
    "k1_99": VMx.k1_99,
    "k1_143": VMx.k1_143,
    "k1_256": VMx.k1_256,
    "k1_n": VMx.k1_n,

    "k2": VMx.k2,
    "k2_3": VMx.k2_3,
    "k2_n": VMx.k2_n,
    "k2_2n": VMx.k2_2n,

    "k3": VMx.k3,
    "k3_n": VMx.k3_n,
    "k3_3n": VMx.k3_3n,

    "k4": VMx.k4,
    "k4_n": VMx.k4_n,
    "k4_4n": VMx.k4_4n,

    "k5": VMx.k5,

    "k6": VMx.k6,
    "k6_n": VMx.k6_n,
    "k6_6n": VMx.k6_6n,

    "k7": VMx.k7,
    "k7_n": VMx.k7_n,

    "k8": VMx.k8,
    "k9": VMx.k9,

    "k12": VMx.k12,
    "k12_n": VMx.k12_n,

    "k16": VMx.k16,
    "k18": VMx.k18,
    "k24": VMx.k24,
    "k28": VMx.k28,
    "k30_30n": VMx.k30_30n,
    "k32": VMx.k32,
    "k35": VMx.k35,
    "k47_47": VMx.k47_47n,
    "k256": VMx.k256,
    "k40909": VMx.k40909,
    "k40910": VMx.k40910,
    "k40915": VMx.k40915,
    "k40923": VMx.k40923,
  };
/*
  //TODO: add all internal definitions to this map
  // Lookup Map
  static const Map<String, VMx> map = const {
    "1": VMx.k1,
    "1_2": VMx.k1_2,
    "1_32": VMx.k1_32,
    "1_99": VMx.k1_99,
    "16": VMx.k16,
    "1_n": VMx.k1_n,
    "2": VMx.k2,
    "2_2n": VMx.k2_2n,
    "2_n": VMx.k2_n,
    "3": VMx.k3,
    "3_3n": VMx.k3_3n,
    "3_n": VMx.k3_n,
    "4": VMx.k4,
    "6": VMx.k6,
    "6_n": VMx.k6_n,
    "9": VMx.k9
  };
*/

}
