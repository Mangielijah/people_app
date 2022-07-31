import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:people_app/domain/entities/person.dart';
import 'package:people_app/presentation/helpers/utils.dart';
import 'package:people_app/presentation/home_loaders.dart';
import 'package:people_app/presentation/person_like_widget.dart';
import 'package:people_app/presentation/provider.dart';
import 'package:people_app/presentation/state/home_state.dart';
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
                    "Movies",
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
            _People(),
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

class PersonCard extends StatelessWidget {
  final Person person;
  const PersonCard({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 450,
        decoration: const BoxDecoration(
          color: Color(0xff040720),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Stack(
            children: [
              CachedNetworkImage(
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) => Center(
                  child: LoadingAnimationWidget.threeRotatingDots(
                    color: const Color(0xff040720),
                    size: 50,
                  ),
                ),
                errorWidget: (_, __, ___) => Container(
                  color: const Color(0xff040720),
                  width: double.infinity,
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      'No Image Found',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                imageUrl: getImageUrl(person.profile_path),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                color: const Color(0x150c0d13),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: SizedBox(
                  height: 50.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PopularityScore(
                        popularityScore: person.popularity,
                      ),
                      LikeWidget(person_id: person.id),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                bottom: 30,
                child: PersonName(
                  name: person.name,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PopularityScore extends StatelessWidget {
  final num? popularityScore;
  const PopularityScore({
    Key? key,
    this.popularityScore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String score;
    if (popularityScore == null) {
      score = 'N/A';
    } else {
      score = '${min(popularityScore!.toInt(), 999)}';
    }
    return Container(
      width: 50.w,
      height: 50.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 20,
          child: Center(
            child: Text(
              score,
              style: GoogleFonts.montserrat(
                color: const Color(0xff0c0d13),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PersonName extends StatelessWidget {
  final String name;
  const PersonName({
    Key? key,
    this.name = 'No Name',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: 260.w,
          color: const Color(0xffffb82f),
          child: Text(
            name,
            overflow: TextOverflow.clip,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 28.sp,
            ),
          ),
        );
      },
    );
  }
}
