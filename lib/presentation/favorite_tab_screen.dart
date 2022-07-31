import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:people_app/presentation/widgets/home_loaders.dart';
import 'package:people_app/presentation/widgets/person_card.dart';
import 'package:people_app/presentation/provider.dart';

class FavoriteList extends ConsumerStatefulWidget {
  const FavoriteList({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends ConsumerState<FavoriteList> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final favListState = ref.watch(favoriteTabProvider);

    return Container(
      color: Colors.white,
      child: favListState.when(
        loading: () {
          return const LoadingWidget();
        },
        data: (people) {
          return ListView.builder(
            itemCount: people.length,
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 10,
            ),
            itemBuilder: (context, index) {
              final person = people[index];
              return PersonCard(
                person: person,
              );
            },
          );
        },
        error: (error) {
          return Center(
            child: Text(error),
          );
        },
      ),
    );
  }
}
