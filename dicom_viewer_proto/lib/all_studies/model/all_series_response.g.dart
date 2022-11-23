// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllSeriesResponse _$$_AllSeriesResponseFromJson(Map<String, dynamic> json) =>
    _$_AllSeriesResponse(
      id: json['ID'] as String,
      isStable: json['IsStable'] as bool,
      lastUpdate: json['LastUpdate'] as String,
      mainDicomTags:
          MainDicomTags.fromJson(json['MainDicomTags'] as Map<String, dynamic>),
      parentPatient: json['ParentPatient'] as String,
      type: json['Type'] as String,
      Series:
          (json['Series'] as List<dynamic>).map((e) => e as String).toList(),
      patientMainDicomTags: PatientMainDicomTags.fromJson(
          json['PatientMainDicomTags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AllSeriesResponseToJson(
        _$_AllSeriesResponse instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'IsStable': instance.isStable,
      'LastUpdate': instance.lastUpdate,
      'MainDicomTags': instance.mainDicomTags,
      'ParentPatient': instance.parentPatient,
      'Type': instance.type,
      'Series': instance.Series,
      'PatientMainDicomTags': instance.patientMainDicomTags,
    };
