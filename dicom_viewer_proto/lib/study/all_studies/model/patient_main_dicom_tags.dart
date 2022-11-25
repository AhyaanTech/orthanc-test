// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_main_dicom_tags.freezed.dart';
part 'patient_main_dicom_tags.g.dart';

@freezed
class PatientMainDicomTags with _$PatientMainDicomTags {
  const PatientMainDicomTags._();
  const factory PatientMainDicomTags({
    @JsonKey(name: "PatientBirthDate")
    @Default("Not Found")
        String? patientBirthDate,
    @JsonKey(name: "PatientID")
    @Default("Patient Id not found")
        String? patientID,
    @JsonKey(name: "PatientName") @Default("John Smith") String? patientName,
    @JsonKey(name: "PatientSex") @Default("Not Mentioned") String? patientSex,
  }) = _PatientMainDicomTags;

  factory PatientMainDicomTags.fromJson(Map<String, dynamic> json) =>
      _$PatientMainDicomTagsFromJson(json);
}
