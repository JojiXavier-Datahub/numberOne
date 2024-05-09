part of 'video_player_bloc.dart';

@freezed
class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState({
    @Default(false) bool videoLoading,
    VideoPlayerController? videoPlayerController1,
    ChewieController? chewieController,
    VideoGetModel? currentVideo,
    // @Default([]) List<VideoGetModel> videoList,
    // @Default(None())
    // Option<Either<MainFailure, List<VideoGetModel>>>
    //     videoGetFailureOrSuccessOption,
  }) = _VideoPlayerState;
  factory VideoPlayerState.initial() => const VideoPlayerState(
        videoLoading: true,
        // videoList: [],
        videoPlayerController1: null,
        chewieController: null,
        // videoGetFailureOrSuccessOption: None(),
      );
}