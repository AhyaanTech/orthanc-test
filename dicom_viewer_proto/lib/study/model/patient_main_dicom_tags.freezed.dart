// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'patient_main_dicom_tags.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientMainDicomTags _$PatientMainDicomTagsFromJson(Map<String, dynamic> json) {
  return _PatientMainDicomTags.fromJson(json);
}

/// @nodoc
mixin _$PatientMainDicomTags {
  String? get patientBirthDate => throw _privateConstructorUsedError;
  String? get patientID => throw _privateConstructorUsedError;
  String? get patientName => throw _privateConstructorUsedError;
  String? get patientSex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientMainDicomTagsCopyWith<PatientMainDicomTags> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientMainDicomTagsCopyWith<$Res> {
  factory $PatientMainDicomTagsCopyWith(PatientMainDicomTags value,
          $Res Function(PatientMainDicomTags) then) =
      _$PatientMainDicomTagsCopyWithImpl<$Res, PatientMainDicomTags>;
  @useResult
  $Res call(
      {String? patientBirthDate,
      String? patientID,
      String? patientName,
      String? patientSex});
}

/// @nodoc
class _$PatientMainDicomTagsCopyWithImpl<$Res,
        $Val extends PatientMainDicomTags>
    implements $PatientMainDicomTagsCopyWith<$Res> {
  _$PatientMainDicomTagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientBirthDate = freezed,
    Object? patientID = freezed,
    Object? patientName = freezed,
    Object? patientSex = freezed,
  }) {
    return _then(_value.copyWith(
      patientBirthDate: freezed == patientBirthDate
          ? _value.patientBirthDate
          : patientBirthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      patientID: freezed == patientID
          ? _value.patientID
          : patientID // ignore: cast_nullable_to_non_nullable
              as String?,
      patientName: freezed == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
      patientSex: freezed == patientSex
          ? _value.patientSex
          : patientSex // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientMainDicomTagsCopyWith<$Res>
    implements $PatientMainDicomTagsCopyWith<$Res> {
  factory _$$_PatientMainDicomTagsCopyWith(_$_PatientMainDicomTags value,
          $Res Function(_$_PatientMainDicomTags) then) =
      __$$_PatientMainDicomTagsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? patientBirthDate,
      String? patientID,
      String? patientName,
      String? patientSex});
}

/// @nodoc
class __$$_PatientMainDicomTagsCopyWithImpl<$Res>
    extends _$PatientMainDicomTagsCopyWithImpl<$Res, _$_PatientMainDicomTags>
    implements _$$_PatientMainDicomTagsCopyWith<$Res> {
  __$$_PatientMainDicomTagsCopyWithImpl(_$_PatientMainDicomTags _value,
      $Res Function(_$_PatientMainDicomTags) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientBirthDate = freezed,
    Object? patientID = freezed,
    Object? patientName = freezed,
    Object? patientSex = freezed,
  }) {
    return _then(_$_PatientMainDicomTags(
      patientBirthDate: freezed == patientBirthDate
          ? _value.patientBirthDate
          : patientBirthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      patientID: freezed == patientID
          ? _value.patientID
          : patientID // ignore: cast_nullable_to_non_nullable
              as String?,
      patientName: freezed == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
      patientSex: freezed == patientSex
          ? _value.patientSex
          : patientSex // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_PatientMainDicomTags extends _PatientMainDicomTags {
  const _$_PatientMainDicomTags(
      {this.patientBirthDate = "Not Found",
      this.patientID = "Patient Id not found",
      this.patientName = "John Smith",
      this.patientSex = "Not Mentioned"})
      : super._();

  factory _$_PatientMainDicomTags.fromJson(Map<String, dynamic> json) =>
      _$$_PatientMainDicomTagsFromJson(json);

  @override
  @JsonKey()
  final String? patientBirthDate;
  @override
  @JsonKey()
  final String? patientID;
  @override
  @JsonKey()
  final String? patientName;
  @override
  @JsonKey()
  final String? patientSex;

  @override
  String toString() {
    return 'PatientMainDicomTags(patientBirthDate: $patientBirthDate, patientID: $patientID, patientName: $patientName, patientSex: $patientSex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientMainDicomTags &&
            (identical(other.patientBirthDate, patientBirthDate) ||
                other.patientBirthDate == patientBirthDate) &&
            (identical(other.patientID, patientID) ||
                other.patientID == patientID) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName) &&
            (identical(other.patientSex, patientSex) ||
                other.patientSex == patientSex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, patientBirthDate, patientID, patientName, patientSex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientMainDicomTagsCopyWith<_$_PatientMainDicomTags> get copyWith =>
      __$$_PatientMainDicomTagsCopyWithImpl<_$_PatientMainDicomTags>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientMainDicomTagsToJson(
      this,
    );
  }
}

abstract class _PatientMainDicomTags extends PatientMainDicomTags {
  const factory _PatientMainDicomTags(
      {final String? patientBirthDate,
      final String? patientID,
      final String? patientName,
      final String? patientSex}) = _$_PatientMainDicomTags;
  const _PatientMainDicomTags._() : super._();

  factory _PatientMainDicomTags.fromJson(Map<String, dynamic> json) =
      _$_PatientMainDicomTags.fromJson;

  @override
  String? get patientBirthDate;
  @override
  String? get patientID;
  @override
  String? get patientName;
  @override
  String? get patientSex;
  @override
  @JsonKey(ignore: true)
  _$$_PatientMainDicomTagsCopyWith<_$_PatientMainDicomTags> get copyWith =>
      throw _privateConstructorUsedError;
}
