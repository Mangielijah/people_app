import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.network({String? errorMessage}) = NetworkFailure;
  const factory Failure.cache({String? errorMessage}) = CacheFailure;
  const factory Failure.server({String? errorMessage}) = ServerFailure;
}
