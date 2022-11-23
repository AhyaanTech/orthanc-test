import 'package:dicom_viewer_proto/all_studies/model/patient_main_dicom_tags.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'main_dicom_tags.dart';

part 'all_series_response.freezed.dart';
part 'all_series_response.g.dart';

@freezed
class AllStudiesResponse with _$AllStudiesResponse {
  const AllStudiesResponse._();
  const factory AllStudiesResponse({
    @JsonKey(name: "ID") required String id,
    @JsonKey(name: "IsStable") required bool isStable,
    @JsonKey(name: "LastUpdate") required String lastUpdate,
    @JsonKey(name: "MainDicomTags") required MainDicomTags mainDicomTags,
    @JsonKey(name: "ParentPatient") required String parentPatient,
    @JsonKey(name: "Type") required String type,
    @JsonKey(name: "Series") required List<String> Series,
    @JsonKey(name: "PatientMainDicomTags")
        required PatientMainDicomTags patientMainDicomTags,
  }) = _AllSeriesResponse;

  factory AllStudiesResponse.fromJson(Map<String, dynamic> json) =>
      _$AllStudiesResponseFromJson(json);
}
