import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_widget_state.freezed.dart';

@freezed
class LikeState with _$LikeState {
  const factory LikeState.yes() = Yes;
  const factory LikeState.no() = No;
}
