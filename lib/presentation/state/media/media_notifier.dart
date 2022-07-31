import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:people_app/domain/usecases/get_person_media.dart';
import 'package:people_app/presentation/state/media/media_grid_state.dart';

class MediaGridNotifier extends StateNotifier<MediaGridState> {
  GetPersonMedia personMedia;
  int personId;
  MediaGridNotifier(this.personMedia, this.personId)
      : super(const MediaGridState.loading()) {
    _load();
  }

  Future<void> _load() async {
    final result = await personMedia(personId);
    result.fold(
      (l) {
        state = const MediaGridState.error('Failed to fetch Media\'s');
      },
      (mediaList) {
        state = MediaGridState.data(mediaList);
      },
    );
  }
}
