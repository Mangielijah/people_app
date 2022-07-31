import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:people_app/domain/entities/person.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  // const factory HomeState.initial() = _Initial;
  const factory HomeState.loading(int page_number) = Loading;
  const factory HomeState.data(int page_number, List<Person> people,
      {String? error}) = Data;
  const factory HomeState.error(int page_number, String error) = _Error;
}
