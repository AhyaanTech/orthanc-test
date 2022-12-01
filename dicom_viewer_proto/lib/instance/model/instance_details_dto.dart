import 'package:dicom_viewer_proto/instance/model/instance_detail_main_dicom_tags_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'instance_details_dto.freezed.dart';
part 'instance_details_dto.g.dart';

@freezed
class InstanceDetailsDto with _$InstanceDetailsDto {
  const InstanceDetailsDto._();
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory InstanceDetailsDto({
    required int fileSize,
    required String fileUuid,
    @JsonKey(name: "ID") required String id,
    required String parentSeries,
    @JsonKey(name: "Type") required String dicomOrthancType,
    @JsonKey(name: "MainDicomTags")
        required InstanceMainDicomTagsDto instanceMainDicomTags,
  }) = _InstanceDtailsDto;

  factory InstanceDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$InstanceDetailsDtoFromJson(json);
}
