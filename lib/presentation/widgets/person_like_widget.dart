import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LikeWidget extends StatefulWidget {
  final int person_id;
  const LikeWidget({
    Key? key,
    required this.person_id,
  }) : super(key: key);

  @override
  State<LikeWidget> createState() => _LikeWidgetState();
}

class _LikeWidgetState extends State<LikeWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      padding: const EdgeInsets.all(8.0),
      icon: Icon(
        Icons.favorite_rounded,
        color: true ? Colors.red : Colors.grey,
        size: 30.sp,
      ),
    );
  }
}
