// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dicom_windowing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DicomWindowing {
  /// This window center data comes from the api. if the api doesnt have
  /// it we have to look at VOI and LUT tags/functions and slope and intercepts
  int get windowCenter => throw _privateConstructorUsedError;

  /// same as window center
  int get windowWidth => throw _privateConstructorUsedError;

  /// the minimum pixel output? as far as ive understood.
  /// defaults to 0
  int get yMin => throw _privateConstructorUsedError;

  /// the maximum pixel output? as far as ive understood.
  /// defaults to 255
  int get yMax => throw _privateConstructorUsedError;

  /// the slope data also comes from the api. we have to multiply the
  /// calculated value with it.
  /// check [multiplySlopeAndIntercept] function
  Option<int> get slope => throw _privateConstructorUsedError;

  /// the intercept data also comes from the api. we have to add it to
  /// the multiplication of value with slope.
  /// check [multiplySlopeAndIntercept] function
  Option<int> get intercept => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DicomWindowingCopyWith<DicomWindowing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DicomWindowingCopyWith<$Res> {
  factory $DicomWindowingCopyWith(
          DicomWindowing value, $Res Function(DicomWindowing) then) =
      _$DicomWindowingCopyWithImpl<$Res, DicomWindowing>;
  @useResult
  $Res call(
      {int windowCenter,
      int windowWidth,
      int yMin,
      int yMax,
      Option<int> slope,
      Option<int> intercept});
}

/// @nodoc
class _$DicomWindowingCopyWithImpl<$Res, $Val extends DicomWindowing>
    implements $DicomWindowingCopyWith<$Res> {
  _$DicomWindowingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? windowCenter = null,
    Object? windowWidth = null,
    Object? yMin = null,
    Object? yMax = null,
    Object? slope = null,
    Object? intercept = null,
  }) {
    return _then(_value.copyWith(
      windowCenter: null == windowCenter
          ? _value.windowCenter
          : windowCenter // ignore: cast_nullable_to_non_nullable
              as int,
      windowWidth: null == windowWidth
          ? _value.windowWidth
          : windowWidth // ignore: cast_nullable_to_non_nullable
              as int,
      yMin: null == yMin
          ? _value.yMin
          : yMin // ignore: cast_nullable_to_non_nullable
              as int,
      yMax: null == yMax
          ? _value.yMax
          : yMax // ignore: cast_nullable_to_non_nullable
              as int,
      slope: null == slope
          ? _value.slope
          : slope // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      intercept: null == intercept
          ? _value.intercept
          : intercept // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DicomWindowingCopyWith<$Res>
    implements $DicomWindowingCopyWith<$Res> {
  factory _$$_DicomWindowingCopyWith(
          _$_DicomWindowing value, $Res Function(_$_DicomWindowing) then) =
      __$$_DicomWindowingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int windowCenter,
      int windowWidth,
      int yMin,
      int yMax,
      Option<int> slope,
      Option<int> intercept});
}

/// @nodoc
class __$$_DicomWindowingCopyWithImpl<$Res>
    extends _$DicomWindowingCopyWithImpl<$Res, _$_DicomWindowing>
    implements _$$_DicomWindowingCopyWith<$Res> {
  __$$_DicomWindowingCopyWithImpl(
      _$_DicomWindowing _value, $Res Function(_$_DicomWindowing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? windowCenter = null,
    Object? windowWidth = null,
    Object? yMin = null,
    Object? yMax = null,
    Object? slope = null,
    Object? intercept = null,
  }) {
    return _then(_$_DicomWindowing(
      windowCenter: null == windowCenter
          ? _value.windowCenter
          : windowCenter // ignore: cast_nullable_to_non_nullable
              as int,
      windowWidth: null == windowWidth
          ? _value.windowWidth
          : windowWidth // ignore: cast_nullable_to_non_nullable
              as int,
      yMin: null == yMin
          ? _value.yMin
          : yMin // ignore: cast_nullable_to_non_nullable
              as int,
      yMax: null == yMax
          ? _value.yMax
          : yMax // ignore: cast_nullable_to_non_nullable
              as int,
      slope: null == slope
          ? _value.slope
          : slope // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      intercept: null == intercept
          ? _value.intercept
          : intercept // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ));
  }
}

/// @nodoc

class _$_DicomWindowing extends _DicomWindowing {
  const _$_DicomWindowing(
      {this.windowCenter = 500,
      this.windowWidth = 2500,
      this.yMin = 0,
      this.yMax = 255,
      required this.slope,
      required this.intercept})
      : super._();

  /// This window center data comes from the api. if the api doesnt have
  /// it we have to look at VOI and LUT tags/functions and slope and intercepts
  @override
  @JsonKey()
  final int windowCenter;

  /// same as window center
  @override
  @JsonKey()
  final int windowWidth;

  /// the minimum pixel output? as far as ive understood.
  /// defaults to 0
  @override
  @JsonKey()
  final int yMin;

  /// the maximum pixel output? as far as ive understood.
  /// defaults to 255
  @override
  @JsonKey()
  final int yMax;

  /// the slope data also comes from the api. we have to multiply the
  /// calculated value with it.
  /// check [multiplySlopeAndIntercept] function
  @override
  final Option<int> slope;

  /// the intercept data also comes from the api. we have to add it to
  /// the multiplication of value with slope.
  /// check [multiplySlopeAndIntercept] function
  @override
  final Option<int> intercept;

  @override
  String toString() {
    return 'DicomWindowing(windowCenter: $windowCenter, windowWidth: $windowWidth, yMin: $yMin, yMax: $yMax, slope: $slope, intercept: $intercept)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DicomWindowing &&
            (identical(other.windowCenter, windowCenter) ||
                other.windowCenter == windowCenter) &&
            (identical(other.windowWidth, windowWidth) ||
                other.windowWidth == windowWidth) &&
            (identical(other.yMin, yMin) || other.yMin == yMin) &&
            (identical(other.yMax, yMax) || other.yMax == yMax) &&
            (identical(other.slope, slope) || other.slope == slope) &&
            (identical(other.intercept, intercept) ||
                other.intercept == intercept));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, windowCenter, windowWidth, yMin, yMax, slope, intercept);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DicomWindowingCopyWith<_$_DicomWindowing> get copyWith =>
      __$$_DicomWindowingCopyWithImpl<_$_DicomWindowing>(this, _$identity);
}

abstract class _DicomWindowing extends DicomWindowing {
  const factory _DicomWindowing(
      {final int windowCenter,
      final int windowWidth,
      final int yMin,
      final int yMax,
      required final Option<int> slope,
      required final Option<int> intercept}) = _$_DicomWindowing;
  const _DicomWindowing._() : super._();

  @override

  /// This window center data comes from the api. if the api doesnt have
  /// it we have to look at VOI and LUT tags/functions and slope and intercepts
  int get windowCenter;
  @override

  /// same as window center
  int get windowWidth;
  @override

  /// the minimum pixel output? as far as ive understood.
  /// defaults to 0
  int get yMin;
  @override

  /// the maximum pixel output? as far as ive understood.
  /// defaults to 255
  int get yMax;
  @override

  /// the slope data also comes from the api. we have to multiply the
  /// calculated value with it.
  /// check [multiplySlopeAndIntercept] function
  Option<int> get slope;
  @override

  /// the intercept data also comes from the api. we have to add it to
  /// the multiplication of value with slope.
  /// check [multiplySlopeAndIntercept] function
  Option<int> get intercept;
  @override
  @JsonKey(ignore: true)
  _$$_DicomWindowingCopyWith<_$_DicomWindowing> get copyWith =>
      throw _privateConstructorUsedError;
}
