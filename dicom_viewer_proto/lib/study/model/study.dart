import 'package:dicom_viewer_proto/study/model/patient_main_dicom_tags.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'series_main_dicom_tags.dart';

part 'study.freezed.dart';
part 'study.g.dart';

@freezed
class Study with _$Study {
  const Study._();
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory Study({
    @JsonKey(name: "ID") required String id,
    required bool isStable,
    required String lastUpdate,
    required PatientMainDicomTags mainDicomTags,
    required String parentPatient,
    required String type,
    required List<String> series,
    @JsonKey(name: "PatientMainDicomTags")
        required PatientMainDicomTags patientMainDicomTags,
  }) = _Study;

  factory Study.fromJson(Map<String, dynamic> json) => _$StudyFromJson(json);
}
