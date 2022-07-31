import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:people_app/commons/domain/usecases.dart';
import 'package:people_app/commons/errors/failures.dart';
import 'package:people_app/domain/entities/person.dart';
import 'package:people_app/domain/repositories/people_repository.dart';

@injectable
class GetFavoritePeople implements FutureUseCase<List<Person>, NoParams> {
  final PeopleRepository peopleRepository;

  GetFavoritePeople(this.peopleRepository);

  @override
  Future<Either<Failure, List<Person>>> call(NoParams params) async {
    return await peopleRepository.getFavoritePeople();
  }
}

@injectable
class GetFavoriteStatus implements FutureUseCase<bool, int> {
  final PeopleRepository peopleRepository;

  GetFavoriteStatus(this.peopleRepository);

  @override
  Future<Either<Failure, bool>> call(int personId) async {
    return await peopleRepository.isFavorite(personId);
  }
}

@injectable
class AddToFavorite implements FutureUseCase<void, Person> {
  final PeopleRepository peopleRepository;

  AddToFavorite(this.peopleRepository);

  @override
  Future<Either<Failure, void>> call(Person person) async {
    return await peopleRepository.addToFavorite(person);
  }
}

@injectable
class RemoveFromFavorite implements FutureUseCase<void, int> {
  final PeopleRepository peopleRepository;

  RemoveFromFavorite(this.peopleRepository);

  @override
  Future<Either<Failure, void>> call(int personId) async {
    return await peopleRepository.removeFavorite(personId);
  }
}
