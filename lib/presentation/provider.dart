import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:people_app/domain/usecases/get_person_media.dart';
import 'package:people_app/presentation/state/home/home_state.dart';
import 'package:people_app/presentation/state/home/home_state_notifier.dart';
import 'package:people_app/presentation/state/media/media_grid_state.dart';
import 'package:people_app/presentation/state/media/media_notifier.dart';
import 'package:people_app/service_locator.dart';

final homeStateProvider = StateNotifierProvider<HomeStateNotifier, HomeState>(
    ((ref) => serviceLocator<HomeStateNotifier>()));

final mediaGridStateProvider =
    StateNotifierProvider.family<MediaGridNotifier, MediaGridState, int>(
  ((ref, personId) =>
      MediaGridNotifier(serviceLocator<GetPersonMedia>(), personId)),
);
