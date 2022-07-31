import 'package:dartz/dartz.dart';
import 'package:people_app/commons/errors/failures.dart';

abstract class FutureUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class StreamUseCase<Type, Params> {
  Future<Either<Failure, Stream<Type>>> call(Params params);
}

class NoParams {}
