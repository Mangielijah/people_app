import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';

@freezed
class Person with _$Person {
  const Person._();
  factory Person({
    required int id,
    required String name,
    String? profile_path,
    required num popularity,
    String? biography,
    int? gender,
    String? birthday,
    String? known_for_department,
    String? deathday,
    List<String>? also_known_as,
  }) = _Person;
}
