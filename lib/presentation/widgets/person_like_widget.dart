import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:people_app/domain/entities/person.dart';
import 'package:people_app/presentation/provider.dart';

class LikeWidget extends ConsumerWidget {
  final Person person;
  const LikeWidget({
    Key? key,
    required this.person,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final likeState = ref.watch(favoriteStatusProvider(person));
    return IconButton(
      onPressed: () {
        ref.read(favoriteStatusProvider(person).notifier).favorite();
      },
      padding: const EdgeInsets.all(8.0),
      icon: likeState.when(
        no: () => Icon(
          Icons.favorite_rounded,
          color: Colors.grey,
          size: 30.sp,
        ),
        yes: () => Icon(
          Icons.favorite_rounded,
          color: Colors.red,
          size: 30.sp,
        ),
      ),
    );
  }
}
