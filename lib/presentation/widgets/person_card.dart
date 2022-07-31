import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:people_app/domain/entities/person.dart';
import 'package:people_app/presentation/detail_screen.dart';
import 'package:people_app/presentation/helpers/utils.dart';
import 'package:people_app/presentation/widgets/person_like_widget.dart';
import 'package:people_app/presentation/widgets/person_name.dart';
import 'package:people_app/presentation/widgets/popularity_score.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonCard extends StatelessWidget {
  final Person person;
  const PersonCard({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(person: person)));
      },
      child: Padding(
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
                      color: const Color(0xffffb82f),
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
                  imageUrl:
                      getImageUrl(person.profile_path, ImageSizeType.back_drop),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: const Color(0x150c0d13),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20),
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
      ),
    );
  }
}
