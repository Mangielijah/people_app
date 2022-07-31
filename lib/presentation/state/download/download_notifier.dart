import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:people_app/domain/usecases/download_media.dart';
import 'package:people_app/presentation/state/download/download_state.dart';

class DownloadNotifier extends StateNotifier<DownloadState> {
  DownloadMedia downloadMedia;
  String filename;
  DownloadNotifier(this.downloadMedia, this.filename)
      : super(const DownloadState.notdownloading());

  Future<void> download() async {
    state = const DownloadState.downloading();
    final result = await downloadMedia(filename);
    result.fold(
      (l) {
        state = const DownloadState.error('Failed to fetch Media\'s');
      },
      (mediaList) {
        state = const DownloadState.completed();
      },
    );
  }
}
