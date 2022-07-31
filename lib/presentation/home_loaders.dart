import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 10,
        ),
        itemBuilder: (_, __) => const ShimmerListItem(),
        itemCount: 10,
      ),
    );
  }
}

class ShimmerListItem extends StatelessWidget {
  const ShimmerListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 450,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: SizedBox(
                  height: 50.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                bottom: 30,
                child: Container(
                  width: 260,
                  height: 50,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
