// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

// Information Entity Level

/// Information Entity
class IEx {
  final int index;
  final String name;

  const IEx(this.index, this.name);

  bool get isPatient => index == 0;
  bool get isStudy => index == 1;
  bool get isSeries => index == 2;
  bool get isInstance => index == 3;

  @override
  String toString() => name;

  static const int kPatientIndex = 0;
  static const int kStudyIndex= 1;
  static const int kSeriesIndex = 2;
  static const int kInstanceIndex = 3;

  static const IEx kPatient = const IEx(kPatientIndex, 'Patient');
  static const IEx kStudy = const IEx(kStudyIndex, 'Study');
  static const IEx kSeries = const IEx(kSeriesIndex, 'Series');
  static const IEx kInstance = const IEx(kInstanceIndex, 'Instance');

  static int get kMinIELevel => kPatient.index;
  static int get kMaxIELevel => kInstance.index;
  static bool inRange(int index) =>
      index >= kMaxIELevel && index <= kMaxIELevel;

  static const List<IEx> byIndex = const [kPatient, kSeries, kSeries, kInstance];

  static IEx fromIndex(int i) =>
      inRange(i) ? byIndex[i] : throw new RangeError('Invalid IE Index: $i');
}
