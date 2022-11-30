// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstanceDtailsDto _$$_InstanceDtailsDtoFromJson(Map<String, dynamic> json) =>
    _$_InstanceDtailsDto(
      fileSize: json['FileSize'] as int,
      fileUuid: json['FileUuid'] as String,
      id: json['ID'] as String,
      parentSeries: json['ParentSeries'] as String,
      dicomOrthancType: json['Type'] as String,
      instanceMainDicomTags: InstanceMainDicomTagsDto.fromJson(
          json['MainDicomTags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InstanceDtailsDtoToJson(
        _$_InstanceDtailsDto instance) =>
    <String, dynamic>{
      'FileSize': instance.fileSize,
      'FileUuid': instance.fileUuid,
      'ID': instance.id,
      'ParentSeries': instance.parentSeries,
      'Type': instance.dicomOrthancType,
      'MainDicomTags': instance.instanceMainDicomTags,
    };
