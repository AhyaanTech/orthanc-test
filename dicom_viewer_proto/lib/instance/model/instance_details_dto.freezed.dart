// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'instance_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstanceDetailsDto _$InstanceDetailsDtoFromJson(Map<String, dynamic> json) {
  return _InstanceDtailsDto.fromJson(json);
}

/// @nodoc
mixin _$InstanceDetailsDto {
  Option<String> get contentName => throw _privateConstructorUsedError;
  Option<String> get fileSize => throw _privateConstructorUsedError;
  Option<String> get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstanceDetailsDtoCopyWith<InstanceDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstanceDetailsDtoCopyWith<$Res> {
  factory $InstanceDetailsDtoCopyWith(
          InstanceDetailsDto value, $Res Function(InstanceDetailsDto) then) =
      _$InstanceDetailsDtoCopyWithImpl<$Res, InstanceDetailsDto>;
  @useResult
  $Res call(
      {Option<String> contentName, Option<String> fileSize, Option<String> id});
}

/// @nodoc
class _$InstanceDetailsDtoCopyWithImpl<$Res, $Val extends InstanceDetailsDto>
    implements $InstanceDetailsDtoCopyWith<$Res> {
  _$InstanceDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentName = null,
    Object? fileSize = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      contentName: null == contentName
          ? _value.contentName
          : contentName // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InstanceDtailsDtoCopyWith<$Res>
    implements $InstanceDetailsDtoCopyWith<$Res> {
  factory _$$_InstanceDtailsDtoCopyWith(_$_InstanceDtailsDto value,
          $Res Function(_$_InstanceDtailsDto) then) =
      __$$_InstanceDtailsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<String> contentName, Option<String> fileSize, Option<String> id});
}

/// @nodoc
class __$$_InstanceDtailsDtoCopyWithImpl<$Res>
    extends _$InstanceDetailsDtoCopyWithImpl<$Res, _$_InstanceDtailsDto>
    implements _$$_InstanceDtailsDtoCopyWith<$Res> {
  __$$_InstanceDtailsDtoCopyWithImpl(
      _$_InstanceDtailsDto _value, $Res Function(_$_InstanceDtailsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentName = null,
    Object? fileSize = null,
    Object? id = null,
  }) {
    return _then(_$_InstanceDtailsDto(
      contentName: null == contentName
          ? _value.contentName
          : contentName // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_InstanceDtailsDto extends _InstanceDtailsDto {
  const _$_InstanceDtailsDto(
      {required this.contentName, required this.fileSize, required this.id})
      : super._();

  factory _$_InstanceDtailsDto.fromJson(Map<String, dynamic> json) =>
      _$$_InstanceDtailsDtoFromJson(json);

  @override
  final Option<String> contentName;
  @override
  final Option<String> fileSize;
  @override
  final Option<String> id;

  @override
  String toString() {
    return 'InstanceDetailsDto(contentName: $contentName, fileSize: $fileSize, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstanceDtailsDto &&
            (identical(other.contentName, contentName) ||
                other.contentName == contentName) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contentName, fileSize, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstanceDtailsDtoCopyWith<_$_InstanceDtailsDto> get copyWith =>
      __$$_InstanceDtailsDtoCopyWithImpl<_$_InstanceDtailsDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstanceDtailsDtoToJson(
      this,
    );
  }
}

abstract class _InstanceDtailsDto extends InstanceDetailsDto {
  const factory _InstanceDtailsDto(
      {required final Option<String> contentName,
      required final Option<String> fileSize,
      required final Option<String> id}) = _$_InstanceDtailsDto;
  const _InstanceDtailsDto._() : super._();

  factory _InstanceDtailsDto.fromJson(Map<String, dynamic> json) =
      _$_InstanceDtailsDto.fromJson;

  @override
  Option<String> get contentName;
  @override
  Option<String> get fileSize;
  @override
  Option<String> get id;
  @override
  @JsonKey(ignore: true)
  _$$_InstanceDtailsDtoCopyWith<_$_InstanceDtailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
