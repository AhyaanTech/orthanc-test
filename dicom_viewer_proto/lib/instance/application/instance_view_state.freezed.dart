// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'instance_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InstanceViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(InstanceViewStateData instanceState) rendered,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetching,
    TResult? Function(InstanceViewStateData instanceState)? rendered,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(InstanceViewStateData instanceState)? rendered,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Rendered value) rendered,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_Rendered value)? rendered,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Rendered value)? rendered,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstanceViewStateCopyWith<$Res> {
  factory $InstanceViewStateCopyWith(
          InstanceViewState value, $Res Function(InstanceViewState) then) =
      _$InstanceViewStateCopyWithImpl<$Res, InstanceViewState>;
}

/// @nodoc
class _$InstanceViewStateCopyWithImpl<$Res, $Val extends InstanceViewState>
    implements $InstanceViewStateCopyWith<$Res> {
  _$InstanceViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchingCopyWith<$Res> {
  factory _$$_FetchingCopyWith(
          _$_Fetching value, $Res Function(_$_Fetching) then) =
      __$$_FetchingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchingCopyWithImpl<$Res>
    extends _$InstanceViewStateCopyWithImpl<$Res, _$_Fetching>
    implements _$$_FetchingCopyWith<$Res> {
  __$$_FetchingCopyWithImpl(
      _$_Fetching _value, $Res Function(_$_Fetching) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Fetching extends _Fetching with DiagnosticableTreeMixin {
  const _$_Fetching() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InstanceViewState.fetching()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'InstanceViewState.fetching'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Fetching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(InstanceViewStateData instanceState) rendered,
    required TResult Function(String error) error,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetching,
    TResult? Function(InstanceViewStateData instanceState)? rendered,
    TResult? Function(String error)? error,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(InstanceViewStateData instanceState)? rendered,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Rendered value) rendered,
    required TResult Function(_Error value) error,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_Rendered value)? rendered,
    TResult? Function(_Error value)? error,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Rendered value)? rendered,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _Fetching extends InstanceViewState {
  const factory _Fetching() = _$_Fetching;
  const _Fetching._() : super._();
}

/// @nodoc
abstract class _$$_RenderedCopyWith<$Res> {
  factory _$$_RenderedCopyWith(
          _$_Rendered value, $Res Function(_$_Rendered) then) =
      __$$_RenderedCopyWithImpl<$Res>;
  @useResult
  $Res call({InstanceViewStateData instanceState});

  $InstanceViewStateDataCopyWith<$Res> get instanceState;
}

/// @nodoc
class __$$_RenderedCopyWithImpl<$Res>
    extends _$InstanceViewStateCopyWithImpl<$Res, _$_Rendered>
    implements _$$_RenderedCopyWith<$Res> {
  __$$_RenderedCopyWithImpl(
      _$_Rendered _value, $Res Function(_$_Rendered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instanceState = null,
  }) {
    return _then(_$_Rendered(
      null == instanceState
          ? _value.instanceState
          : instanceState // ignore: cast_nullable_to_non_nullable
              as InstanceViewStateData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InstanceViewStateDataCopyWith<$Res> get instanceState {
    return $InstanceViewStateDataCopyWith<$Res>(_value.instanceState, (value) {
      return _then(_value.copyWith(instanceState: value));
    });
  }
}

/// @nodoc

class _$_Rendered extends _Rendered with DiagnosticableTreeMixin {
  const _$_Rendered(this.instanceState) : super._();

  @override
  final InstanceViewStateData instanceState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InstanceViewState.rendered(instanceState: $instanceState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InstanceViewState.rendered'))
      ..add(DiagnosticsProperty('instanceState', instanceState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rendered &&
            (identical(other.instanceState, instanceState) ||
                other.instanceState == instanceState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instanceState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RenderedCopyWith<_$_Rendered> get copyWith =>
      __$$_RenderedCopyWithImpl<_$_Rendered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(InstanceViewStateData instanceState) rendered,
    required TResult Function(String error) error,
  }) {
    return rendered(instanceState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetching,
    TResult? Function(InstanceViewStateData instanceState)? rendered,
    TResult? Function(String error)? error,
  }) {
    return rendered?.call(instanceState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(InstanceViewStateData instanceState)? rendered,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (rendered != null) {
      return rendered(instanceState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Rendered value) rendered,
    required TResult Function(_Error value) error,
  }) {
    return rendered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_Rendered value)? rendered,
    TResult? Function(_Error value)? error,
  }) {
    return rendered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Rendered value)? rendered,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (rendered != null) {
      return rendered(this);
    }
    return orElse();
  }
}

abstract class _Rendered extends InstanceViewState {
  const factory _Rendered(final InstanceViewStateData instanceState) =
      _$_Rendered;
  const _Rendered._() : super._();

  InstanceViewStateData get instanceState;
  @JsonKey(ignore: true)
  _$$_RenderedCopyWith<_$_Rendered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$InstanceViewStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error extends _Error with DiagnosticableTreeMixin {
  const _$_Error(this.error) : super._();

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InstanceViewState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InstanceViewState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(InstanceViewStateData instanceState) rendered,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetching,
    TResult? Function(InstanceViewStateData instanceState)? rendered,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(InstanceViewStateData instanceState)? rendered,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Rendered value) rendered,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_Rendered value)? rendered,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Rendered value)? rendered,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends InstanceViewState {
  const factory _Error(final String error) = _$_Error;
  const _Error._() : super._();

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InstanceViewStateData {
  Uint8List get imageData => throw _privateConstructorUsedError;
  int get contrast => throw _privateConstructorUsedError;
  InstanceDicomTags get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InstanceViewStateDataCopyWith<InstanceViewStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstanceViewStateDataCopyWith<$Res> {
  factory $InstanceViewStateDataCopyWith(InstanceViewStateData value,
          $Res Function(InstanceViewStateData) then) =
      _$InstanceViewStateDataCopyWithImpl<$Res, InstanceViewStateData>;
  @useResult
  $Res call({Uint8List imageData, int contrast, InstanceDicomTags tags});

  $InstanceDicomTagsCopyWith<$Res> get tags;
}

/// @nodoc
class _$InstanceViewStateDataCopyWithImpl<$Res,
        $Val extends InstanceViewStateData>
    implements $InstanceViewStateDataCopyWith<$Res> {
  _$InstanceViewStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageData = null,
    Object? contrast = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      imageData: null == imageData
          ? _value.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      contrast: null == contrast
          ? _value.contrast
          : contrast // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as InstanceDicomTags,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InstanceDicomTagsCopyWith<$Res> get tags {
    return $InstanceDicomTagsCopyWith<$Res>(_value.tags, (value) {
      return _then(_value.copyWith(tags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InstanceViewStateDataCopyWith<$Res>
    implements $InstanceViewStateDataCopyWith<$Res> {
  factory _$$_InstanceViewStateDataCopyWith(_$_InstanceViewStateData value,
          $Res Function(_$_InstanceViewStateData) then) =
      __$$_InstanceViewStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uint8List imageData, int contrast, InstanceDicomTags tags});

  @override
  $InstanceDicomTagsCopyWith<$Res> get tags;
}

/// @nodoc
class __$$_InstanceViewStateDataCopyWithImpl<$Res>
    extends _$InstanceViewStateDataCopyWithImpl<$Res, _$_InstanceViewStateData>
    implements _$$_InstanceViewStateDataCopyWith<$Res> {
  __$$_InstanceViewStateDataCopyWithImpl(_$_InstanceViewStateData _value,
      $Res Function(_$_InstanceViewStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageData = null,
    Object? contrast = null,
    Object? tags = null,
  }) {
    return _then(_$_InstanceViewStateData(
      imageData: null == imageData
          ? _value.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      contrast: null == contrast
          ? _value.contrast
          : contrast // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as InstanceDicomTags,
    ));
  }
}

/// @nodoc

class _$_InstanceViewStateData extends _InstanceViewStateData
    with DiagnosticableTreeMixin {
  const _$_InstanceViewStateData(
      {required this.imageData, this.contrast = 100, required this.tags})
      : super._();

  @override
  final Uint8List imageData;
  @override
  @JsonKey()
  final int contrast;
  @override
  final InstanceDicomTags tags;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InstanceViewStateData(imageData: $imageData, contrast: $contrast, tags: $tags)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InstanceViewStateData'))
      ..add(DiagnosticsProperty('imageData', imageData))
      ..add(DiagnosticsProperty('contrast', contrast))
      ..add(DiagnosticsProperty('tags', tags));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InstanceViewStateData &&
            const DeepCollectionEquality().equals(other.imageData, imageData) &&
            (identical(other.contrast, contrast) ||
                other.contrast == contrast) &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(imageData), contrast, tags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InstanceViewStateDataCopyWith<_$_InstanceViewStateData> get copyWith =>
      __$$_InstanceViewStateDataCopyWithImpl<_$_InstanceViewStateData>(
          this, _$identity);
}

abstract class _InstanceViewStateData extends InstanceViewStateData {
  const factory _InstanceViewStateData(
      {required final Uint8List imageData,
      final int contrast,
      required final InstanceDicomTags tags}) = _$_InstanceViewStateData;
  const _InstanceViewStateData._() : super._();

  @override
  Uint8List get imageData;
  @override
  int get contrast;
  @override
  InstanceDicomTags get tags;
  @override
  @JsonKey(ignore: true)
  _$$_InstanceViewStateDataCopyWith<_$_InstanceViewStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
