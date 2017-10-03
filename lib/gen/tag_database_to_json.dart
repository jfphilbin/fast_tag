// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

Map<String, Map<String, dynamic>> createTagDatabase() {
  const name = 'TagTable';
  Map<String, dynamic> db = <String, dynamic>{};
  db["@name"] = name;
  db["@title"] = "DICOM Data Element Tags";
  db["@class"] = "tag";
  db["@isPublic"] =  true;
  db["@members"] = {
    "@name": "@type",
    "code": "int",
    "keyword": "String",
    "name": "String",
    "vr": "VR",
    "vmMin": "int",
    "vmMax": "int",
    "vmRank": "int",
    "eType": "String",
    "ieLevel": "String",
    "isRetired": "bool"
  };
  db["@entries"] =   <String, dynamic>{};
  return db;
}

