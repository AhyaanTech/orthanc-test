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
  int get fileSize => throw _privateConstructorUsedError;
  String get fileUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "ID")
  String get id => throw _privateConstructorUsedError;
  String get parentSeries => throw _privateConstructorUsedError;
  @JsonKey(name: "Type")
  String get dicomOrthancType => throw _privateConstructorUsedError;
  @JsonKey(name: "MainDicomTags")
  InstanceMainDicomTagsDto get instanceMainDicomTags =>
      throw _privateConstructorUsedError;

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
      {int fileSize,
      String fileUuid,
      @JsonKey(name: "ID")
          String id,
      String parentSeries,
      @JsonKey(name: "Type")
          String dicomOrthancType,
      @JsonKey(name: "MainDicomTags")
          InstanceMainDicomTagsDto instanceMainDicomTags});

  $InstanceMainDicomTagsDtoCopyWith<$Res> get instanceMainDicomTags;
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
    Object? fileSize = null,
    Object? fileUuid = null,
    Object? id = null,
    Object? parentSeries = null,
    Object? dicomOrthancType = null,
    Object? instanceMainDicomTags = null,
  }) {
    return _then(_value.copyWith(
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      fileUuid: null == fileUuid
          ? _value.fileUuid
          : fileUuid // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentSeries: null == parentSeries
          ? _value.parentSeries
          : parentSeries // ignore: cast_nullable_to_non_nullable
              as String,
      dicomOrthancType: null == dicomOrthancType
          ? _value.dicomOrthancType
          : dicomOrthancType // ignore: cast_nullable_to_non_nullable
              as String,
      instanceMainDicomTags: null == instanceMainDicomTags
          ? _value.instanceMainDicomTags
          : instanceMainDicomTags // ignore: cast_nullable_to_non_nullable
              as InstanceMainDicomTagsDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InstanceMainDicomTagsDtoCopyWith<$Res> get instanceMainDicomTags {
    return $InstanceMainDicomTagsDtoCopyWith<$Res>(_value.instanceMainDicomTags,
        (value) {
      return _then(_value.copyWith(instanceMainDicomTags: value) as $Val);
    });
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
      {int fileSize,
      String fileUuid,
      @JsonKey(name: "ID")
          String id,
      String parentSeries,
      @JsonKey(name: "Type")
          String dicomOrthancType,
      @JsonKey(name: "MainDicomTags")
          InstanceMainDicomTagsDto instanceMainDicomTags});

  @override
  $InstanceMainDicomTagsDtoCopyWith<$Res> get instanceMainDicomTags;
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
    Object? fileSize = null,
    Object? fileUuid = null,
    Object? id = null,
    Object? parentSeries = null,
    Object? dicomOrthancType = null,
    Object? instanceMainDicomTags = null,
  }) {
    return _then(_$_InstanceDtailsDto(
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      fileUuid: null == fileUuid
          ? _value.fileUuid
          : fileUuid // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentSeries: null == parentSeries
          ? _value.parentSeries
          : parentSeries // ignore: cast_nullable_to_non_nullable
              as String,
      dicomOrthancType: null == dicomOrthancType
          ? _value.dicomOrthancType
          : dicomOrthancType // ignore: cast_nullable_to_non_nullable
              as String,
      instanceMainDicomTags: null == instanceMainDicomTags
          ? _value.instanceMainDicomTags
          : instanceMainDicomTags // ignore: cast_nullable_to_non_nullable
              as InstanceMainDicomTagsDto,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_InstanceDtailsDto extends _InstanceDtailsDto {
  const _$_InstanceDtailsDto(
      {required this.fileSize,
      required this.fileUuid,
      @JsonKey(name: "ID") required this.id,
      required this.parentSeries,
      @JsonKey(name: "Type") required this.dicomOrthancType,
      @JsonKey(name: "MainDicomTags") required this.instanceMainDicomTags})
      : super._();

  factory _$_InstanceDtailsDto.fromJson(Map<String, dynamic> json) =>
      _$$_InstanceDtailsDtoFromJson(json);

  @override
  final int fileSize;
  @override
  final String fileUuid;
  @override
  @JsonKey(name: "ID")
  final String id;
  @override
  final String parentSeries;
  @override
  @JsonKey(name: "Type")
  final String dicomOrthancType;
  @override
  @JsonKey(name: "MainDicomTags")
  final InstanceMainDicomTagsDto instanceMainDicomTags;

  @override
  String toString() {
    return 'InstanceDetailsDto(fileSize: $fileSize, fileUuid: $fileUuid, id: $id, parentSeries: $parentSeries, dicomOrthancType: $dicomOrthancType, instanceMainDicomTags: $instanceMainDicomTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstanceDtailsDto &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.fileUuid, fileUuid) ||
                other.fileUuid == fileUuid) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentSeries, parentSeries) ||
                other.parentSeries == parentSeries) &&
            (identical(other.dicomOrthancType, dicomOrthancType) ||
                other.dicomOrthancType == dicomOrthancType) &&
            (identical(other.instanceMainDicomTags, instanceMainDicomTags) ||
                other.instanceMainDicomTags == instanceMainDicomTags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileSize, fileUuid, id,
      parentSeries, dicomOrthancType, instanceMainDicomTags);

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
          {required final int fileSize,
          required final String fileUuid,
          @JsonKey(name: "ID")
              required final String id,
          required final String parentSeries,
          @JsonKey(name: "Type")
              required final String dicomOrthancType,
          @JsonKey(name: "MainDicomTags")
              required final InstanceMainDicomTagsDto instanceMainDicomTags}) =
      _$_InstanceDtailsDto;
  const _InstanceDtailsDto._() : super._();

  factory _InstanceDtailsDto.fromJson(Map<String, dynamic> json) =
      _$_InstanceDtailsDto.fromJson;

  @override
  int get fileSize;
  @override
  String get fileUuid;
  @override
  @JsonKey(name: "ID")
  String get id;
  @override
  String get parentSeries;
  @override
  @JsonKey(name: "Type")
  String get dicomOrthancType;
  @override
  @JsonKey(name: "MainDicomTags")
  InstanceMainDicomTagsDto get instanceMainDicomTags;
  @override
  @JsonKey(ignore: true)
  _$$_InstanceDtailsDtoCopyWith<_$_InstanceDtailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
