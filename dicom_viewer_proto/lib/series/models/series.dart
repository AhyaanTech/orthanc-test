import 'package:freezed_annotation/freezed_annotation.dart';

import '../../study/model/series_main_dicom_tags.dart';

part 'series.freezed.dart';
part 'series.g.dart';

@freezed
class Series with _$Series {
  const Series._();
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory Series({
    @JsonKey(name: "MainDicomTags") required SeriesMainDicomTags mainDicomTags,
    int? expectedNumberOfInstances,
    @JsonKey(name: "ID") String? id,
    List<String>? instances,
    bool? isStable,
    DateTime? lastUpdate,
    String? parentStudy,
    String? status,
    @JsonKey(name: "Type") String? instanceType,
  }) = _Series;

  factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);
}
