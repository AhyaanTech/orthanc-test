// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstanceDtailsDto _$$_InstanceDtailsDtoFromJson(Map<String, dynamic> json) =>
    _$_InstanceDtailsDto(
      contentName: Option<String>.fromJson(json['ContentName']),
      fileSize: Option<String>.fromJson(json['FileSize']),
      id: Option<String>.fromJson(json['Id']),
    );

Map<String, dynamic> _$$_InstanceDtailsDtoToJson(
        _$_InstanceDtailsDto instance) =>
    <String, dynamic>{
      'ContentName': instance.contentName.toJson(
        (value) => value,
      ),
      'FileSize': instance.fileSize.toJson(
        (value) => value,
      ),
      'Id': instance.id.toJson(
        (value) => value,
      ),
    };
