// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_dicom_tags.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainDicomTags _$$_MainDicomTagsFromJson(Map<String, dynamic> json) =>
    _$_MainDicomTags(
      AccessionNumber: json['AccessionNumber'] as String?,
      referringPhysicianName: json['ReferringPhysicianName'] as String?,
      studyDate: json['StudyDate'] as String?,
      studyID: json['StudyId'] as String?,
      studyInstanceUID: json['StudyInstanceId'] as String?,
      studyTime: json['StudyTime'] as String?,
    );

Map<String, dynamic> _$$_MainDicomTagsToJson(_$_MainDicomTags instance) =>
    <String, dynamic>{
      'AccessionNumber': instance.AccessionNumber,
      'ReferringPhysicianName': instance.referringPhysicianName,
      'StudyDate': instance.studyDate,
      'StudyId': instance.studyID,
      'StudyInstanceId': instance.studyInstanceUID,
      'StudyTime': instance.studyTime,
    };
