// import 'dart:developer';
// import 'package:appinio_video_player/appinio_video_player.dart';
// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:number_one_academy_v2/Application/course_list/course_list_bloc.dart';
// import 'package:number_one_academy_v2/Application/video_bloc.dart';
// import 'package:number_one_academy_v2/Domain/VideoGet/Model/video_get_model.dart';
// import 'package:number_one_academy_v2/Utils/colors.dart';
// import 'package:provider/provider.dart';
// import 'package:visibility_detector/visibility_detector.dart';
// import 'package:wakelock_plus/wakelock_plus.dart';

// class AppVideoPlayer extends StatefulWidget {
//   const AppVideoPlayer({
//     super.key,
//     required this.currentVideo,
//   });
//   final VideoGetModel currentVideo;
//   @override
//   State<AppVideoPlayer> createState() => _AppVideoPlayerState();
// }

// class _AppVideoPlayerState extends State<AppVideoPlayer> {
//   // VideoPlayerController? _videoPlayerController1;
//   // ChewieController? _chewieController;
//   @override
//   void initState() {
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
//       context.read<CourseListBloc>().add(CourseListEvent.initializeVIdeoPlayer(videoid: widget.currentVideo, ));

//       // await initializePlayer();
//       setState(() {});
//     });
//     WakelockPlus.enable();
//     super.initState();
//   }

//   @override
//   void dispose() {


//     // _videoPlayerController1!.dispose();
//     // _chewieController?.dispose();
//     // _chewieController = null; 

//     WakelockPlus.disable();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final VideoBloc videoBloc = BlocProvider.of<VideoBloc>(context);
//     return (data.videoPlayerController1 == null ||  data.chewieController == null)
//         ? const Center(
//             child: CircularProgressIndicator(color: primaryColor),
//           )
//         : VisibilityDetector(
//             key: const Key("unique key"),
//             onVisibilityChanged: (VisibilityInfo info) {
//               if (info.visibleFraction == 0) {
//                 if (data.chewieController!.isFullScreen) {
//                   log("Pausing is working................");
//                 } else {
//                   data.videoPlayerController1?.pause();
//                 }
//               } else {
//                 data.videoPlayerController1?.play();
//               }
//             },
//             child: Chewie(controller: data.chewieController!),
//           );
//   }

//   // Future<void> initializePlayer() async {
//   //   final playVideo = widget.currentVideo;
//   //   String video = playVideo.streamingUrl!;
//   //   data.videoPlayerController1 = VideoPlayerController.networkUrl(
//   //     Uri.parse(video),
//   //     formatHint: VideoFormat.hls,
//   //   );
//   //   await _videoPlayerController1!.initialize();
//   //   _chewieController = getChewieController;  
//   // }

//   VideoPlayerController getVideoPlayerController(String videoUrl) =>
//       VideoPlayerController.networkUrl(Uri.parse(videoUrl),
//           formatHint: VideoFormat.hls);

// }
