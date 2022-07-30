import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:people_app/domain/entities/person.dart';

part 'person_dto.freezed.dart';
part 'person_dto.g.dart';

class PersonDtoFieldId {
  static const int id = 0;
  static const int name = 1;
  static const int profile_path = 2;
  static const int popularity = 3;
  static const int biography = 4;
  static const int gender = 5;
  static const int birthday = 6;
  static const int known_for_department = 7;
  static const int deathday = 8;
  static const int also_known_as = 9;
}

@freezed
@HiveType(typeId: 0, adapterName: 'PersonDTOAdapter')
@JsonSerializable(
    explicitToJson: true, createFactory: true, includeIfNull: false)
class PersonDto with _$PersonDto {
  const PersonDto._();
  factory PersonDto({
    @HiveField(PersonDtoFieldId.id) required int id,
    @HiveField(PersonDtoFieldId.name) required String name,
    @HiveField(PersonDtoFieldId.profile_path) required String profile_path,
    @HiveField(PersonDtoFieldId.popularity) required num popularity,
    @HiveField(PersonDtoFieldId.biography) String? biography,
    @HiveField(PersonDtoFieldId.gender) int? gender,
    @HiveField(PersonDtoFieldId.birthday) required String? birthday,
    @HiveField(PersonDtoFieldId.known_for_department)
        required String? known_for_department,
    @HiveField(PersonDtoFieldId.deathday) required String? deathday,
    @HiveField(PersonDtoFieldId.also_known_as)
        required List<String>? also_known_as,
  }) = _PersonDto;

  factory PersonDto.fromJson(Map<String, dynamic> json) {
    return _$PersonDtoFromJson(json);
  }

  factory PersonDto.fromDomain(Person usr) {
    return PersonDto(
        id: usr.id,
        name: usr.name,
        profile_path: usr.profile_path,
        popularity: usr.popularity,
        biography: usr.biography,
        gender: usr.gender,
        birthday: usr.birthday,
        known_for_department: usr.known_for_department,
        deathday: usr.deathday,
        also_known_as: usr.also_known_as);
  }

  Person toDomain() {
    return Person(
      id: id,
      name: name,
      profile_path: profile_path,
      popularity: popularity,
      biography: biography,
      gender: gender,
      birthday: birthday,
      known_for_department: known_for_department,
      deathday: deathday,
      also_known_as: also_known_as,
    );
  }

  Map<String, dynamic> toJson() {
    return _$PersonDtoToJson(this);
  }
}
