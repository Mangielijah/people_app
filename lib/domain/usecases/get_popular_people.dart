import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:people_app/commons/domain/usecases.dart';
import 'package:people_app/commons/errors/failures.dart';
import 'package:people_app/domain/entities/person.dart';
import 'package:people_app/domain/repositories/people_repository.dart';
import 'package:people_app/domain/usecases/params/get_people_param.dart';

@injectable
class GetPeople implements FutureUseCase<List<Person>, GetPeopleParams> {
  final PeopleRepository peopleRepository;

  GetPeople(this.peopleRepository);

  @override
  Future<Either<Failure, List<Person>>> call(GetPeopleParams params) async {
    return await peopleRepository.getPeople(params.page_number);
  }
}
