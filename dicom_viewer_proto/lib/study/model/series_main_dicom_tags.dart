// ignore_for_file: non_constant_identifier_names

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'series_main_dicom_tags.freezed.dart';
part 'series_main_dicom_tags.g.dart';

@freezed
class SeriesMainDicomTags with _$SeriesMainDicomTags {
  const SeriesMainDicomTags._();
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory SeriesMainDicomTags({
    required Option<String> accessionNumber,
    required Option<String> referringPhysicianName,
    required Option<String> studyDate,
    required Option<String> studyID,
    required Option<String> studyInstanceUID,
    required Option<String> studyTime,
  }) = _SeriesMainDicomTags;

  factory SeriesMainDicomTags.fromJson(Map<String, dynamic> json) =>
      _$SeriesMainDicomTagsFromJson(json);
}
