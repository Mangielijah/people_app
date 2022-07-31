import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:people_app/commons/network/api_exceptions.dart';
import 'package:people_app/commons/network/network_info.dart';
import 'package:people_app/data/datasources/people_local_datasource.dart';
import 'package:people_app/data/datasources/people_remote_datasource.dart';
import 'package:people_app/data/memory/in_memory_cache.dart';
import 'package:people_app/data/models/person_dto.dart';
import 'package:people_app/domain/entities/person.dart';
import 'package:people_app/commons/errors/failures.dart';
import 'package:people_app/domain/repositories/people_repository.dart';

@LazySingleton(as: PeopleRepository)
class PeopleRepositoryImpl implements PeopleRepository {
  final NetworkInfo networkInfo;
  final InMemoryCache inMemoryCache;
  final PeopleRemoteDataSource remoteDataSource;
  final PeopleLocalDataSource localDataSource;
  PeopleRepositoryImpl({
    required this.networkInfo,
    required this.inMemoryCache,
    required this.remoteDataSource,
    required this.localDataSource,
  });
  @override
  Future<Either<Failure, List<Person>>> getFavoritePeople() {
    // TODO: implement getFavoritePeople
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Person>>> getPeople(int pageNumber) async {
    return await networkInfo.isConnected
        ? _getPeopleFromNetwork(pageNumber)
        : _getPeopleFromStorage(pageNumber);
  }

  Future<Either<Failure, List<Person>>> _getPeopleFromNetwork(
      int pageNumber) async {
    try {
      final pList = (await remoteDataSource.getPeople(pageNumber));
      final List<PersonDto> peopleList = [];
      for (final person in pList) {
        final p = await remoteDataSource.getPersonDetail(person.id);
        peopleList.add(p);
      }
      if (pageNumber == 1 && inMemoryCache.currentSavedPages < 1) {
        await localDataSource.savePeople(peopleList, pageNumber);
      }
      final people = peopleList.map((p) => p.toDomain()).toList();
      if (inMemoryCache.isEmpty) {
        inMemoryCache.save(data: people, page: pageNumber);
      }
      return Right(people);
    } on ApiException {
      try {
        return _getPeopleFromStorage(pageNumber);
      } catch (e) {
        return Left(ServerFailure(errorMessage: e.toString()));
      }
    } catch (e) {
      return const Left(
          NetworkFailure(errorMessage: "Check Internet Connectivity"));
    }
  }

  Future<Either<Failure, List<Person>>> _getPeopleFromStorage(
      int pageNumber) async {
    try {
      if (inMemoryCache.isEmpty) {
        final peopleList = await localDataSource.getPeople();
        final people = peopleList.map((p) => p.toDomain()).toList();
        inMemoryCache.save(data: people, page: pageNumber);
        return Right(people);
      } else {
        // final people = inMemoryCache.getCachedValue();
        // return Right(people);
        return const Left(CacheFailure());
      }
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<String>>> getPersonMedia(int personId) async {
    try {
      final mediaList = (await remoteDataSource.getPersonMedia(personId));
      return Right(mediaList);
    } on ApiException catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    } catch (e) {
      return const Left(
          NetworkFailure(errorMessage: "Check Internet Connectivity"));
    }
  }

  @override
  Future<Either<Failure, bool>> downloadMedia(String filename) async {
    try {
      final mediaList = (await remoteDataSource.downloadMedia(filename));
      return Right(mediaList);
    } on ApiException catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    } catch (e) {
      return const Left(
          NetworkFailure(errorMessage: "Check Internet Connectivity"));
    }
  }
}
