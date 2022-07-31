import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:people_app/presentation/provider.dart';
import 'package:people_app/presentation/state/home_state.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _scrollController.addListener(() {
        if (_scrollController.position.pixels ==
            (_scrollController.position.maxScrollExtent)) {
          ref.read(homeStateProvider.notifier).loadMore();
        }
      });
    });
  }

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
              return const LoadingWidget();
            },
            data: (pageNumber, people, error) {
              return ListView.builder(
                itemCount: people.length + 1,
                controller: _scrollController,
                itemBuilder: (context, index) {
                  if (index == people.length) {
                    // return const Center(child: CircularProgressIndicator());
                    return Shimmer.fromColors(
                      baseColor: Colors.red,
                      highlightColor: Colors.yellow,
                      child: const ListTile(
                        leading: CircleAvatar(),
                        title: Text(""),
                      ),
                    );
                  }
                  final person = people[index];
                  return ListTile(
                    leading: Image.network(
                      person.profile_path ?? '',
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

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListView.builder(
        itemBuilder: (_, __) => Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 48.0,
                height: 48.0,
                color: Colors.white,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 8.0,
                      color: Colors.white,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.0),
                    ),
                    Container(
                      width: double.infinity,
                      height: 8.0,
                      color: Colors.white,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.0),
                    ),
                    Container(
                      width: 40.0,
                      height: 8.0,
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
