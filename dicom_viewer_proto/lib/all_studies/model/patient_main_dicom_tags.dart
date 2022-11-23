// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_main_dicom_tags.freezed.dart';
part 'patient_main_dicom_tags.g.dart';

@freezed
class PatientMainDicomTags with _$PatientMainDicomTags {
  const PatientMainDicomTags._();
  const factory PatientMainDicomTags({
    @JsonKey(name: "PatientBirthDate") String? patientBirthDate,
    @JsonKey(name: "PatientID") String? patientID,
    @JsonKey(name: "PatientName") String? patientName,
    @JsonKey(name: "PatientSex") String? patientSex,
  }) = _PatientMainDicomTags;

  factory PatientMainDicomTags.fromJson(Map<String, dynamic> json) =>
      _$PatientMainDicomTagsFromJson(json);
}
