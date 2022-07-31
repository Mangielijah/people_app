import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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
