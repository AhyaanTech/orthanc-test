// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_dicom_tags.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainDicomTags _$$_MainDicomTagsFromJson(Map<String, dynamic> json) =>
    _$_MainDicomTags(
      accessionNumber: Option<String>.fromJson(json['AccessionNumber']),
      referringPhysicianName:
          Option<String>.fromJson(json['ReferringPhysicianName']),
      studyDate: Option<String>.fromJson(json['StudyDate']),
      studyID: Option<String>.fromJson(json['StudyID']),
      studyInstanceUID: Option<String>.fromJson(json['StudyInstanceUID']),
      studyTime: Option<String>.fromJson(json['StudyTime']),
    );

Map<String, dynamic> _$$_MainDicomTagsToJson(_$_MainDicomTags instance) =>
    <String, dynamic>{
      'AccessionNumber': instance.accessionNumber.toJson(
        (value) => value,
      ),
      'ReferringPhysicianName': instance.referringPhysicianName.toJson(
        (value) => value,
      ),
      'StudyDate': instance.studyDate.toJson(
        (value) => value,
      ),
      'StudyID': instance.studyID.toJson(
        (value) => value,
      ),
      'StudyInstanceUID': instance.studyInstanceUID.toJson(
        (value) => value,
      ),
      'StudyTime': instance.studyTime.toJson(
        (value) => value,
      ),
    };
