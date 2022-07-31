import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:people_app/commons/domain/usecases.dart';
import 'package:people_app/commons/errors/failures.dart';
import 'package:people_app/domain/repositories/people_repository.dart';

@injectable
class GetPersonMedia implements FutureUseCase<List<String>, int> {
  final PeopleRepository peopleRepository;

  GetPersonMedia(this.peopleRepository);

  @override
  Future<Either<Failure, List<String>>> call(int personId) async {
    return await peopleRepository.getPersonMedia(personId);
  }
}
