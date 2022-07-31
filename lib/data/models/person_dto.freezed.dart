// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'person_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonDto {
  @HiveField(PersonDtoFieldId.id)
  int get id => throw _privateConstructorUsedError;
  @HiveField(PersonDtoFieldId.name)
  String get name => throw _privateConstructorUsedError;
  @HiveField(PersonDtoFieldId.profile_path)
  String? get profile_path => throw _privateConstructorUsedError;
  @HiveField(PersonDtoFieldId.popularity)
  num get popularity => throw _privateConstructorUsedError;
  @HiveField(PersonDtoFieldId.biography)
  String? get biography => throw _privateConstructorUsedError;
  @HiveField(PersonDtoFieldId.gender)
  int? get gender => throw _privateConstructorUsedError;
  @HiveField(PersonDtoFieldId.birthday)
  String? get birthday => throw _privateConstructorUsedError;
  @HiveField(PersonDtoFieldId.known_for_department)
  String? get known_for_department => throw _privateConstructorUsedError;
  @HiveField(PersonDtoFieldId.deathday)
  String? get deathday => throw _privateConstructorUsedError;
  @HiveField(PersonDtoFieldId.also_known_as)
  List<String>? get also_known_as => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonDtoCopyWith<PersonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonDtoCopyWith<$Res> {
  factory $PersonDtoCopyWith(PersonDto value, $Res Function(PersonDto) then) =
      _$PersonDtoCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(PersonDtoFieldId.id)
          int id,
      @HiveField(PersonDtoFieldId.name)
          String name,
      @HiveField(PersonDtoFieldId.profile_path)
          String? profile_path,
      @HiveField(PersonDtoFieldId.popularity)
          num popularity,
      @HiveField(PersonDtoFieldId.biography)
          String? biography,
      @HiveField(PersonDtoFieldId.gender)
          int? gender,
      @HiveField(PersonDtoFieldId.birthday)
          String? birthday,
      @HiveField(PersonDtoFieldId.known_for_department)
          String? known_for_department,
      @HiveField(PersonDtoFieldId.deathday)
          String? deathday,
      @HiveField(PersonDtoFieldId.also_known_as)
          List<String>? also_known_as});
}

/// @nodoc
class _$PersonDtoCopyWithImpl<$Res> implements $PersonDtoCopyWith<$Res> {
  _$PersonDtoCopyWithImpl(this._value, this._then);

  final PersonDto _value;
  // ignore: unused_field
  final $Res Function(PersonDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? profile_path = freezed,
    Object? popularity = freezed,
    Object? biography = freezed,
    Object? gender = freezed,
    Object? birthday = freezed,
    Object? known_for_department = freezed,
    Object? deathday = freezed,
    Object? also_known_as = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profile_path: profile_path == freezed
          ? _value.profile_path
          : profile_path // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
      biography: biography == freezed
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      known_for_department: known_for_department == freezed
          ? _value.known_for_department
          : known_for_department // ignore: cast_nullable_to_non_nullable
              as String?,
      deathday: deathday == freezed
          ? _value.deathday
          : deathday // ignore: cast_nullable_to_non_nullable
              as String?,
      also_known_as: also_known_as == freezed
          ? _value.also_known_as
          : also_known_as // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PersonDtoCopyWith<$Res> implements $PersonDtoCopyWith<$Res> {
  factory _$$_PersonDtoCopyWith(
          _$_PersonDto value, $Res Function(_$_PersonDto) then) =
      __$$_PersonDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(PersonDtoFieldId.id)
          int id,
      @HiveField(PersonDtoFieldId.name)
          String name,
      @HiveField(PersonDtoFieldId.profile_path)
          String? profile_path,
      @HiveField(PersonDtoFieldId.popularity)
          num popularity,
      @HiveField(PersonDtoFieldId.biography)
          String? biography,
      @HiveField(PersonDtoFieldId.gender)
          int? gender,
      @HiveField(PersonDtoFieldId.birthday)
          String? birthday,
      @HiveField(PersonDtoFieldId.known_for_department)
          String? known_for_department,
      @HiveField(PersonDtoFieldId.deathday)
          String? deathday,
      @HiveField(PersonDtoFieldId.also_known_as)
          List<String>? also_known_as});
}

/// @nodoc
class __$$_PersonDtoCopyWithImpl<$Res> extends _$PersonDtoCopyWithImpl<$Res>
    implements _$$_PersonDtoCopyWith<$Res> {
  __$$_PersonDtoCopyWithImpl(
      _$_PersonDto _value, $Res Function(_$_PersonDto) _then)
      : super(_value, (v) => _then(v as _$_PersonDto));

  @override
  _$_PersonDto get _value => super._value as _$_PersonDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? profile_path = freezed,
    Object? popularity = freezed,
    Object? biography = freezed,
    Object? gender = freezed,
    Object? birthday = freezed,
    Object? known_for_department = freezed,
    Object? deathday = freezed,
    Object? also_known_as = freezed,
  }) {
    return _then(_$_PersonDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profile_path: profile_path == freezed
          ? _value.profile_path
          : profile_path // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
      biography: biography == freezed
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      known_for_department: known_for_department == freezed
          ? _value.known_for_department
          : known_for_department // ignore: cast_nullable_to_non_nullable
              as String?,
      deathday: deathday == freezed
          ? _value.deathday
          : deathday // ignore: cast_nullable_to_non_nullable
              as String?,
      also_known_as: also_known_as == freezed
          ? _value._also_known_as
          : also_known_as // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_PersonDto extends _PersonDto {
  _$_PersonDto(
      {@HiveField(PersonDtoFieldId.id)
          required this.id,
      @HiveField(PersonDtoFieldId.name)
          required this.name,
      @HiveField(PersonDtoFieldId.profile_path)
          this.profile_path,
      @HiveField(PersonDtoFieldId.popularity)
          required this.popularity,
      @HiveField(PersonDtoFieldId.biography)
          this.biography,
      @HiveField(PersonDtoFieldId.gender)
          this.gender,
      @HiveField(PersonDtoFieldId.birthday)
          this.birthday,
      @HiveField(PersonDtoFieldId.known_for_department)
          required this.known_for_department,
      @HiveField(PersonDtoFieldId.deathday)
          this.deathday,
      @HiveField(PersonDtoFieldId.also_known_as)
          required final List<String>? also_known_as})
      : _also_known_as = also_known_as,
        super._();

  @override
  @HiveField(PersonDtoFieldId.id)
  final int id;
  @override
  @HiveField(PersonDtoFieldId.name)
  final String name;
  @override
  @HiveField(PersonDtoFieldId.profile_path)
  final String? profile_path;
  @override
  @HiveField(PersonDtoFieldId.popularity)
  final num popularity;
  @override
  @HiveField(PersonDtoFieldId.biography)
  final String? biography;
  @override
  @HiveField(PersonDtoFieldId.gender)
  final int? gender;
  @override
  @HiveField(PersonDtoFieldId.birthday)
  final String? birthday;
  @override
  @HiveField(PersonDtoFieldId.known_for_department)
  final String? known_for_department;
  @override
  @HiveField(PersonDtoFieldId.deathday)
  final String? deathday;
  final List<String>? _also_known_as;
  @override
  @HiveField(PersonDtoFieldId.also_known_as)
  List<String>? get also_known_as {
    final value = _also_known_as;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PersonDto(id: $id, name: $name, profile_path: $profile_path, popularity: $popularity, biography: $biography, gender: $gender, birthday: $birthday, known_for_department: $known_for_department, deathday: $deathday, also_known_as: $also_known_as)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.profile_path, profile_path) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality().equals(other.biography, biography) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality()
                .equals(other.known_for_department, known_for_department) &&
            const DeepCollectionEquality().equals(other.deathday, deathday) &&
            const DeepCollectionEquality()
                .equals(other._also_known_as, _also_known_as));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(profile_path),
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(biography),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(known_for_department),
      const DeepCollectionEquality().hash(deathday),
      const DeepCollectionEquality().hash(_also_known_as));

  @JsonKey(ignore: true)
  @override
  _$$_PersonDtoCopyWith<_$_PersonDto> get copyWith =>
      __$$_PersonDtoCopyWithImpl<_$_PersonDto>(this, _$identity);
}

abstract class _PersonDto extends PersonDto {
  factory _PersonDto(
      {@HiveField(PersonDtoFieldId.id)
          required final int id,
      @HiveField(PersonDtoFieldId.name)
          required final String name,
      @HiveField(PersonDtoFieldId.profile_path)
          final String? profile_path,
      @HiveField(PersonDtoFieldId.popularity)
          required final num popularity,
      @HiveField(PersonDtoFieldId.biography)
          final String? biography,
      @HiveField(PersonDtoFieldId.gender)
          final int? gender,
      @HiveField(PersonDtoFieldId.birthday)
          final String? birthday,
      @HiveField(PersonDtoFieldId.known_for_department)
          required final String? known_for_department,
      @HiveField(PersonDtoFieldId.deathday)
          final String? deathday,
      @HiveField(PersonDtoFieldId.also_known_as)
          required final List<String>? also_known_as}) = _$_PersonDto;
  _PersonDto._() : super._();

  @override
  @HiveField(PersonDtoFieldId.id)
  int get id;
  @override
  @HiveField(PersonDtoFieldId.name)
  String get name;
  @override
  @HiveField(PersonDtoFieldId.profile_path)
  String? get profile_path;
  @override
  @HiveField(PersonDtoFieldId.popularity)
  num get popularity;
  @override
  @HiveField(PersonDtoFieldId.biography)
  String? get biography;
  @override
  @HiveField(PersonDtoFieldId.gender)
  int? get gender;
  @override
  @HiveField(PersonDtoFieldId.birthday)
  String? get birthday;
  @override
  @HiveField(PersonDtoFieldId.known_for_department)
  String? get known_for_department;
  @override
  @HiveField(PersonDtoFieldId.deathday)
  String? get deathday;
  @override
  @HiveField(PersonDtoFieldId.also_known_as)
  List<String>? get also_known_as;
  @override
  @JsonKey(ignore: true)
  _$$_PersonDtoCopyWith<_$_PersonDto> get copyWith =>
      throw _privateConstructorUsedError;
}
