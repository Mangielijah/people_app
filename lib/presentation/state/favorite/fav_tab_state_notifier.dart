import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:people_app/commons/domain/usecases.dart';
import 'package:people_app/domain/usecases/favorite_people.dart';
import 'package:people_app/presentation/state/favorite/favorite_tab_state.dart';

@injectable
class FavTabNotifier extends StateNotifier<FavoriteTabState> {
  GetFavoritePeople getFavPeople;
  // We initialize the list of people
  FavTabNotifier(this.getFavPeople) : super(const FavoriteTabState.loading()) {
    _init();
  }

  // Let's initialize people
  void _init() async {
    final result = await getFavPeople(NoParams());
    final people = result.getOrElse(() => []);
    if (people.isEmpty) {
      state = const FavoriteTabState.error('Failed to fetch people');
    } else {
      state = FavoriteTabState.data(people);
    }
  }
}
