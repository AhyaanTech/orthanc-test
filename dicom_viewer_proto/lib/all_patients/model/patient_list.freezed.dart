// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'patient_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientsList _$PatientsListFromJson(Map<String, dynamic> json) {
  return _PatientsList.fromJson(json);
}

/// @nodoc
mixin _$PatientsList {
  String get patientUUID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientsListCopyWith<PatientsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientsListCopyWith<$Res> {
  factory $PatientsListCopyWith(
          PatientsList value, $Res Function(PatientsList) then) =
      _$PatientsListCopyWithImpl<$Res, PatientsList>;
  @useResult
  $Res call({String patientUUID});
}

/// @nodoc
class _$PatientsListCopyWithImpl<$Res, $Val extends PatientsList>
    implements $PatientsListCopyWith<$Res> {
  _$PatientsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientUUID = null,
  }) {
    return _then(_value.copyWith(
      patientUUID: null == patientUUID
          ? _value.patientUUID
          : patientUUID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientsListCopyWith<$Res>
    implements $PatientsListCopyWith<$Res> {
  factory _$$_PatientsListCopyWith(
          _$_PatientsList value, $Res Function(_$_PatientsList) then) =
      __$$_PatientsListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String patientUUID});
}

/// @nodoc
class __$$_PatientsListCopyWithImpl<$Res>
    extends _$PatientsListCopyWithImpl<$Res, _$_PatientsList>
    implements _$$_PatientsListCopyWith<$Res> {
  __$$_PatientsListCopyWithImpl(
      _$_PatientsList _value, $Res Function(_$_PatientsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientUUID = null,
  }) {
    return _then(_$_PatientsList(
      patientUUID: null == patientUUID
          ? _value.patientUUID
          : patientUUID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientsList extends _PatientsList {
  const _$_PatientsList({required this.patientUUID}) : super._();

  factory _$_PatientsList.fromJson(Map<String, dynamic> json) =>
      _$$_PatientsListFromJson(json);

  @override
  final String patientUUID;

  @override
  String toString() {
    return 'PatientsList(patientUUID: $patientUUID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientsList &&
            (identical(other.patientUUID, patientUUID) ||
                other.patientUUID == patientUUID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, patientUUID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientsListCopyWith<_$_PatientsList> get copyWith =>
      __$$_PatientsListCopyWithImpl<_$_PatientsList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientsListToJson(
      this,
    );
  }
}

abstract class _PatientsList extends PatientsList {
  const factory _PatientsList({required final String patientUUID}) =
      _$_PatientsList;
  const _PatientsList._() : super._();

  factory _PatientsList.fromJson(Map<String, dynamic> json) =
      _$_PatientsList.fromJson;

  @override
  String get patientUUID;
  @override
  @JsonKey(ignore: true)
  _$$_PatientsListCopyWith<_$_PatientsList> get copyWith =>
      throw _privateConstructorUsedError;
}
