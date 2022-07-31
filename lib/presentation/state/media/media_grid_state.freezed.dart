// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'media_grid_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MediaGridState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<String> mediaList) data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> mediaList)? data,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> mediaList)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaLoading value) loading,
    required TResult Function(MediaData value) data,
    required TResult Function(_MediaError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MediaLoading value)? loading,
    TResult Function(MediaData value)? data,
    TResult Function(_MediaError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaLoading value)? loading,
    TResult Function(MediaData value)? data,
    TResult Function(_MediaError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaGridStateCopyWith<$Res> {
  factory $MediaGridStateCopyWith(
          MediaGridState value, $Res Function(MediaGridState) then) =
      _$MediaGridStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MediaGridStateCopyWithImpl<$Res>
    implements $MediaGridStateCopyWith<$Res> {
  _$MediaGridStateCopyWithImpl(this._value, this._then);

  final MediaGridState _value;
  // ignore: unused_field
  final $Res Function(MediaGridState) _then;
}

/// @nodoc
abstract class _$$MediaLoadingCopyWith<$Res> {
  factory _$$MediaLoadingCopyWith(
          _$MediaLoading value, $Res Function(_$MediaLoading) then) =
      __$$MediaLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MediaLoadingCopyWithImpl<$Res>
    extends _$MediaGridStateCopyWithImpl<$Res>
    implements _$$MediaLoadingCopyWith<$Res> {
  __$$MediaLoadingCopyWithImpl(
      _$MediaLoading _value, $Res Function(_$MediaLoading) _then)
      : super(_value, (v) => _then(v as _$MediaLoading));

  @override
  _$MediaLoading get _value => super._value as _$MediaLoading;
}

/// @nodoc

class _$MediaLoading implements MediaLoading {
  const _$MediaLoading();

  @override
  String toString() {
    return 'MediaGridState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MediaLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<String> mediaList) data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> mediaList)? data,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> mediaList)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaLoading value) loading,
    required TResult Function(MediaData value) data,
    required TResult Function(_MediaError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MediaLoading value)? loading,
    TResult Function(MediaData value)? data,
    TResult Function(_MediaError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaLoading value)? loading,
    TResult Function(MediaData value)? data,
    TResult Function(_MediaError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MediaLoading implements MediaGridState {
  const factory MediaLoading() = _$MediaLoading;
}

/// @nodoc
abstract class _$$MediaDataCopyWith<$Res> {
  factory _$$MediaDataCopyWith(
          _$MediaData value, $Res Function(_$MediaData) then) =
      __$$MediaDataCopyWithImpl<$Res>;
  $Res call({List<String> mediaList});
}

/// @nodoc
class __$$MediaDataCopyWithImpl<$Res> extends _$MediaGridStateCopyWithImpl<$Res>
    implements _$$MediaDataCopyWith<$Res> {
  __$$MediaDataCopyWithImpl(
      _$MediaData _value, $Res Function(_$MediaData) _then)
      : super(_value, (v) => _then(v as _$MediaData));

  @override
  _$MediaData get _value => super._value as _$MediaData;

  @override
  $Res call({
    Object? mediaList = freezed,
  }) {
    return _then(_$MediaData(
      mediaList == freezed
          ? _value._mediaList
          : mediaList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$MediaData implements MediaData {
  const _$MediaData(final List<String> mediaList) : _mediaList = mediaList;

  final List<String> _mediaList;
  @override
  List<String> get mediaList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaList);
  }

  @override
  String toString() {
    return 'MediaGridState.data(mediaList: $mediaList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaData &&
            const DeepCollectionEquality()
                .equals(other._mediaList, _mediaList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_mediaList));

  @JsonKey(ignore: true)
  @override
  _$$MediaDataCopyWith<_$MediaData> get copyWith =>
      __$$MediaDataCopyWithImpl<_$MediaData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<String> mediaList) data,
    required TResult Function(String error) error,
  }) {
    return data(mediaList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> mediaList)? data,
    TResult Function(String error)? error,
  }) {
    return data?.call(mediaList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> mediaList)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(mediaList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaLoading value) loading,
    required TResult Function(MediaData value) data,
    required TResult Function(_MediaError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MediaLoading value)? loading,
    TResult Function(MediaData value)? data,
    TResult Function(_MediaError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaLoading value)? loading,
    TResult Function(MediaData value)? data,
    TResult Function(_MediaError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class MediaData implements MediaGridState {
  const factory MediaData(final List<String> mediaList) = _$MediaData;

  List<String> get mediaList;
  @JsonKey(ignore: true)
  _$$MediaDataCopyWith<_$MediaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MediaErrorCopyWith<$Res> {
  factory _$$_MediaErrorCopyWith(
          _$_MediaError value, $Res Function(_$_MediaError) then) =
      __$$_MediaErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_MediaErrorCopyWithImpl<$Res>
    extends _$MediaGridStateCopyWithImpl<$Res>
    implements _$$_MediaErrorCopyWith<$Res> {
  __$$_MediaErrorCopyWithImpl(
      _$_MediaError _value, $Res Function(_$_MediaError) _then)
      : super(_value, (v) => _then(v as _$_MediaError));

  @override
  _$_MediaError get _value => super._value as _$_MediaError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_MediaError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MediaError implements _MediaError {
  const _$_MediaError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'MediaGridState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_MediaErrorCopyWith<_$_MediaError> get copyWith =>
      __$$_MediaErrorCopyWithImpl<_$_MediaError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<String> mediaList) data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> mediaList)? data,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> mediaList)? data,
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
    required TResult Function(MediaLoading value) loading,
    required TResult Function(MediaData value) data,
    required TResult Function(_MediaError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MediaLoading value)? loading,
    TResult Function(MediaData value)? data,
    TResult Function(_MediaError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaLoading value)? loading,
    TResult Function(MediaData value)? data,
    TResult Function(_MediaError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _MediaError implements MediaGridState {
  const factory _MediaError(final String error) = _$_MediaError;

  String get error;
  @JsonKey(ignore: true)
  _$$_MediaErrorCopyWith<_$_MediaError> get copyWith =>
      throw _privateConstructorUsedError;
}
