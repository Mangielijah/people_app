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
