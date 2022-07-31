import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:people_app/commons/utils.dart';

class ImageDisplay extends StatelessWidget {
  final String? filename;
  final String errorMessage;
  final ImageSizeType sizeType;
  const ImageDisplay(
      {Key? key,
      required this.filename,
      this.errorMessage = '',
      required this.sizeType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
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
            errorMessage,
            style: GoogleFonts.montserrat(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
      imageUrl: getImageUrl(filename, sizeType),
    );
  }
}
