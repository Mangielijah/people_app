import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:people_app/domain/entities/person.dart';

part 'favorite_tab_state.freezed.dart';

@freezed
class FavoriteTabState with _$FavoriteTabState {
  // const factory FavoriteTabState.initial() = _Initial;
  const factory FavoriteTabState.loading() = LoadingFav;
  const factory FavoriteTabState.data(List<Person> people) = FavoriteList;
  const factory FavoriteTabState.error(String error) = _FavError;
}
