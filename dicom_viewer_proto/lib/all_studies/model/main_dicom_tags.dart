// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_dicom_tags.freezed.dart';
part 'main_dicom_tags.g.dart';

@freezed
class MainDicomTags with _$MainDicomTags {
  const MainDicomTags._();
  const factory MainDicomTags({
    @JsonKey(name: "AccessionNumber") String? AccessionNumber,
    @JsonKey(name: "ReferringPhysicianName") String? referringPhysicianName,
    @JsonKey(name: "StudyDate") String? studyDate,
    @JsonKey(name: "StudyId") String? studyID,
    @JsonKey(name: "StudyInstanceId") String? studyInstanceUID,
    @JsonKey(name: "StudyTime") String? studyTime,
  }) = _MainDicomTags;

  factory MainDicomTags.fromJson(Map<String, dynamic> json) =>
      _$MainDicomTagsFromJson(json);
}
