import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:people_app/presentation/favorite_tab_screen.dart';
import 'package:people_app/presentation/widgets/home_loaders.dart';
import 'package:people_app/presentation/widgets/person_card.dart';
import 'package:people_app/presentation/provider.dart';
import 'package:people_app/presentation/state/home/home_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height + 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 12.5),
                  child: Text(
                    "PipleApp",
                    style: GoogleFonts.montserrat(
                      color: Colors.black87,
                      fontSize: 21.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: const Color(0xffffb82f),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                          // offset: Offset(10, 5),
                          color: Colors.black26,
                          blurRadius: 15.0,
                        )
                      ],
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: const [
                      Tab(
                        text: 'People',
                      ),
                      Tab(
                        text: 'Favorites',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            _People(),
            FavoriteList(),
          ],
        ),
      ),
    );
  }
}

class _People extends ConsumerStatefulWidget {
  const _People({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<_People> createState() => _PeopleState();
}

class _PeopleState extends ConsumerState<_People> {
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
    ref.listen<HomeState>(homeStateProvider, (prevState, currentState) {
      if (prevState is Data && (currentState as Data).error != null) {
        //Show error toast
        final snackBar = SnackBar(
          content: Text((currentState).error!),
          duration: const Duration(minutes: 1),
          action: SnackBarAction(
            label: 'Try Again',
            onPressed: () {
              ref.read(homeStateProvider.notifier).loadMore();
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    });
    return Container(
      color: Colors.white,
      child: homeState.when(
        loading: (_) {
          return const LoadingWidget();
        },
        data: (pageNumber, people, error) {
          return ListView.builder(
            itemCount: people.length + 1,
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 10,
            ),
            itemBuilder: (context, index) {
              if (index == people.length) {
                return Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: const ShimmerListItem(),
                );
              }
              final person = people[index];
              return PersonCard(
                person: person,
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
    );
  }
}
