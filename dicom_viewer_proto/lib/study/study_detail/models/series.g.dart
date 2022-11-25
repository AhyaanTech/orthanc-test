// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Series _$$_SeriesFromJson(Map<String, dynamic> json) => _$_Series(
      mainDicomTags:
          MainDicomTags.fromJson(json['MainDicomTags'] as Map<String, dynamic>),
      expectedNumberOfInstances: json['ExpectedNumberOfInstances'] as int?,
      id: json['ID'] as String?,
      instances: (json['Instances'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isStable: json['IsStable'] as bool?,
      lastUpdate: json['LastUpdate'] == null
          ? null
          : DateTime.parse(json['LastUpdate'] as String),
      parentStudy: json['ParentStudy'] as String?,
      status: json['Status'] as String?,
      instanceType: json['Type'] as String?,
    );

Map<String, dynamic> _$$_SeriesToJson(_$_Series instance) => <String, dynamic>{
      'MainDicomTags': instance.mainDicomTags,
      'ExpectedNumberOfInstances': instance.expectedNumberOfInstances,
      'ID': instance.id,
      'Instances': instance.instances,
      'IsStable': instance.isStable,
      'LastUpdate': instance.lastUpdate?.toIso8601String(),
      'ParentStudy': instance.parentStudy,
      'Status': instance.status,
      'Type': instance.instanceType,
    };
