import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:people_app/domain/entities/person.dart';
import 'package:people_app/domain/usecases/favorite_people.dart';
import 'package:people_app/presentation/provider.dart';
import 'package:people_app/presentation/state/favorite/favorite_widget_state.dart';

class FavoriteWidgetNotifier extends StateNotifier<LikeState> {
  GetFavoriteStatus favoriteStatus;
  AddToFavorite addToFavorite;
  RemoveFromFavorite removeFromFavorite;
  Person person;
  StateNotifierProviderRef ref;
  FavoriteWidgetNotifier(
    this.favoriteStatus,
    this.addToFavorite,
    this.removeFromFavorite,
    this.person,
    this.ref,
  ) : super(const LikeState.no()) {
    _load();
  }

  Future<void> _load() async {
    final result = await favoriteStatus(person.id);
    result.fold(
      (l) {
        state = const LikeState.no();
      },
      (status) {
        if (status) {
          state = const LikeState.yes();
        } else {
          state = const LikeState.no();
        }
      },
    );
  }

  Future<void> favorite() async {
    state.when(yes: () {
      //remove favorite
      removeFromFavorite(person.id);
      state = const LikeState.no();
      ref.read(favoriteTabProvider.notifier).removePerson(person);
    }, no: () {
      //add favorite
      addToFavorite(person);
      state = const LikeState.yes();
      ref.read(favoriteTabProvider.notifier).addPerson(person);
    });
  }
}
