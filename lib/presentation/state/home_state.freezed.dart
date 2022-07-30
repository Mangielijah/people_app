// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  int get page_number => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page_number) loading,
    required TResult Function(int page_number, List<Person> people) data,
    required TResult Function(int page_number, String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page_number)? loading,
    TResult Function(int page_number, List<Person> people)? data,
    TResult Function(int page_number, String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page_number)? loading,
    TResult Function(int page_number, List<Person> people)? data,
    TResult Function(int page_number, String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({int page_number});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? page_number = freezed,
  }) {
    return _then(_value.copyWith(
      page_number: page_number == freezed
          ? _value.page_number
          : page_number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({int page_number});
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;

  @override
  $Res call({
    Object? page_number = freezed,
  }) {
    return _then(_$Loading(
      page_number == freezed
          ? _value.page_number
          : page_number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading(this.page_number);

  @override
  final int page_number;

  @override
  String toString() {
    return 'HomeState.loading(page_number: $page_number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loading &&
            const DeepCollectionEquality()
                .equals(other.page_number, page_number));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(page_number));

  @JsonKey(ignore: true)
  @override
  _$$LoadingCopyWith<_$Loading> get copyWith =>
      __$$LoadingCopyWithImpl<_$Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page_number) loading,
    required TResult Function(int page_number, List<Person> people) data,
    required TResult Function(int page_number, String error) error,
  }) {
    return loading(page_number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page_number)? loading,
    TResult Function(int page_number, List<Person> people)? data,
    TResult Function(int page_number, String error)? error,
  }) {
    return loading?.call(page_number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page_number)? loading,
    TResult Function(int page_number, List<Person> people)? data,
    TResult Function(int page_number, String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(page_number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements HomeState {
  const factory Loading(final int page_number) = _$Loading;

  @override
  int get page_number;
  @override
  @JsonKey(ignore: true)
  _$$LoadingCopyWith<_$Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
  @override
  $Res call({int page_number, List<Person> people});
}

/// @nodoc
class __$$DataCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;

  @override
  $Res call({
    Object? page_number = freezed,
    Object? people = freezed,
  }) {
    return _then(_$Data(
      page_number == freezed
          ? _value.page_number
          : page_number // ignore: cast_nullable_to_non_nullable
              as int,
      people == freezed
          ? _value._people
          : people // ignore: cast_nullable_to_non_nullable
              as List<Person>,
    ));
  }
}

/// @nodoc

class _$Data implements Data {
  const _$Data(this.page_number, final List<Person> people) : _people = people;

  @override
  final int page_number;
  final List<Person> _people;
  @override
  List<Person> get people {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_people);
  }

  @override
  String toString() {
    return 'HomeState.data(page_number: $page_number, people: $people)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data &&
            const DeepCollectionEquality()
                .equals(other.page_number, page_number) &&
            const DeepCollectionEquality().equals(other._people, _people));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page_number),
      const DeepCollectionEquality().hash(_people));

  @JsonKey(ignore: true)
  @override
  _$$DataCopyWith<_$Data> get copyWith =>
      __$$DataCopyWithImpl<_$Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page_number) loading,
    required TResult Function(int page_number, List<Person> people) data,
    required TResult Function(int page_number, String error) error,
  }) {
    return data(page_number, people);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page_number)? loading,
    TResult Function(int page_number, List<Person> people)? data,
    TResult Function(int page_number, String error)? error,
  }) {
    return data?.call(page_number, people);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page_number)? loading,
    TResult Function(int page_number, List<Person> people)? data,
    TResult Function(int page_number, String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(page_number, people);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data implements HomeState {
  const factory Data(final int page_number, final List<Person> people) = _$Data;

  @override
  int get page_number;
  List<Person> get people;
  @override
  @JsonKey(ignore: true)
  _$$DataCopyWith<_$Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  $Res call({int page_number, String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? page_number = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Error(
      page_number == freezed
          ? _value.page_number
          : page_number // ignore: cast_nullable_to_non_nullable
              as int,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.page_number, this.error);

  @override
  final int page_number;
  @override
  final String error;

  @override
  String toString() {
    return 'HomeState.error(page_number: $page_number, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality()
                .equals(other.page_number, page_number) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page_number),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page_number) loading,
    required TResult Function(int page_number, List<Person> people) data,
    required TResult Function(int page_number, String error) error,
  }) {
    return error(page_number, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page_number)? loading,
    TResult Function(int page_number, List<Person> people)? data,
    TResult Function(int page_number, String error)? error,
  }) {
    return error?.call(page_number, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page_number)? loading,
    TResult Function(int page_number, List<Person> people)? data,
    TResult Function(int page_number, String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(page_number, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeState {
  const factory _Error(final int page_number, final String error) = _$_Error;

  @override
  int get page_number;
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
