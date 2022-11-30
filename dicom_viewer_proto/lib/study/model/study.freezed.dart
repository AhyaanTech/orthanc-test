// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'study.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Study _$StudyFromJson(Map<String, dynamic> json) {
  return _Study.fromJson(json);
}

/// @nodoc
mixin _$Study {
  @JsonKey(name: "ID")
  String get id => throw _privateConstructorUsedError;
  bool get isStable => throw _privateConstructorUsedError;
  String get lastUpdate => throw _privateConstructorUsedError;
  PatientMainDicomTags get mainDicomTags => throw _privateConstructorUsedError;
  String get parentPatient => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<String> get series => throw _privateConstructorUsedError;
  @JsonKey(name: "PatientMainDicomTags")
  PatientMainDicomTags get patientMainDicomTags =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudyCopyWith<Study> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyCopyWith<$Res> {
  factory $StudyCopyWith(Study value, $Res Function(Study) then) =
      _$StudyCopyWithImpl<$Res, Study>;
  @useResult
  $Res call(
      {@JsonKey(name: "ID")
          String id,
      bool isStable,
      String lastUpdate,
      PatientMainDicomTags mainDicomTags,
      String parentPatient,
      String type,
      List<String> series,
      @JsonKey(name: "PatientMainDicomTags")
          PatientMainDicomTags patientMainDicomTags});

  $PatientMainDicomTagsCopyWith<$Res> get mainDicomTags;
  $PatientMainDicomTagsCopyWith<$Res> get patientMainDicomTags;
}

/// @nodoc
class _$StudyCopyWithImpl<$Res, $Val extends Study>
    implements $StudyCopyWith<$Res> {
  _$StudyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isStable = null,
    Object? lastUpdate = null,
    Object? mainDicomTags = null,
    Object? parentPatient = null,
    Object? type = null,
    Object? series = null,
    Object? patientMainDicomTags = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isStable: null == isStable
          ? _value.isStable
          : isStable // ignore: cast_nullable_to_non_nullable
              as bool,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as String,
      mainDicomTags: null == mainDicomTags
          ? _value.mainDicomTags
          : mainDicomTags // ignore: cast_nullable_to_non_nullable
              as PatientMainDicomTags,
      parentPatient: null == parentPatient
          ? _value.parentPatient
          : parentPatient // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as List<String>,
      patientMainDicomTags: null == patientMainDicomTags
          ? _value.patientMainDicomTags
          : patientMainDicomTags // ignore: cast_nullable_to_non_nullable
              as PatientMainDicomTags,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientMainDicomTagsCopyWith<$Res> get mainDicomTags {
    return $PatientMainDicomTagsCopyWith<$Res>(_value.mainDicomTags, (value) {
      return _then(_value.copyWith(mainDicomTags: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientMainDicomTagsCopyWith<$Res> get patientMainDicomTags {
    return $PatientMainDicomTagsCopyWith<$Res>(_value.patientMainDicomTags,
        (value) {
      return _then(_value.copyWith(patientMainDicomTags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StudyCopyWith<$Res> implements $StudyCopyWith<$Res> {
  factory _$$_StudyCopyWith(_$_Study value, $Res Function(_$_Study) then) =
      __$$_StudyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ID")
          String id,
      bool isStable,
      String lastUpdate,
      PatientMainDicomTags mainDicomTags,
      String parentPatient,
      String type,
      List<String> series,
      @JsonKey(name: "PatientMainDicomTags")
          PatientMainDicomTags patientMainDicomTags});

  @override
  $PatientMainDicomTagsCopyWith<$Res> get mainDicomTags;
  @override
  $PatientMainDicomTagsCopyWith<$Res> get patientMainDicomTags;
}

/// @nodoc
class __$$_StudyCopyWithImpl<$Res> extends _$StudyCopyWithImpl<$Res, _$_Study>
    implements _$$_StudyCopyWith<$Res> {
  __$$_StudyCopyWithImpl(_$_Study _value, $Res Function(_$_Study) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isStable = null,
    Object? lastUpdate = null,
    Object? mainDicomTags = null,
    Object? parentPatient = null,
    Object? type = null,
    Object? series = null,
    Object? patientMainDicomTags = null,
  }) {
    return _then(_$_Study(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isStable: null == isStable
          ? _value.isStable
          : isStable // ignore: cast_nullable_to_non_nullable
              as bool,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as String,
      mainDicomTags: null == mainDicomTags
          ? _value.mainDicomTags
          : mainDicomTags // ignore: cast_nullable_to_non_nullable
              as PatientMainDicomTags,
      parentPatient: null == parentPatient
          ? _value.parentPatient
          : parentPatient // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      series: null == series
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as List<String>,
      patientMainDicomTags: null == patientMainDicomTags
          ? _value.patientMainDicomTags
          : patientMainDicomTags // ignore: cast_nullable_to_non_nullable
              as PatientMainDicomTags,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_Study extends _Study {
  const _$_Study(
      {@JsonKey(name: "ID")
          required this.id,
      required this.isStable,
      required this.lastUpdate,
      required this.mainDicomTags,
      required this.parentPatient,
      required this.type,
      required final List<String> series,
      @JsonKey(name: "PatientMainDicomTags")
          required this.patientMainDicomTags})
      : _series = series,
        super._();

  factory _$_Study.fromJson(Map<String, dynamic> json) =>
      _$$_StudyFromJson(json);

  @override
  @JsonKey(name: "ID")
  final String id;
  @override
  final bool isStable;
  @override
  final String lastUpdate;
  @override
  final PatientMainDicomTags mainDicomTags;
  @override
  final String parentPatient;
  @override
  final String type;
  final List<String> _series;
  @override
  List<String> get series {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_series);
  }

  @override
  @JsonKey(name: "PatientMainDicomTags")
  final PatientMainDicomTags patientMainDicomTags;

  @override
  String toString() {
    return 'Study(id: $id, isStable: $isStable, lastUpdate: $lastUpdate, mainDicomTags: $mainDicomTags, parentPatient: $parentPatient, type: $type, series: $series, patientMainDicomTags: $patientMainDicomTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Study &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isStable, isStable) ||
                other.isStable == isStable) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.mainDicomTags, mainDicomTags) ||
                other.mainDicomTags == mainDicomTags) &&
            (identical(other.parentPatient, parentPatient) ||
                other.parentPatient == parentPatient) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._series, _series) &&
            (identical(other.patientMainDicomTags, patientMainDicomTags) ||
                other.patientMainDicomTags == patientMainDicomTags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isStable,
      lastUpdate,
      mainDicomTags,
      parentPatient,
      type,
      const DeepCollectionEquality().hash(_series),
      patientMainDicomTags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudyCopyWith<_$_Study> get copyWith =>
      __$$_StudyCopyWithImpl<_$_Study>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudyToJson(
      this,
    );
  }
}

abstract class _Study extends Study {
  const factory _Study(
      {@JsonKey(name: "ID")
          required final String id,
      required final bool isStable,
      required final String lastUpdate,
      required final PatientMainDicomTags mainDicomTags,
      required final String parentPatient,
      required final String type,
      required final List<String> series,
      @JsonKey(name: "PatientMainDicomTags")
          required final PatientMainDicomTags patientMainDicomTags}) = _$_Study;
  const _Study._() : super._();

  factory _Study.fromJson(Map<String, dynamic> json) = _$_Study.fromJson;

  @override
  @JsonKey(name: "ID")
  String get id;
  @override
  bool get isStable;
  @override
  String get lastUpdate;
  @override
  PatientMainDicomTags get mainDicomTags;
  @override
  String get parentPatient;
  @override
  String get type;
  @override
  List<String> get series;
  @override
  @JsonKey(name: "PatientMainDicomTags")
  PatientMainDicomTags get patientMainDicomTags;
  @override
  @JsonKey(ignore: true)
  _$$_StudyCopyWith<_$_Study> get copyWith =>
      throw _privateConstructorUsedError;
}
