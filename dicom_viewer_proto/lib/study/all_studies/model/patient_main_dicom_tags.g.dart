// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_main_dicom_tags.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientMainDicomTags _$$_PatientMainDicomTagsFromJson(
        Map<String, dynamic> json) =>
    _$_PatientMainDicomTags(
      patientBirthDate: json['PatientBirthDate'] as String? ?? "Not Found",
      patientID: json['PatientID'] as String? ?? "Patient Id not found",
      patientName: json['PatientName'] as String? ?? "John Smith",
      patientSex: json['PatientSex'] as String? ?? "Not Mentioned",
    );

Map<String, dynamic> _$$_PatientMainDicomTagsToJson(
        _$_PatientMainDicomTags instance) =>
    <String, dynamic>{
      'PatientBirthDate': instance.patientBirthDate,
      'PatientID': instance.patientID,
      'PatientName': instance.patientName,
      'PatientSex': instance.patientSex,
    };
