// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'download_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() downloading,
    required TResult Function() notdownloading,
    required TResult Function() completed,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? downloading,
    TResult Function()? notdownloading,
    TResult Function()? completed,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? downloading,
    TResult Function()? notdownloading,
    TResult Function()? completed,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Downloading value) downloading,
    required TResult Function(NotDownloading value) notdownloading,
    required TResult Function(Completed value) completed,
    required TResult Function(DError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Downloading value)? downloading,
    TResult Function(NotDownloading value)? notdownloading,
    TResult Function(Completed value)? completed,
    TResult Function(DError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Downloading value)? downloading,
    TResult Function(NotDownloading value)? notdownloading,
    TResult Function(Completed value)? completed,
    TResult Function(DError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
          DownloadState value, $Res Function(DownloadState) then) =
      _$DownloadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  final DownloadState _value;
  // ignore: unused_field
  final $Res Function(DownloadState) _then;
}

/// @nodoc
abstract class _$$DownloadingCopyWith<$Res> {
  factory _$$DownloadingCopyWith(
          _$Downloading value, $Res Function(_$Downloading) then) =
      __$$DownloadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DownloadingCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res>
    implements _$$DownloadingCopyWith<$Res> {
  __$$DownloadingCopyWithImpl(
      _$Downloading _value, $Res Function(_$Downloading) _then)
      : super(_value, (v) => _then(v as _$Downloading));

  @override
  _$Downloading get _value => super._value as _$Downloading;
}

/// @nodoc

class _$Downloading implements Downloading {
  const _$Downloading();

  @override
  String toString() {
    return 'DownloadState.downloading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Downloading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() downloading,
    required TResult Function() notdownloading,
    required TResult Function() completed,
    required TResult Function(String error) error,
  }) {
    return downloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? downloading,
    TResult Function()? notdownloading,
    TResult Function()? completed,
    TResult Function(String error)? error,
  }) {
    return downloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? downloading,
    TResult Function()? notdownloading,
    TResult Function()? completed,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Downloading value) downloading,
    required TResult Function(NotDownloading value) notdownloading,
    required TResult Function(Completed value) completed,
    required TResult Function(DError value) error,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Downloading value)? downloading,
    TResult Function(NotDownloading value)? notdownloading,
    TResult Function(Completed value)? completed,
    TResult Function(DError value)? error,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Downloading value)? downloading,
    TResult Function(NotDownloading value)? notdownloading,
    TResult Function(Completed value)? completed,
    TResult Function(DError value)? error,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class Downloading implements DownloadState {
  const factory Downloading() = _$Downloading;
}

/// @nodoc
abstract class _$$NotDownloadingCopyWith<$Res> {
  factory _$$NotDownloadingCopyWith(
          _$NotDownloading value, $Res Function(_$NotDownloading) then) =
      __$$NotDownloadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotDownloadingCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res>
    implements _$$NotDownloadingCopyWith<$Res> {
  __$$NotDownloadingCopyWithImpl(
      _$NotDownloading _value, $Res Function(_$NotDownloading) _then)
      : super(_value, (v) => _then(v as _$NotDownloading));

  @override
  _$NotDownloading get _value => super._value as _$NotDownloading;
}

/// @nodoc

class _$NotDownloading implements NotDownloading {
  const _$NotDownloading();

  @override
  String toString() {
    return 'DownloadState.notdownloading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotDownloading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() downloading,
    required TResult Function() notdownloading,
    required TResult Function() completed,
    required TResult Function(String error) error,
  }) {
    return notdownloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? downloading,
    TResult Function()? notdownloading,
    TResult Function()? completed,
    TResult Function(String error)? error,
  }) {
    return notdownloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? downloading,
    TResult Function()? notdownloading,
    TResult Function()? completed,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (notdownloading != null) {
      return notdownloading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Downloading value) downloading,
    required TResult Function(NotDownloading value) notdownloading,
    required TResult Function(Completed value) completed,
    required TResult Function(DError value) error,
  }) {
    return notdownloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Downloading value)? downloading,
    TResult Function(NotDownloading value)? notdownloading,
    TResult Function(Completed value)? completed,
    TResult Function(DError value)? error,
  }) {
    return notdownloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Downloading value)? downloading,
    TResult Function(NotDownloading value)? notdownloading,
    TResult Function(Completed value)? completed,
    TResult Function(DError value)? error,
    required TResult orElse(),
  }) {
    if (notdownloading != null) {
      return notdownloading(this);
    }
    return orElse();
  }
}

abstract class NotDownloading implements DownloadState {
  const factory NotDownloading() = _$NotDownloading;
}

/// @nodoc
abstract class _$$CompletedCopyWith<$Res> {
  factory _$$CompletedCopyWith(
          _$Completed value, $Res Function(_$Completed) then) =
      __$$CompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletedCopyWithImpl<$Res> extends _$DownloadStateCopyWithImpl<$Res>
    implements _$$CompletedCopyWith<$Res> {
  __$$CompletedCopyWithImpl(
      _$Completed _value, $Res Function(_$Completed) _then)
      : super(_value, (v) => _then(v as _$Completed));

  @override
  _$Completed get _value => super._value as _$Completed;
}

/// @nodoc

class _$Completed implements Completed {
  const _$Completed();

  @override
  String toString() {
    return 'DownloadState.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Completed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() downloading,
    required TResult Function() notdownloading,
    required TResult Function() completed,
    required TResult Function(String error) error,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? downloading,
    TResult Function()? notdownloading,
    TResult Function()? completed,
    TResult Function(String error)? error,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? downloading,
    TResult Function()? notdownloading,
    TResult Function()? completed,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Downloading value) downloading,
    required TResult Function(NotDownloading value) notdownloading,
    required TResult Function(Completed value) completed,
    required TResult Function(DError value) error,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Downloading value)? downloading,
    TResult Function(NotDownloading value)? notdownloading,
    TResult Function(Completed value)? completed,
    TResult Function(DError value)? error,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Downloading value)? downloading,
    TResult Function(NotDownloading value)? notdownloading,
    TResult Function(Completed value)? completed,
    TResult Function(DError value)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class Completed implements DownloadState {
  const factory Completed() = _$Completed;
}

/// @nodoc
abstract class _$$DErrorCopyWith<$Res> {
  factory _$$DErrorCopyWith(_$DError value, $Res Function(_$DError) then) =
      __$$DErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$DErrorCopyWithImpl<$Res> extends _$DownloadStateCopyWithImpl<$Res>
    implements _$$DErrorCopyWith<$Res> {
  __$$DErrorCopyWithImpl(_$DError _value, $Res Function(_$DError) _then)
      : super(_value, (v) => _then(v as _$DError));

  @override
  _$DError get _value => super._value as _$DError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$DError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DError implements DError {
  const _$DError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'DownloadState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$DErrorCopyWith<_$DError> get copyWith =>
      __$$DErrorCopyWithImpl<_$DError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() downloading,
    required TResult Function() notdownloading,
    required TResult Function() completed,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? downloading,
    TResult Function()? notdownloading,
    TResult Function()? completed,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? downloading,
    TResult Function()? notdownloading,
    TResult Function()? completed,
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
    required TResult Function(Downloading value) downloading,
    required TResult Function(NotDownloading value) notdownloading,
    required TResult Function(Completed value) completed,
    required TResult Function(DError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Downloading value)? downloading,
    TResult Function(NotDownloading value)? notdownloading,
    TResult Function(Completed value)? completed,
    TResult Function(DError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Downloading value)? downloading,
    TResult Function(NotDownloading value)? notdownloading,
    TResult Function(Completed value)? completed,
    TResult Function(DError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DError implements DownloadState {
  const factory DError(final String error) = _$DError;

  String get error;
  @JsonKey(ignore: true)
  _$$DErrorCopyWith<_$DError> get copyWith =>
      throw _privateConstructorUsedError;
}
