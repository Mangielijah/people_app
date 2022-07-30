import 'package:injectable/injectable.dart';
import 'package:people_app/commons/network/api_client.dart';
import 'package:people_app/data/models/person_dto.dart';

abstract class PeopleRemoteDataSource {
  Future<List<PersonDto>> getPeople(int page);
  Future<PersonDto> getPersonDetail(int personId);
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
}
