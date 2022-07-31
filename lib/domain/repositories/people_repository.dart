import 'package:dartz/dartz.dart';
import 'package:people_app/commons/errors/failures.dart';
import 'package:people_app/domain/entities/person.dart';

abstract class PeopleRepository {
  Future<Either<Failure, List<Person>>> getPeople(int pageNumber);
  Future<Either<Failure, List<Person>>> getFavoritePeople();
  Future<Either<Failure, List<String>>> getPersonMedia(int personId);
}
