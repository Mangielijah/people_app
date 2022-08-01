import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:people_app/commons/utils.dart';
import 'package:people_app/domain/entities/person.dart';
import 'package:people_app/presentation/image_viewer.dart';
import 'package:people_app/presentation/provider.dart';
import 'package:people_app/presentation/state/media/media_grid_state.dart';
import 'package:people_app/presentation/widgets/grid_loader.dart';
import 'package:people_app/presentation/widgets/image_display.dart';
import 'package:people_app/presentation/widgets/person_like_widget.dart';
import 'package:people_app/presentation/widgets/person_name.dart';
import 'package:people_app/presentation/widgets/popularity_score.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailScreen extends StatefulWidget {
  final Person person;
  const DetailScreen({Key? key, required this.person}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Person person;
  @override
  void initState() {
    person = widget.person;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              height: 400,
              decoration:
                  BoxDecoration(color: const Color(0xff040720), boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: const Offset(0, 1),
                )
              ]),
              child: Stack(
                children: [
                  ImageDisplay(
                    filename: person.profile_path,
                    errorMessage: 'No Image Found',
                    sizeType: ImageSizeType.back_drop,
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: const Color(0x150c0d13),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 20),
                    child: SizedBox(
                      height: 50.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 30.sp,
                                  color: Colors.white,
                                ),
                              ),
                              PopularityScore(
                                popularityScore: person.popularity,
                              ),
                            ],
                          ),
                          LikeWidget(person: person),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BiographySection(
                  biography: person.biography,
                ),
                SizedBox(
                  height: 10.h,
                ),
                PersonMedia(
                  person_id: person.id,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BiographySection extends StatelessWidget {
  final String? biography;
  const BiographySection({Key? key, required this.biography}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Biography Except',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Flexible(
            child: Text(
              biography ?? 'No Biography Available',
              overflow: TextOverflow.fade,
              style: GoogleFonts.montserrat(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.1,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PersonMedia extends ConsumerStatefulWidget {
  final int person_id;
  const PersonMedia({
    Key? key,
    required this.person_id,
  }) : super(key: key);

  @override
  ConsumerState<PersonMedia> createState() => _PersonMediaState();
}

class _PersonMediaState extends ConsumerState<PersonMedia> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    MediaGridState mediaGridState =
        ref.watch(mediaGridStateProvider(widget.person_id));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Media Gallery',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 350,
          child: mediaGridState.when(
            loading: () {
              return const GridLoader();
            },
            data: (List<String> mediaList) {
              if (mediaList.isEmpty) {
                return Container(
                  child: Text(
                    "No Media Found",
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                    ),
                  ),
                );
              }
              return GridView.builder(
                controller: _scrollController,
                itemCount: mediaList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ImageViewer(
                                    filename: mediaList[index],
                                  )));
                    },
                    child: ImageDisplay(
                      filename: mediaList[index],
                      errorMessage: 'Network Error',
                      sizeType: ImageSizeType.grid,
                    ),
                  );
                },
              );
            },
            error: (error) {
              return Container(
                child: Text(
                  "Error Fetching Media",
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
