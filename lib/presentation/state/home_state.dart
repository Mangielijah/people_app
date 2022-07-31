import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:people_app/domain/entities/person.dart';

/*
class HomeState {
  final bool isLoading;
  final List<Person> people;
  final String errorMessage;

  HomeState({
    this.isLoading = false,
    List<Character> charactersList,
    this.errorMessage = '',
  }) : this.charactersList = charactersList;

  HomeState copyWith({
    bool isLoading,
    List<Character> charactersList,
    String errorMessage,
  }) =>
      HomeState(
        isLoading: isLoading ?? this.isLoading,
        charactersList: charactersList,
        errorMessage: errorMessage ?? this.errorMessage,
      );
}*/
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  // const factory HomeState.initial() = _Initial;
  const factory HomeState.loading(int page_number) = Loading;
  const factory HomeState.data(int page_number, List<Person> people,
      {String? error}) = Data;
  const factory HomeState.error(int page_number, String error) = _Error;
}
