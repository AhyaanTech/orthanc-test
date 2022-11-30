import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'instance_details_dto.freezed.dart';
part 'instance_details_dto.g.dart';

@freezed
class InstanceDetailsDto with _$InstanceDetailsDto {
  const InstanceDetailsDto._();
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory InstanceDetailsDto({
    required Option<String> contentName,
    required Option<String> fileSize,
    required Option<String> id,
  }) = _InstanceDtailsDto;

  factory InstanceDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$InstanceDetailsDtoFromJson(json);
}
