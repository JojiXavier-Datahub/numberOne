import 'dart:developer';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_one_academy_v2/Application/course_list/course_list_bloc.dart';
import 'package:number_one_academy_v2/Domain/VideoGet/Model/video_get_model.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

class AppVideoPlayer extends StatefulWidget {
  const AppVideoPlayer({
    super.key,
    required this.currentVideo,
  });
  final VideoGetModel currentVideo;
  @override
  State<AppVideoPlayer> createState() => _AppVideoPlayerState();
}

class _AppVideoPlayerState extends State<AppVideoPlayer> {
  // VideoPlayerController? state.videoPlayerController1;
  // ChewieController? state.chewieController;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      log("time statmp is working");
      context.read<CourseListBloc>().add(
          CourseListEvent.initializeVIdeoPlayer(videoid: widget.currentVideo));
      // await initializePlayer();
      setState(() {});
    });
    WakelockPlus.enable();
    super.initState();
  }

  @override
  void dispose() {
    log("dispose is working");
     context.read<CourseListBloc>().add(const CourseListEvent.videoPause());
    // state.chewieController = null;
    // state.videoPlayerController1=null;
    // state.videoPlayerController1!.dispose();
    // state.chewieController?.dispose();
    WakelockPlus.disable();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log("build method is working");
    return BlocBuilder<CourseListBloc, CourseListState>(
        builder: (context, state) {
      return ( state.videoPlayerController1 == null || state.chewieController == null)
          ? const Center(
              child: CircularProgressIndicator(color: primaryColor),
            )
          : VisibilityDetector(
              key: const Key("unique key"),
              onVisibilityChanged: (VisibilityInfo info) {
                if (info.visibleFraction == 0) {
                  if (!state.chewieController!.isFullScreen) {
                    state.videoPlayerController1?.pause();
                  }
                } else {
                  state.videoPlayerController1?.play();
                }
              },
              child: Chewie(controller: state.chewieController!),
            );
    });
  }

  // Future<void> initializePlayer() async {
  //   log("initiazlize player");
  //   final playVideo = widget.currentVideo;
  //   String video = playVideo.streamingUrl!;
  //   // state.videoPlayerController1?.pause();
  //   state.videoPlayerController1 = VideoPlayerController.networkUrl(
  //     Uri.parse(video),
  //     formatHint: VideoFormat.hls,
  //   );
  //   await state.videoPlayerController1!.initialize();
  //   state.chewieController = getChewieController(true, true, video);
  //   state.videoPlayerController1!.addListener(() {
  //     log("add listener value");
  //     if (state.videoPlayerController1!.value.position >=
  //         state.videoPlayerController1!.value.duration) {
  //       log("duration check ");

  //       _playNextVideo();
  //     }
  //   });
  // }
//   void _playNextVideo() {
//   var state = context.read<CourseListBloc>().state;
//   if (state.chapterIndex! < state.videoList.length - 1) {
//     context.read<CourseListBloc>().add(
//       CourseListEvent.changeChapterIndex(index: state.chapterIndex! + 1)
//     );
//     setState(() {
//       // Initialize ChewieController with the next video
//       state.chewieController = getChewieController(true, true, state.videoList[state.chapterIndex! + 1].streamingUrl!);
//     });
//   } else {
//     // End of the video list, do something like showing a message or stopping playback
//     print('All videos played');
//   }
// }

  // void _playNextVideo() {
  //   log("_playNextVideo check ");

  //   var state = context.read<CourseListBloc>().state;
  //   log("chapter index : ${state.chapterIndex}");
  //   if (state.chapterIndex! < state.videoList.length - 1) {
  //     log("chapterIndex value get ");

  //     // setState(() {
  //     //   _currentIndex++;
  //     // });
  //     context.read<CourseListBloc>().add(
  //         CourseListEvent.changeChapterIndex(index: state.chapterIndex! + 1));
  //     state.chewieController!.dispose(); // Dispose the current controller
  //     initializePlayer(); // Initialize with the next video
  //   } else {
  //     // End of the video list, do something like showing a message or stopping playback
  //     print('All videos played');
  //   }
  // }

  // VideoPlayerController getVideoPlayerController(String videoUrl) =>
  //     VideoPlayerController.networkUrl(Uri.parse(videoUrl),
  //         formatHint: VideoFormat.hls);

  // ChewieController getChewieController(
  //     bool isAutoPlay, bool showControls, String link) {
  //   log("get chewvie controller");
  //   return ChewieController(
  //     videoPlayerController:
  //         state.videoPlayerController1 ?? getVideoPlayerController(link),
  //     autoPlay: isAutoPlay,
  //     zoomAndPan: true,
  //     looping: true,
  //     aspectRatio: 16 / 9,
  //     showControlsOnInitialize: false,
  //     // autoInitialize: true,
  //     allowMuting: true,
  //     allowedScreenSleep: false,
  //     allowFullScreen: true,
  //     allowPlaybackSpeedChanging: true,
  //     showControls: showControls,
  //     progressIndicatorDelay: const Duration(seconds: 3),
  //     deviceOrientationsAfterFullScreen: [
  //       DeviceOrientation.portraitUp,
  //       DeviceOrientation.portraitDown,
  //     ],
  //     placeholder:
  //         Center(child: Image.network(widget.currentVideo.thumbnailUrl!)),
  //     cupertinoProgressColors: ChewieProgressColors(
  //         handleColor: secondaryColor, playedColor: primaryColor),
  //     materialProgressColors: ChewieProgressColors(
  //         handleColor: secondaryColor, playedColor: primaryColor),
  //   );
  // }
}
