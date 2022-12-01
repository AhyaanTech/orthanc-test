// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_main_dicom_tags.freezed.dart';
part 'patient_main_dicom_tags.g.dart';

@freezed
class PatientMainDicomTags with _$PatientMainDicomTags {
  const PatientMainDicomTags._();
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory PatientMainDicomTags({
    @Default("Not Found") String? patientBirthDate,
    @Default("Patient Id not found") String? patientID,
    @Default("John Smith") String? patientName,
    @Default("Not Mentioned") String? patientSex,
  }) = _PatientMainDicomTags;

  factory PatientMainDicomTags.fromJson(Map<String, dynamic> json) =>
      _$PatientMainDicomTagsFromJson(json);
}
