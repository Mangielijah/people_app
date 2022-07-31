import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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
