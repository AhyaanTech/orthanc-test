import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'instance_detail_main_dicom_tags_dto.freezed.dart';
part 'instance_detail_main_dicom_tags_dto.g.dart';

@freezed
class InstanceMainDicomTagsDto with _$InstanceMainDicomTagsDto {
  const InstanceMainDicomTagsDto._();
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory InstanceMainDicomTagsDto({
    required Option<String> acquisitionNumber,
    required Option<String> bitsAllocated,
    required Option<String> bitsStored,
    required Option<String> columns,
    required Option<String> contentDate,
    required Option<String> contentTime,
    required Option<String> imageOrientationPatient,
    required Option<String> imagePositionPatient,
    required Option<String> imageType,
    required Option<String> instanceCreationDate,
    required Option<String> instanceCreationTime,
    required Option<String> instanceNumber,
    required Option<String> photometricInterpretation,
    required Option<String> pixelRepresentation,
    required Option<String> pixelSpacing,
    required Option<String> rescaleIntercept,
    required Option<String> rescaleSlope,
    required Option<String> rows,
    required Option<String> sOPClassUID,
    required Option<String> sOPInstanceUID,
    required Option<String> sliceThickness,
    required Option<String> specificCharacterSet,
    required Option<String> windowCenter,
    required Option<String> windowWidth,
  }) = _InstanceMainDicomTagsDto;

  factory InstanceMainDicomTagsDto.fromJson(Map<String, dynamic> json) =>
      _$InstanceMainDicomTagsDtoFromJson(json);

  InstanceDicomTags toDomain(InstanceMainDicomTagsDto _) {
    return InstanceDicomTags(
        windowCenter: int.parse(_.windowCenter.getOrElse(() => "20")),
        windowWidth: int.parse(_.windowWidth.getOrElse(() => "200")));
  }
}

@freezed
class InstanceDicomTags with _$InstanceDicomTags {
  const InstanceDicomTags._();
  const factory InstanceDicomTags({
    required int windowWidth,
    required int windowCenter,
  }) = _InstanceDicomTags;
}
