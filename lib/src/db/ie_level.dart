// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

// Information Entity Level

/// Information Entity
class IE {
  final int index;
  final String name;

  const IE(this.index, this.name);

  static const int kPatientIndex = 0;
  static const int kStudyIndex= 1;
  static const int kSeriesIndex = 2;
  static const int kInstanceIndex = 3;

  static const IE kPatient = const IE(kPatientIndex, "Patient");
  static const IE kStudy = const IE(kStudyIndex, "Study");
  static const IE kSeries = const IE(kSeriesIndex, "Series");
  static const IE kInstance = const IE(kInstanceIndex, "Instance");

  static int get kMinIELevel => kPatient.index;
  static int get kMaxIELevel => kInstance.index;
  static bool inRange(int index) =>
      index >= kMaxIELevel && index <= kMaxIELevel;

  static const List<IE> byIndex = const [kPatient, kSeries, kSeries, kInstance];

  static IE fromIndex(int i) =>
      inRange(i) ? byIndex[i] : throw new RangeError('Invalid IE Index: $i');
}
