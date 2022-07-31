import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:people_app/domain/usecases/get_person_media.dart';
import 'package:people_app/domain/entities/person.dart';
import 'package:people_app/presentation/state/download/download_notifier.dart';
import 'package:people_app/presentation/state/favorite/favorite_notifier.dart';
import 'package:people_app/presentation/state/home/home_state.dart';
import 'package:people_app/presentation/state/home/home_state_notifier.dart';
import 'package:people_app/presentation/state/media/media_grid_state.dart';
import 'package:people_app/presentation/state/media/media_notifier.dart';
import 'package:people_app/domain/usecases/download_media.dart';
import 'package:people_app/presentation/state/download/download_state.dart';
import 'package:people_app/domain/usecases/favorite_people.dart';
import 'package:people_app/presentation/state/favorite/favorite_widget_state.dart';
import 'package:people_app/presentation/state/favorite/fav_tab_state_notifier.dart';
import 'package:people_app/presentation/state/favorite/favorite_tab_state.dart';
import 'package:people_app/service_locator.dart';

final homeStateProvider = StateNotifierProvider<HomeStateNotifier, HomeState>(
    ((ref) => serviceLocator<HomeStateNotifier>()));

final mediaGridStateProvider =
    StateNotifierProvider.family<MediaGridNotifier, MediaGridState, int>(
  ((ref, personId) =>
      MediaGridNotifier(serviceLocator<GetPersonMedia>(), personId)),
);
final downloadStateProvider =
    StateNotifierProvider.family<DownloadNotifier, DownloadState, String>(
  ((ref, filename) =>
      DownloadNotifier(serviceLocator<DownloadMedia>(), filename)),
);

final favoriteStatusProvider =
    StateNotifierProvider.family<FavoriteWidgetNotifier, LikeState, Person>(
  ((ref, person) => FavoriteWidgetNotifier(
      serviceLocator<GetFavoriteStatus>(),
      serviceLocator<AddToFavorite>(),
      serviceLocator<RemoveFromFavorite>(),
      person)),
);
final favoriteTabProvider =
    StateNotifierProvider<FavTabNotifier, FavoriteTabState>(
  ((ref) => serviceLocator<FavTabNotifier>()),
);
