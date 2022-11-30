// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Study _$$_StudyFromJson(Map<String, dynamic> json) => _$_Study(
      id: json['ID'] as String,
      isStable: json['IsStable'] as bool,
      lastUpdate: json['LastUpdate'] as String,
      mainDicomTags: PatientMainDicomTags.fromJson(
          json['MainDicomTags'] as Map<String, dynamic>),
      parentPatient: json['ParentPatient'] as String,
      type: json['Type'] as String,
      series:
          (json['Series'] as List<dynamic>).map((e) => e as String).toList(),
      patientMainDicomTags: PatientMainDicomTags.fromJson(
          json['PatientMainDicomTags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StudyToJson(_$_Study instance) => <String, dynamic>{
      'ID': instance.id,
      'IsStable': instance.isStable,
      'LastUpdate': instance.lastUpdate,
      'MainDicomTags': instance.mainDicomTags,
      'ParentPatient': instance.parentPatient,
      'Type': instance.type,
      'Series': instance.series,
      'PatientMainDicomTags': instance.patientMainDicomTags,
    };
