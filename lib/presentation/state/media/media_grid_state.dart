import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_grid_state.freezed.dart';

@freezed
class MediaGridState with _$MediaGridState {
  const factory MediaGridState.loading() = MediaLoading;
  const factory MediaGridState.data(List<String> mediaList) = MediaData;
  const factory MediaGridState.error(String error) = _MediaError;
}
