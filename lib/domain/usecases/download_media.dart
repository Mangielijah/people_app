import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:people_app/commons/domain/usecases.dart';
import 'package:people_app/commons/errors/failures.dart';
import 'package:people_app/domain/repositories/people_repository.dart';

@injectable
class DownloadMedia implements FutureUseCase<bool, String> {
  final PeopleRepository peopleRepository;

  DownloadMedia(this.peopleRepository);

  @override
  Future<Either<Failure, bool>> call(String filename) {
    return (peopleRepository.downloadMedia(filename));
  }
}
