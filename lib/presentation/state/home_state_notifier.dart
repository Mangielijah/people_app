import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:people_app/domain/usecases/get_popular_people.dart';
import 'package:people_app/domain/usecases/params/get_people_param.dart';
import 'package:people_app/presentation/state/home_state.dart';

@injectable
class HomeStateNotifier extends StateNotifier<HomeState> {
  GetPeople getPeople;
  // We initialize the list of people to an empty list
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

  // Let's mark a todo as completed
  void likePerson(String personId) {
    // state = [
    //   for (final person in state)
    //     // we're marking only the matching todo as completed
    //     if (person.id == personId)
    //       // Once more, since our state is immutable, we need to make a copy
    //       // of the todo. We're using our `copyWith` method implemented before
    //       // to help with that.
    //       person.copyWith(completed: !todo.completed)
    //     else
    //       // other todos are not modified
    //       person,
    // ];
  }
}
