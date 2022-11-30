import 'package:freezed_annotation/freezed_annotation.dart';

import '../../study/model/main_dicom_tags.dart';

part 'series.freezed.dart';
part 'series.g.dart';

@freezed
class Series with _$Series {
  const Series._();
  const factory Series({
    @JsonKey(name: "MainDicomTags") required SeriesMainDicomTags mainDicomTags,
    @JsonKey(name: "ExpectedNumberOfInstances") int? expectedNumberOfInstances,
    @JsonKey(name: "ID") String? id,
    @JsonKey(name: "Instances") List<String>? instances,
    @JsonKey(name: "IsStable") bool? isStable,
    @JsonKey(name: "LastUpdate") DateTime? lastUpdate,
    @JsonKey(name: "ParentStudy") String? parentStudy,
    @JsonKey(name: "Status") String? status,
    @JsonKey(name: "Type") String? instanceType,
  }) = _Series;

  factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);
}
