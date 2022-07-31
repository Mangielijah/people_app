import 'package:injectable/injectable.dart';
import 'package:people_app/commons/network/api_client.dart';
import 'package:people_app/data/models/person_dto.dart';

abstract class PeopleRemoteDataSource {
  Future<List<PersonDto>> getPeople(int page);
  Future<PersonDto> getPersonDetail(int personId);
  Future<List<String>> getPersonMedia(int personId);
  Future<bool> downloadMedia(String filename);
}

@Injectable(as: PeopleRemoteDataSource)
class PeopleRemoteDataSourceImple implements PeopleRemoteDataSource {
  final ApiClient apiClient;
  PeopleRemoteDataSourceImple({required this.apiClient});
  @override
  Future<List<PersonDto>> getPeople(int page) async {
    try {
      final people = await apiClient.getPeople(page: page);
      return people;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PersonDto> getPersonDetail(int personId) async {
    try {
      final person = await apiClient.getPerson(person_id: personId);
      return person;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<String>> getPersonMedia(int personId) async {
    try {
      final mediaList = await apiClient.getPersonMedia(personId);
      return mediaList;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> downloadMedia(String filename) async {
    try {
      final completed = await apiClient.downloadFile(filename);
      return completed;
    } catch (e) {
      rethrow;
    }
  }
}
