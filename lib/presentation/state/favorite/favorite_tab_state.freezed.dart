// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_tab_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteTabState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Person> people) data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Person> people)? data,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Person> people)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingFav value) loading,
    required TResult Function(FavoriteList value) data,
    required TResult Function(_FavError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingFav value)? loading,
    TResult Function(FavoriteList value)? data,
    TResult Function(_FavError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFav value)? loading,
    TResult Function(FavoriteList value)? data,
    TResult Function(_FavError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteTabStateCopyWith<$Res> {
  factory $FavoriteTabStateCopyWith(
          FavoriteTabState value, $Res Function(FavoriteTabState) then) =
      _$FavoriteTabStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteTabStateCopyWithImpl<$Res>
    implements $FavoriteTabStateCopyWith<$Res> {
  _$FavoriteTabStateCopyWithImpl(this._value, this._then);

  final FavoriteTabState _value;
  // ignore: unused_field
  final $Res Function(FavoriteTabState) _then;
}

/// @nodoc
abstract class _$$LoadingFavCopyWith<$Res> {
  factory _$$LoadingFavCopyWith(
          _$LoadingFav value, $Res Function(_$LoadingFav) then) =
      __$$LoadingFavCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingFavCopyWithImpl<$Res>
    extends _$FavoriteTabStateCopyWithImpl<$Res>
    implements _$$LoadingFavCopyWith<$Res> {
  __$$LoadingFavCopyWithImpl(
      _$LoadingFav _value, $Res Function(_$LoadingFav) _then)
      : super(_value, (v) => _then(v as _$LoadingFav));

  @override
  _$LoadingFav get _value => super._value as _$LoadingFav;
}

/// @nodoc

class _$LoadingFav implements LoadingFav {
  const _$LoadingFav();

  @override
  String toString() {
    return 'FavoriteTabState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingFav);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Person> people) data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Person> people)? data,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Person> people)? data,
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
    required TResult Function(LoadingFav value) loading,
    required TResult Function(FavoriteList value) data,
    required TResult Function(_FavError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingFav value)? loading,
    TResult Function(FavoriteList value)? data,
    TResult Function(_FavError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFav value)? loading,
    TResult Function(FavoriteList value)? data,
    TResult Function(_FavError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingFav implements FavoriteTabState {
  const factory LoadingFav() = _$LoadingFav;
}

/// @nodoc
abstract class _$$FavoriteListCopyWith<$Res> {
  factory _$$FavoriteListCopyWith(
          _$FavoriteList value, $Res Function(_$FavoriteList) then) =
      __$$FavoriteListCopyWithImpl<$Res>;
  $Res call({List<Person> people});
}

/// @nodoc
class __$$FavoriteListCopyWithImpl<$Res>
    extends _$FavoriteTabStateCopyWithImpl<$Res>
    implements _$$FavoriteListCopyWith<$Res> {
  __$$FavoriteListCopyWithImpl(
      _$FavoriteList _value, $Res Function(_$FavoriteList) _then)
      : super(_value, (v) => _then(v as _$FavoriteList));

  @override
  _$FavoriteList get _value => super._value as _$FavoriteList;

  @override
  $Res call({
    Object? people = freezed,
  }) {
    return _then(_$FavoriteList(
      people == freezed
          ? _value._people
          : people // ignore: cast_nullable_to_non_nullable
              as List<Person>,
    ));
  }
}

/// @nodoc

class _$FavoriteList implements FavoriteList {
  const _$FavoriteList(final List<Person> people) : _people = people;

  final List<Person> _people;
  @override
  List<Person> get people {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_people);
  }

  @override
  String toString() {
    return 'FavoriteTabState.data(people: $people)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteList &&
            const DeepCollectionEquality().equals(other._people, _people));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_people));

  @JsonKey(ignore: true)
  @override
  _$$FavoriteListCopyWith<_$FavoriteList> get copyWith =>
      __$$FavoriteListCopyWithImpl<_$FavoriteList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Person> people) data,
    required TResult Function(String error) error,
  }) {
    return data(people);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Person> people)? data,
    TResult Function(String error)? error,
  }) {
    return data?.call(people);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Person> people)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(people);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingFav value) loading,
    required TResult Function(FavoriteList value) data,
    required TResult Function(_FavError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingFav value)? loading,
    TResult Function(FavoriteList value)? data,
    TResult Function(_FavError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFav value)? loading,
    TResult Function(FavoriteList value)? data,
    TResult Function(_FavError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class FavoriteList implements FavoriteTabState {
  const factory FavoriteList(final List<Person> people) = _$FavoriteList;

  List<Person> get people;
  @JsonKey(ignore: true)
  _$$FavoriteListCopyWith<_$FavoriteList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FavErrorCopyWith<$Res> {
  factory _$$_FavErrorCopyWith(
          _$_FavError value, $Res Function(_$_FavError) then) =
      __$$_FavErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_FavErrorCopyWithImpl<$Res>
    extends _$FavoriteTabStateCopyWithImpl<$Res>
    implements _$$_FavErrorCopyWith<$Res> {
  __$$_FavErrorCopyWithImpl(
      _$_FavError _value, $Res Function(_$_FavError) _then)
      : super(_value, (v) => _then(v as _$_FavError));

  @override
  _$_FavError get _value => super._value as _$_FavError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_FavError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FavError implements _FavError {
  const _$_FavError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'FavoriteTabState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_FavErrorCopyWith<_$_FavError> get copyWith =>
      __$$_FavErrorCopyWithImpl<_$_FavError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Person> people) data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Person> people)? data,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Person> people)? data,
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
    required TResult Function(LoadingFav value) loading,
    required TResult Function(FavoriteList value) data,
    required TResult Function(_FavError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingFav value)? loading,
    TResult Function(FavoriteList value)? data,
    TResult Function(_FavError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFav value)? loading,
    TResult Function(FavoriteList value)? data,
    TResult Function(_FavError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FavError implements FavoriteTabState {
  const factory _FavError(final String error) = _$_FavError;

  String get error;
  @JsonKey(ignore: true)
  _$$_FavErrorCopyWith<_$_FavError> get copyWith =>
      throw _privateConstructorUsedError;
}
