import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:people_app/domain/usecases/get_popular_people.dart';
import 'package:people_app/domain/usecases/params/get_people_param.dart';
import 'package:people_app/presentation/state/home/home_state.dart';

@injectable
class HomeStateNotifier extends StateNotifier<HomeState> {
  GetPeople getPeople;
  // We initialize the list of people
  HomeStateNotifier(this.getPeople) : super(const HomeState.loading(1)) {
    _init();
  }

  // Let's initialize people
  void _init() async {
    final result =
        await getPeople(GetPeopleParams(page_number: state.page_number));
    final people = result.getOrElse(() => []);
    if (people.isEmpty) {
      state = HomeState.error(state.page_number, 'Failed to fetch people');
    } else {
      state = HomeState.data(state.page_number, people);
    }
  }

  void loadMore({int? retryCount}) async {
    if (state.page_number < 500 && (retryCount == null || retryCount < 3)) {
      final result =
          await getPeople(GetPeopleParams(page_number: state.page_number + 1));
      final people = result.getOrElse(() => []);
      if (people.isNotEmpty) {
        state = (state as Data).copyWith(
          page_number: state.page_number + 1,
          people: [...(state as Data).people, ...people],
          error: null,
        );
      } else {
        Future.delayed(
          const Duration(seconds: 1),
          () => loadMore(retryCount: (retryCount == null) ? 1 : retryCount + 1),
        );
      }
    } else {
      if (state.page_number < 500) {
        state = (state as Data)
            .copyWith(error: "Network Error Could Not Load More Data");
      } else {
        state =
            (state as Data).copyWith(error: "Your Reached The End of the Page");
      }
    }
  }
}
