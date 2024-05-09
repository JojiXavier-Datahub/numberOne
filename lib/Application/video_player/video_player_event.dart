part of 'video_player_bloc.dart';

@freezed
class VideoPlayerEvent with _$VideoPlayerEvent {
  const factory VideoPlayerEvent.playVideo(VideoGetModel currentVideo) =
      _PlayVideo;
  const factory VideoPlayerEvent.pauseVideo() = _PauseVideo;
  const factory VideoPlayerEvent.clearVideo() = _ClearVideo;
}