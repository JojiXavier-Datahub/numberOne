import 'package:bloc/bloc.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:video_player/video_player.dart';

import '../../Domain/Languages/Service/course_services.dart';
import '../../Domain/VideoGet/Model/video_get_model.dart';

part 'video_player_bloc.freezed.dart';
part 'video_player_event.dart';
part 'video_player_state.dart';

@injectable
class VideoPlayerBloc extends Bloc<VideoPlayerEvent, VideoPlayerState> {
  final CourseService courseService;

  VideoPlayerController? _videoPlayerController1;
  ChewieController? _chewieController;
  VideoPlayerBloc(this.courseService) : super(VideoPlayerState.initial()) {
    on<_PlayVideo>(_playVideo);
    // on<_PauseVideo>(_pauseVideo);
    on<_ClearVideo>(_clearVideo);
  }

  _playVideo(event, emit) async {
    final video = event.currentVideo;
    _videoPlayerController1?.pause();
    _videoPlayerController1 = VideoPlayerController.networkUrl(
      Uri.parse(video.streamingUrl!),
      formatHint: VideoFormat.hls,
    );
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1!,
      autoPlay: true,
      zoomAndPan: true,
      looping: false,
      aspectRatio: 16 / 9,
      showControlsOnInitialize: false,
      autoInitialize: true,
      allowMuting: true,
      allowedScreenSleep: false,
      allowPlaybackSpeedChanging: true,
      showControls: true,
      progressIndicatorDelay: const Duration(seconds: 3),
      deviceOrientationsAfterFullScreen: [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
      ],
      placeholder: Center(child: Image.network(video.thumbnailUrl!)),
      cupertinoProgressColors: ChewieProgressColors(
          handleColor: secondaryColor, playedColor: primaryColor),
      materialProgressColors: ChewieProgressColors(
          handleColor: secondaryColor, playedColor: primaryColor),
    );

    emit(state.copyWith(
      videoPlayerController1: _videoPlayerController1,
      chewieController: _chewieController,
    ));
  }
  // _pauseVideo(event, emit) {}

  _clearVideo(event, emit) async {
    _videoPlayerController1 = null;
    _chewieController = null;
    emit(state.copyWith(
      chewieController: null,
      videoPlayerController1: null,
    ));
    _videoPlayerController1?.dispose();
    _chewieController?.dispose();
  }
}


/*
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_one_academy_v2/Application/video_player/video_player_bloc.dart';
import 'package:number_one_academy_v2/Domain/VideoGet/Model/video_get_model.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

import '../../../../Domain/Core/Di/injectable.dart';

class AppVideoPlayer extends StatelessWidget {
  const AppVideoPlayer({
    super.key,
    required this.currentVideo,
  });

  final VideoGetModel currentVideo;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<VideoPlayerBloc>()
        ..add(VideoPlayerEvent.playVideo(currentVideo)),
      child: BlocBuilder<VideoPlayerBloc, VideoPlayerState>(
        builder: (context, state) {
          return (state.chewieController == null ||
                  state.videoPlayerController1 == null)
              ? const Center(
                  child: CircularProgressIndicator(color: primaryColor),
                )
              : Chewie(controller: state.chewieController!);
        },
      ),
    );
  }
}

*/