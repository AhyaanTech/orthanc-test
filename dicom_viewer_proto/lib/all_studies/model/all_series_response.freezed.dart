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
  return _AllSeriesResponse.fromJson(json);
}

/// @nodoc
mixin _$Study {
  @JsonKey(name: "ID")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "IsStable")
  bool get isStable => throw _privateConstructorUsedError;
  @JsonKey(name: "LastUpdate")
  String get lastUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: "MainDicomTags")
  MainDicomTags get mainDicomTags => throw _privateConstructorUsedError;
  @JsonKey(name: "ParentPatient")
  String get parentPatient => throw _privateConstructorUsedError;
  @JsonKey(name: "Type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "Series")
  List<String> get Series => throw _privateConstructorUsedError;
  @JsonKey(name: "PatientMainDicomTags")
  PatientMainDicomTags get patientMainDicomTags =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllStudiesResponseCopyWith<Study> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllStudiesResponseCopyWith<$Res> {
  factory $AllStudiesResponseCopyWith(Study value, $Res Function(Study) then) =
      _$AllStudiesResponseCopyWithImpl<$Res, Study>;
  @useResult
  $Res call(
      {@JsonKey(name: "ID")
          String id,
      @JsonKey(name: "IsStable")
          bool isStable,
      @JsonKey(name: "LastUpdate")
          String lastUpdate,
      @JsonKey(name: "MainDicomTags")
          MainDicomTags mainDicomTags,
      @JsonKey(name: "ParentPatient")
          String parentPatient,
      @JsonKey(name: "Type")
          String type,
      @JsonKey(name: "Series")
          List<String> Series,
      @JsonKey(name: "PatientMainDicomTags")
          PatientMainDicomTags patientMainDicomTags});

  $MainDicomTagsCopyWith<$Res> get mainDicomTags;
  $PatientMainDicomTagsCopyWith<$Res> get patientMainDicomTags;
}

/// @nodoc
class _$AllStudiesResponseCopyWithImpl<$Res, $Val extends Study>
    implements $AllStudiesResponseCopyWith<$Res> {
  _$AllStudiesResponseCopyWithImpl(this._value, this._then);

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
    Object? Series = null,
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
              as MainDicomTags,
      parentPatient: null == parentPatient
          ? _value.parentPatient
          : parentPatient // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      Series: null == Series
          ? _value.Series
          : Series // ignore: cast_nullable_to_non_nullable
              as List<String>,
      patientMainDicomTags: null == patientMainDicomTags
          ? _value.patientMainDicomTags
          : patientMainDicomTags // ignore: cast_nullable_to_non_nullable
              as PatientMainDicomTags,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainDicomTagsCopyWith<$Res> get mainDicomTags {
    return $MainDicomTagsCopyWith<$Res>(_value.mainDicomTags, (value) {
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
abstract class _$$_AllSeriesResponseCopyWith<$Res>
    implements $AllStudiesResponseCopyWith<$Res> {
  factory _$$_AllSeriesResponseCopyWith(_$_AllSeriesResponse value,
          $Res Function(_$_AllSeriesResponse) then) =
      __$$_AllSeriesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ID")
          String id,
      @JsonKey(name: "IsStable")
          bool isStable,
      @JsonKey(name: "LastUpdate")
          String lastUpdate,
      @JsonKey(name: "MainDicomTags")
          MainDicomTags mainDicomTags,
      @JsonKey(name: "ParentPatient")
          String parentPatient,
      @JsonKey(name: "Type")
          String type,
      @JsonKey(name: "Series")
          List<String> Series,
      @JsonKey(name: "PatientMainDicomTags")
          PatientMainDicomTags patientMainDicomTags});

  @override
  $MainDicomTagsCopyWith<$Res> get mainDicomTags;
  @override
  $PatientMainDicomTagsCopyWith<$Res> get patientMainDicomTags;
}

/// @nodoc
class __$$_AllSeriesResponseCopyWithImpl<$Res>
    extends _$AllStudiesResponseCopyWithImpl<$Res, _$_AllSeriesResponse>
    implements _$$_AllSeriesResponseCopyWith<$Res> {
  __$$_AllSeriesResponseCopyWithImpl(
      _$_AllSeriesResponse _value, $Res Function(_$_AllSeriesResponse) _then)
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
    Object? Series = null,
    Object? patientMainDicomTags = null,
  }) {
    return _then(_$_AllSeriesResponse(
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
              as MainDicomTags,
      parentPatient: null == parentPatient
          ? _value.parentPatient
          : parentPatient // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      Series: null == Series
          ? _value._Series
          : Series // ignore: cast_nullable_to_non_nullable
              as List<String>,
      patientMainDicomTags: null == patientMainDicomTags
          ? _value.patientMainDicomTags
          : patientMainDicomTags // ignore: cast_nullable_to_non_nullable
              as PatientMainDicomTags,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllSeriesResponse extends _AllSeriesResponse {
  const _$_AllSeriesResponse(
      {@JsonKey(name: "ID")
          required this.id,
      @JsonKey(name: "IsStable")
          required this.isStable,
      @JsonKey(name: "LastUpdate")
          required this.lastUpdate,
      @JsonKey(name: "MainDicomTags")
          required this.mainDicomTags,
      @JsonKey(name: "ParentPatient")
          required this.parentPatient,
      @JsonKey(name: "Type")
          required this.type,
      @JsonKey(name: "Series")
          required final List<String> Series,
      @JsonKey(name: "PatientMainDicomTags")
          required this.patientMainDicomTags})
      : _Series = Series,
        super._();

  factory _$_AllSeriesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AllSeriesResponseFromJson(json);

  @override
  @JsonKey(name: "ID")
  final String id;
  @override
  @JsonKey(name: "IsStable")
  final bool isStable;
  @override
  @JsonKey(name: "LastUpdate")
  final String lastUpdate;
  @override
  @JsonKey(name: "MainDicomTags")
  final MainDicomTags mainDicomTags;
  @override
  @JsonKey(name: "ParentPatient")
  final String parentPatient;
  @override
  @JsonKey(name: "Type")
  final String type;
  final List<String> _Series;
  @override
  @JsonKey(name: "Series")
  List<String> get Series {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Series);
  }

  @override
  @JsonKey(name: "PatientMainDicomTags")
  final PatientMainDicomTags patientMainDicomTags;

  @override
  String toString() {
    return 'AllStudiesResponse(id: $id, isStable: $isStable, lastUpdate: $lastUpdate, mainDicomTags: $mainDicomTags, parentPatient: $parentPatient, type: $type, Series: $Series, patientMainDicomTags: $patientMainDicomTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllSeriesResponse &&
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
            const DeepCollectionEquality().equals(other._Series, _Series) &&
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
      const DeepCollectionEquality().hash(_Series),
      patientMainDicomTags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllSeriesResponseCopyWith<_$_AllSeriesResponse> get copyWith =>
      __$$_AllSeriesResponseCopyWithImpl<_$_AllSeriesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllSeriesResponseToJson(
      this,
    );
  }
}

abstract class _AllSeriesResponse extends Study {
  const factory _AllSeriesResponse(
          {@JsonKey(name: "ID")
              required final String id,
          @JsonKey(name: "IsStable")
              required final bool isStable,
          @JsonKey(name: "LastUpdate")
              required final String lastUpdate,
          @JsonKey(name: "MainDicomTags")
              required final MainDicomTags mainDicomTags,
          @JsonKey(name: "ParentPatient")
              required final String parentPatient,
          @JsonKey(name: "Type")
              required final String type,
          @JsonKey(name: "Series")
              required final List<String> Series,
          @JsonKey(name: "PatientMainDicomTags")
              required final PatientMainDicomTags patientMainDicomTags}) =
      _$_AllSeriesResponse;
  const _AllSeriesResponse._() : super._();

  factory _AllSeriesResponse.fromJson(Map<String, dynamic> json) =
      _$_AllSeriesResponse.fromJson;

  @override
  @JsonKey(name: "ID")
  String get id;
  @override
  @JsonKey(name: "IsStable")
  bool get isStable;
  @override
  @JsonKey(name: "LastUpdate")
  String get lastUpdate;
  @override
  @JsonKey(name: "MainDicomTags")
  MainDicomTags get mainDicomTags;
  @override
  @JsonKey(name: "ParentPatient")
  String get parentPatient;
  @override
  @JsonKey(name: "Type")
  String get type;
  @override
  @JsonKey(name: "Series")
  List<String> get Series;
  @override
  @JsonKey(name: "PatientMainDicomTags")
  PatientMainDicomTags get patientMainDicomTags;
  @override
  @JsonKey(ignore: true)
  _$$_AllSeriesResponseCopyWith<_$_AllSeriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
