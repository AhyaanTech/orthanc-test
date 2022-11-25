// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Series _$SeriesFromJson(Map<String, dynamic> json) {
  return _Series.fromJson(json);
}

/// @nodoc
mixin _$Series {
  @JsonKey(name: "MainDicomTags")
  MainDicomTags get mainDicomTags => throw _privateConstructorUsedError;
  @JsonKey(name: "ExpectedNumberOfInstances")
  int? get expectedNumberOfInstances => throw _privateConstructorUsedError;
  @JsonKey(name: "ID")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "Instances")
  List<String>? get instances => throw _privateConstructorUsedError;
  @JsonKey(name: "IsStable")
  bool? get isStable => throw _privateConstructorUsedError;
  @JsonKey(name: "LastUpdate")
  DateTime? get lastUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: "ParentStudy")
  String? get parentStudy => throw _privateConstructorUsedError;
  @JsonKey(name: "Status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "Type")
  String? get instanceType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeriesCopyWith<Series> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesCopyWith<$Res> {
  factory $SeriesCopyWith(Series value, $Res Function(Series) then) =
      _$SeriesCopyWithImpl<$Res, Series>;
  @useResult
  $Res call(
      {@JsonKey(name: "MainDicomTags")
          MainDicomTags mainDicomTags,
      @JsonKey(name: "ExpectedNumberOfInstances")
          int? expectedNumberOfInstances,
      @JsonKey(name: "ID")
          String? id,
      @JsonKey(name: "Instances")
          List<String>? instances,
      @JsonKey(name: "IsStable")
          bool? isStable,
      @JsonKey(name: "LastUpdate")
          DateTime? lastUpdate,
      @JsonKey(name: "ParentStudy")
          String? parentStudy,
      @JsonKey(name: "Status")
          String? status,
      @JsonKey(name: "Type")
          String? instanceType});

  $MainDicomTagsCopyWith<$Res> get mainDicomTags;
}

/// @nodoc
class _$SeriesCopyWithImpl<$Res, $Val extends Series>
    implements $SeriesCopyWith<$Res> {
  _$SeriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainDicomTags = null,
    Object? expectedNumberOfInstances = freezed,
    Object? id = freezed,
    Object? instances = freezed,
    Object? isStable = freezed,
    Object? lastUpdate = freezed,
    Object? parentStudy = freezed,
    Object? status = freezed,
    Object? instanceType = freezed,
  }) {
    return _then(_value.copyWith(
      mainDicomTags: null == mainDicomTags
          ? _value.mainDicomTags
          : mainDicomTags // ignore: cast_nullable_to_non_nullable
              as MainDicomTags,
      expectedNumberOfInstances: freezed == expectedNumberOfInstances
          ? _value.expectedNumberOfInstances
          : expectedNumberOfInstances // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      instances: freezed == instances
          ? _value.instances
          : instances // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isStable: freezed == isStable
          ? _value.isStable
          : isStable // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentStudy: freezed == parentStudy
          ? _value.parentStudy
          : parentStudy // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      instanceType: freezed == instanceType
          ? _value.instanceType
          : instanceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainDicomTagsCopyWith<$Res> get mainDicomTags {
    return $MainDicomTagsCopyWith<$Res>(_value.mainDicomTags, (value) {
      return _then(_value.copyWith(mainDicomTags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SeriesCopyWith<$Res> implements $SeriesCopyWith<$Res> {
  factory _$$_SeriesCopyWith(_$_Series value, $Res Function(_$_Series) then) =
      __$$_SeriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "MainDicomTags")
          MainDicomTags mainDicomTags,
      @JsonKey(name: "ExpectedNumberOfInstances")
          int? expectedNumberOfInstances,
      @JsonKey(name: "ID")
          String? id,
      @JsonKey(name: "Instances")
          List<String>? instances,
      @JsonKey(name: "IsStable")
          bool? isStable,
      @JsonKey(name: "LastUpdate")
          DateTime? lastUpdate,
      @JsonKey(name: "ParentStudy")
          String? parentStudy,
      @JsonKey(name: "Status")
          String? status,
      @JsonKey(name: "Type")
          String? instanceType});

  @override
  $MainDicomTagsCopyWith<$Res> get mainDicomTags;
}

/// @nodoc
class __$$_SeriesCopyWithImpl<$Res>
    extends _$SeriesCopyWithImpl<$Res, _$_Series>
    implements _$$_SeriesCopyWith<$Res> {
  __$$_SeriesCopyWithImpl(_$_Series _value, $Res Function(_$_Series) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainDicomTags = null,
    Object? expectedNumberOfInstances = freezed,
    Object? id = freezed,
    Object? instances = freezed,
    Object? isStable = freezed,
    Object? lastUpdate = freezed,
    Object? parentStudy = freezed,
    Object? status = freezed,
    Object? instanceType = freezed,
  }) {
    return _then(_$_Series(
      mainDicomTags: null == mainDicomTags
          ? _value.mainDicomTags
          : mainDicomTags // ignore: cast_nullable_to_non_nullable
              as MainDicomTags,
      expectedNumberOfInstances: freezed == expectedNumberOfInstances
          ? _value.expectedNumberOfInstances
          : expectedNumberOfInstances // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      instances: freezed == instances
          ? _value._instances
          : instances // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isStable: freezed == isStable
          ? _value.isStable
          : isStable // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentStudy: freezed == parentStudy
          ? _value.parentStudy
          : parentStudy // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      instanceType: freezed == instanceType
          ? _value.instanceType
          : instanceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Series extends _Series {
  const _$_Series(
      {@JsonKey(name: "MainDicomTags")
          required this.mainDicomTags,
      @JsonKey(name: "ExpectedNumberOfInstances")
          this.expectedNumberOfInstances,
      @JsonKey(name: "ID")
          this.id,
      @JsonKey(name: "Instances")
          final List<String>? instances,
      @JsonKey(name: "IsStable")
          this.isStable,
      @JsonKey(name: "LastUpdate")
          this.lastUpdate,
      @JsonKey(name: "ParentStudy")
          this.parentStudy,
      @JsonKey(name: "Status")
          this.status,
      @JsonKey(name: "Type")
          this.instanceType})
      : _instances = instances,
        super._();

  factory _$_Series.fromJson(Map<String, dynamic> json) =>
      _$$_SeriesFromJson(json);

  @override
  @JsonKey(name: "MainDicomTags")
  final MainDicomTags mainDicomTags;
  @override
  @JsonKey(name: "ExpectedNumberOfInstances")
  final int? expectedNumberOfInstances;
  @override
  @JsonKey(name: "ID")
  final String? id;
  final List<String>? _instances;
  @override
  @JsonKey(name: "Instances")
  List<String>? get instances {
    final value = _instances;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "IsStable")
  final bool? isStable;
  @override
  @JsonKey(name: "LastUpdate")
  final DateTime? lastUpdate;
  @override
  @JsonKey(name: "ParentStudy")
  final String? parentStudy;
  @override
  @JsonKey(name: "Status")
  final String? status;
  @override
  @JsonKey(name: "Type")
  final String? instanceType;

  @override
  String toString() {
    return 'Series(mainDicomTags: $mainDicomTags, expectedNumberOfInstances: $expectedNumberOfInstances, id: $id, instances: $instances, isStable: $isStable, lastUpdate: $lastUpdate, parentStudy: $parentStudy, status: $status, instanceType: $instanceType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Series &&
            (identical(other.mainDicomTags, mainDicomTags) ||
                other.mainDicomTags == mainDicomTags) &&
            (identical(other.expectedNumberOfInstances,
                    expectedNumberOfInstances) ||
                other.expectedNumberOfInstances == expectedNumberOfInstances) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._instances, _instances) &&
            (identical(other.isStable, isStable) ||
                other.isStable == isStable) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.parentStudy, parentStudy) ||
                other.parentStudy == parentStudy) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.instanceType, instanceType) ||
                other.instanceType == instanceType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mainDicomTags,
      expectedNumberOfInstances,
      id,
      const DeepCollectionEquality().hash(_instances),
      isStable,
      lastUpdate,
      parentStudy,
      status,
      instanceType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeriesCopyWith<_$_Series> get copyWith =>
      __$$_SeriesCopyWithImpl<_$_Series>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeriesToJson(
      this,
    );
  }
}

abstract class _Series extends Series {
  const factory _Series(
      {@JsonKey(name: "MainDicomTags")
          required final MainDicomTags mainDicomTags,
      @JsonKey(name: "ExpectedNumberOfInstances")
          final int? expectedNumberOfInstances,
      @JsonKey(name: "ID")
          final String? id,
      @JsonKey(name: "Instances")
          final List<String>? instances,
      @JsonKey(name: "IsStable")
          final bool? isStable,
      @JsonKey(name: "LastUpdate")
          final DateTime? lastUpdate,
      @JsonKey(name: "ParentStudy")
          final String? parentStudy,
      @JsonKey(name: "Status")
          final String? status,
      @JsonKey(name: "Type")
          final String? instanceType}) = _$_Series;
  const _Series._() : super._();

  factory _Series.fromJson(Map<String, dynamic> json) = _$_Series.fromJson;

  @override
  @JsonKey(name: "MainDicomTags")
  MainDicomTags get mainDicomTags;
  @override
  @JsonKey(name: "ExpectedNumberOfInstances")
  int? get expectedNumberOfInstances;
  @override
  @JsonKey(name: "ID")
  String? get id;
  @override
  @JsonKey(name: "Instances")
  List<String>? get instances;
  @override
  @JsonKey(name: "IsStable")
  bool? get isStable;
  @override
  @JsonKey(name: "LastUpdate")
  DateTime? get lastUpdate;
  @override
  @JsonKey(name: "ParentStudy")
  String? get parentStudy;
  @override
  @JsonKey(name: "Status")
  String? get status;
  @override
  @JsonKey(name: "Type")
  String? get instanceType;
  @override
  @JsonKey(ignore: true)
  _$$_SeriesCopyWith<_$_Series> get copyWith =>
      throw _privateConstructorUsedError;
}
