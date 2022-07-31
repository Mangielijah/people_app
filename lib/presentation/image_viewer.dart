import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:people_app/commons/utils.dart';
import 'package:people_app/presentation/provider.dart';
import 'package:people_app/presentation/widgets/image_display.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageViewer extends ConsumerWidget {
  final String filename;
  const ImageViewer({Key? key, required this.filename}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final downloadState = ref.watch(downloadStateProvider(filename));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              ref.read(downloadStateProvider(filename).notifier).download();
            },
            child: Text(
              'Download',
              style: GoogleFonts.montserrat(),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageDisplay(
            filename: filename,
            sizeType: ImageSizeType.download,
          ),
          downloadState.when(
            downloading: () {
              return Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  LoadingAnimationWidget.beat(
                    color: const Color(0xffffb82f),
                    size: 50,
                  ),
                ],
              );
            },
            notdownloading: () => Container(),
            completed: () => Container(
              width: 100.w,
              color: Colors.greenAccent,
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Download Completed',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            error: (error) => Container(
              width: 100.w,
              color: Colors.red,
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Download Error: $error',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
