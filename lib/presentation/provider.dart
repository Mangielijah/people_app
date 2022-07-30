import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:people_app/presentation/state/home_state.dart';
import 'package:people_app/presentation/state/home_state_notifier.dart';
import 'package:people_app/service_locator.dart';

final homeStateProvider = StateNotifierProvider<HomeStateNotifier, HomeState>(
    ((ref) => serviceLocator<HomeStateNotifier>()));
