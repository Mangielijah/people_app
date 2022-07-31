import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:people_app/commons/errors/exceptions.dart';
import 'package:people_app/data/models/person_dto.dart';

const String PEOPLE_BOX = "PEOPLE_BOX";
const String FAVORITE_BOX = "FAVORITE_BOX";

abstract class PeopleLocalDataSource {
  Future<List<PersonDto>> getPeople();
  Future<void> savePeople(List<PersonDto> people, int page);
  Future<List<PersonDto>> getFavorites();
  Future<void> removeFromFavorite(int personId);
  Future<void> addToFavorite(PersonDto person);
  Future<bool> checkFavoriteStatus(int personId);
}

@Injectable(as: PeopleLocalDataSource)
class PeopleLocalDataSourceImpl implements PeopleLocalDataSource {
  @override
  Future<List<PersonDto>> getFavorites() async {
    try {
      final favBox = await Hive.openBox(FAVORITE_BOX);
      final favorites = favBox.values.map((p) => p as PersonDto).toList();
      return favorites;
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> addToFavorite(PersonDto person) async {
    try {
      final favBox = await Hive.openBox(FAVORITE_BOX);
      await favBox.put(person.id, person);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> removeFromFavorite(int personId) async {
    try {
      final favBox = await Hive.openBox(FAVORITE_BOX);
      await favBox.delete(personId);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<bool> checkFavoriteStatus(int personId) async {
    try {
      final favBox = await Hive.openBox(FAVORITE_BOX);
      return favBox.containsKey(personId);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<PersonDto>> getPeople() async {
    if (Hive.isBoxOpen(PEOPLE_BOX)) {
      try {
        List<PersonDto> people = (Hive.box(PEOPLE_BOX).get(1) as List)
            .map((p) => p as PersonDto)
            .toList();
        return people;
      } catch (e) {
        throw CacheException();
      }
    } else {
      try {
        final peopleBox = await Hive.openBox(PEOPLE_BOX);
        final people =
            (peopleBox.get(1) as List).map((p) => p as PersonDto).toList();
        return people;
      } catch (e) {
        throw CacheException();
      }
    }
  }

  @override
  Future<void> savePeople(List<PersonDto> people, int page) async {
    try {
      final peopleBox = await Hive.openBox(PEOPLE_BOX);
      peopleBox.put(page, people);
    } catch (e) {
      throw CacheException();
    }
  }
}
