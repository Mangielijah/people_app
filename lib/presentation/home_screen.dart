import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:people_app/presentation/provider.dart';
import 'package:people_app/presentation/state/home_state.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    HomeState homeState = ref.watch(homeStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("RickAndMorty - Provider"),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: homeState.when(
            loading: (_) {
              return const CircularProgressIndicator();
            },
            data: (pageNumber, people) {
              return ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  final person = people[index];
                  return ListTile(
                    leading: Image.network(
                      person.profile_path,
                      errorBuilder: (context, error, stackTrace) =>
                          const Text('😢\noffline'),
                    ),
                    title: Text(person.name),
                  );
                },
              );
            },
            error: (pageNumber, error) {
              return Center(
                child: Text(error),
              );
            },
          ),
        ),
      ),
    );
  }
}
