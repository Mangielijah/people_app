import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_state.freezed.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState.downloading() = Downloading;
  const factory DownloadState.notdownloading() = NotDownloading;
  const factory DownloadState.completed() = Completed;
  const factory DownloadState.error(String error) = DError;
}
