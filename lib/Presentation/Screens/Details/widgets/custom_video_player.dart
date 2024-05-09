// import 'dart:developer';
// import 'dart:io';
// import 'package:appinio_video_player/appinio_video_player.dart';
// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:number_one_academy_v2/Application/course_list/course_list_bloc.dart';
// import 'package:number_one_academy_v2/Utils/colors.dart';
// import 'package:number_one_academy_v2/Utils/constants.dart';
// import 'package:visibility_detector/visibility_detector.dart';
// import 'package:wakelock_plus/wakelock_plus.dart';

// class CustomVideoPlayer extends StatefulWidget {
//   const CustomVideoPlayer({
//     super.key,
//     required this.videoUrl,
//     required this.thumbnailUrl,
//     required this.playBackCompleted,
//   });
//   final String videoUrl;
//   // final List<String> videoUrls;
//   final String thumbnailUrl;
//   final Function playBackCompleted;

//   @override
//   State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
// }

// class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
//   // int? bufferDelay;
//   VideoPlayerController? _videoPlayerController1;
//   ChewieController? _chewieController;

//   //****** */ will comming

//   // bool isPlayBackCalled = false;
//   // bool isPlayingStatusUpdate = false;
//   // bool isAddedtoMyCourse = false;
//   // void addingCourseToMyCourses() async {
//   //   var subscriptionStatus = 1 == 1;

//   //   debugPrint('entered adding course  ');

//   //   var course = context.read<CourseListBloc>().state.courseGet;
//   //   // await userRef
//   //   //     .doc(FirebaseAuth.instance.currentUser!.uid)
//   //   //     .myCourses
//   //   //     .doc(widget.courseId)
//   //   //     .get();

//   //   if (subscriptionStatus) {
//   //     try {
//   //       // final FirebaseFunctions functions = FirebaseFunctions.instance;

//   //       // final HttpsCallable callable = functions.httpsCallable('addToMyCourse');

//   //       // final parameters = {
//   //       //   "userId": FirebaseAuth.instance.currentUser!.uid,
//   //       //   'courseId': widget.courseId,
//   //       // };
//   //       // final result = await callable.call(parameters);

//   //       // debugPrint(result.data.toString());
//   //     } catch (e) {
//   //       debugPrint(e.toString());
//   //     }
//   //   }
//   // }

//   // Future<void> stopVideoPlayback() async {
//   //   if (_videoPlayerController1?.value.isPlaying == true) {
//   //     await _videoPlayerController1?.pause();
//   //   }
//   // }

//   // void removeListenerFunction() {
//   //   _videoPlayerController1?.removeListener(_voidPlayingListener);
//   // }

//   // _voidPlayingListener() async {
//   //   /* debugPrint(
//   //       'Video Playing Status Current Position =${videoPlayerController?.value.position}  Total Duration = ${videoPlayerController?.value.duration}');*/
//   //   try {
//   //     if (_videoPlayerController1 != null) {
//   //       if (_videoPlayerController1!.value.isPlaying &&
//   //           isAddedtoMyCourse == false) {
//   //         var lesson = context.read<CourseListBloc>().state.courseGet;
//   //         // ref.watch(selectedLessonProvider);
//   //         if (lesson != null) {
//   //           if (!isAddedtoMyCourse) {
//   //             addingCourseToMyCourses();
//   //           }
//   //           isAddedtoMyCourse = true;
//   //         }
//   //       }

//   //       if (_videoPlayerController1!.value.position >=
//   //           (_videoPlayerController1!.value.duration -
//   //               const Duration(seconds: 10))) {
//   //         var lesson = context.read<CourseListBloc>().state.courseGet;

//   //         // var lesson = ref.watch(selectedLessonProvider);
//   //         if (lesson != null) {
//   //           if (!isPlayingStatusUpdate) {
//   //             // debugPrint('Updating Playing Status to Firebase ${lesson.id}');

//   //             // updatePlayingStatusToFirebase(lesson.id!);
//   //           }
//   //           isPlayingStatusUpdate = true;
//   //         }
//   //       }

//   // if (Theme.of(context).platform == TargetPlatform.iOS) {
//   // if (_videoPlayerController1!.value.duration == Duration.zero) {
//   //   debugPrint('reeeturing');
//   //   return;
//   // } else {
//   //   if (_videoPlayerController1!.value.position >=
//   //       (_videoPlayerController1!.value.duration)) {
//   //     debugPrint('ios playback is Completd');
//   //     if (!isPlayBackCalled) {
//   //       isPlayBackCalled = true;
//   //       Future.delayed(const Duration(seconds: 1), () async {
//   //         if (_chewieController!.isFullScreen) {
//   //           _chewieController?.exitFullScreen();
//   //         }

//   //         await stopVideoPlayback();
//   //         removeListenerFunction();

//   //         await _videoPlayerController1?.dispose();

//   //         _videoPlayerController1 = null;
//   //         widget.playBackCompleted();
//   //       });
//   //     }
//   //   }
//   // }

//   // }

//   // else {
//   //   if (videoPlayerController!.value.position >=
//   //       (videoPlayerController!.value.duration)) {
//   //     debugPrint('playback is Completd');
//   //     if (!isPlayBackCalled) {
//   //       isPlayBackCalled = true;
//   //       Future.delayed(const Duration(seconds: 1), () async {
//   //         if (chewieController!.isFullScreen) {
//   //           chewieController?.exitFullScreen();
//   //         }

//   //         await stopVideoPlayback();
//   //         removeListenerFunction();

//   //         await videoPlayerController?.dispose();

//   //         videoPlayerController = null;
//   //         widget.playBackCompleted();
//   //       });
//   //     }
//   //   }
//   // }
//   //     }
//   //   } catch (e) {
//   //     debugPrint(e.toString());
//   //   }
//   // }

//   void changeVideoURL(String newURL) async {
//     log("change video url");
//     // videoPlayerController?.pause();

//     if (_videoPlayerController1 == null) {
//       log("change video url if");
//       _initializePlayerControllers(newURL, true);
//     } else {
//       log("change video url else");
//       try {
//         _videoPlayerController1!.dispose();
//         _chewieController?.dispose();
//         _initializePlayerControllers(newURL, true);
//         debugPrint('Tesst 77');
//       } catch (e) {
//         debugPrint(
//             'PLAYER :: The player is Changes it value from ChangeVideoURL********');
//       }
//     }
//   }

//   // void closePlayer() {
//   //   _videoPlayerController1?.pause();
//   //   _videoPlayerController1?.dispose();
//   //   _videoPlayerController1 = null;
//   //   _chewieController?.dispose();
//   //   _chewieController = null;
//   // }

//   // @override
//   // void deactivate() {
//   //   _videoPlayerController1?.removeListener(_voidPlayingListener);

//   //   _videoPlayerController1?.dispose();
//   //   _videoPlayerController1 = null;
//   //   // chewieController?.dispose();
//   //   super.deactivate();
//   //   debugPrint('PLAYER :: The player is Deactivated********');
//   // }

//   Future<void> _initializePlayerControllers(
//       String videoUrl, bool showControls) async {
//     log("initilalize Player controller");
//     _videoPlayerController1 = VideoPlayerController.networkUrl(
//         Uri.parse(videoUrl),
//         formatHint: VideoFormat.hls);
//     _videoPlayerController1?.pause();
//     _chewieController = getChewieController(true, showControls, videoUrl);
//     // _videoPlayerController1?.addListener(_voidPlayingListener);

//     // isPlayBackCalled = false;
//     // isPlayingStatusUpdate = false;
//   }

// //*** */
//   @override
//   void initState() {
//     log("init statae");

//     /// update
//     // WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
//     //   await initializePlayer();
//     //   setState(() {});
//     // });
//     WakelockPlus.enable();
//     super.initState();
//   }

//   // @override
//   // void didChangeDependencies() {
//   //   super.didChangeDependencies();
//   // }

//   // videoPlayerInitialization() async {
//   //   log("video Player initialization");
//   //   // var videolist = context.read<CourseListBloc>().state.videoList;
//   //   // var chapterIndex = context.read<CourseListBloc>().state.chapterIndex;
//   //   _videoPlayerController1 =
//   //       VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
//   //   _chewieController = ChewieController(
//   //     autoPlay: true,
//   //     videoPlayerController: _videoPlayerController1!,
//   //     // autoPlay: isAutoPlay,
//   //     // allowFullScreen: true,
//   //     zoomAndPan: true,
//   //     looping: false,
//   //     aspectRatio: 16 / 9,
//   //     showControlsOnInitialize: false,
//   //     autoInitialize: true,
//   //     // placeholder: BlocBuilder<CourseListBloc, CourseListState>(
//   //     //     builder: (context, state) {
//   //     //   return state.isLoading || state.videoLoading
//   //     //       ? const SizedBox()
//   //     //       : SizedBox(
//   //     //           width: MediaQuery.of(context).size.width,
//   //     //           child: CachedNetworkImage(
//   //     //             imageUrl: widget.thumbnailUrl,
//   //     //             fit: BoxFit.fitWidth,
//   //     //             placeholder: (context, url) =>  SizedBox(
//   //     //                 child: Image.asset(placeholder),
//   //     //                 ),
//   //     //             errorWidget: (context, url, error) {
//   //     //               return Image.asset(
//   //     //                 placeholder,
//   //     //                 fit: BoxFit.cover,
//   //     //               );
//   //     //             },
//   //     //           ),
//   //     //         );
//   //     // }),
//   //     allowMuting: true,

//   //     allowedScreenSleep: false,
//   //     allowPlaybackSpeedChanging: true,
//   //     // showControls: showControls,
//   //     progressIndicatorDelay: const Duration(seconds: 3),
//   //     deviceOrientationsAfterFullScreen: [
//   //       // DeviceOrientation.landscapeRight,
//   //       // DeviceOrientation.landscapeLeft,
//   //       DeviceOrientation.portraitUp,
//   //       DeviceOrientation.portraitDown,
//   //     ],

//   //     placeholder: Center(child: SvgPicture.asset(splashLogo)),
//   //     cupertinoProgressColors: ChewieProgressColors(
//   //         backgroundColor: primaryColor,
//   //         bufferedColor: primaryColor,
//   //         handleColor: secondaryColor,
//   //         playedColor: primaryColor),
//   //     materialProgressColors: ChewieProgressColors(
//   //         backgroundColor: Colors.black38,
//   //         bufferedColor: primaryColor,
//   //         handleColor: secondaryColor,
//   //         playedColor: primaryColor),
//   //   );

//   //   //     break;
//   //   //   case DataSourceType.file:
//   //   //     _videoPlayerController = VideoPlayerController.file(File(widget.url));
//   //   //     break;
//   //   //   case DataSourceType.contentUri:
//   //   //     _videoPlayerController =
//   //   //         VideoPlayerController.contentUri(Uri.parse(widget.url));
//   //   //     break;
//   //   // }

//   //   _videoPlayerController1!.initialize().then(
//   //         (_) => setState(
//   //           () => _chewieController = ChewieController(
//   //             videoPlayerController: _videoPlayerController1!,
//   //             aspectRatio: 16 / 9,
//   //           ),
//   //         ),
//   //       );

//   //   _chewieController!.addListener(() {
//   //     if (_chewieController!.isFullScreen) {
//   //       SystemChrome.setPreferredOrientations([
//   //         DeviceOrientation.landscapeLeft,
//   //         DeviceOrientation.landscapeRight
//   //       ]);
//   //     } else {
//   //       SystemChrome.setPreferredOrientations(
//   //           [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
//   //     }
//   //     // else{
//   //     //    SystemChrome.setPreferredOrientations([
//   //     //     DeviceOrientation.landscapeLeft,
//   //     //     DeviceOrientation.landscapeRight
//   //     //   ]);

//   //     // }
//   //   });
//   // }

// // updated
//   // @override
//   // void deactivate() {
//   //   // Pauses video while navigating to next page.
//   //   _videoPlayerController1?.pause();
//   //   super.deactivate();
//   // }

//   @override
//   void dispose() {
//     // context.read<CourseListBloc>().add(const CourseListEvent.videoDispose());
//     if (!_chewieController!.isFullScreen) {
//       log("dispose in the video Player section ");
//       _videoPlayerController1!.dispose();
//       _chewieController?.dispose();
//       // _videoPlayerController1 = null;
//       _chewieController = null;
//     }

//     //     SystemChrome.setPreferredOrientations([
//     //   DeviceOrientation.landscapeRight,
//     //   DeviceOrientation.landscapeLeft,
//     //   DeviceOrientation.portraitUp,
//     //   DeviceOrientation.portraitDown,
//     // ]);

//     WakelockPlus.disable();
//     super.dispose();
//   }
// // updated
//   // Future<void> initializePlayer() async {
//   //   // context.read<CourseListBloc>().add(CourseListEvent.initializeVIdeoPlayer(
//   //   //     videoid: VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl)),
//   //   //     chewieController: getChewieController(true, true, widget.videoUrl)));
//   //   _videoPlayerController1 =
//   //       VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
//   //   _videoPlayerController1?.pause();
//   //   _chewieController = getChewieController(true, true, widget.videoUrl);
//   //   // _chewieController!.addListener(() {
//   //   //   if (_chewieController!.isFullScreen) {
//   //   //     SystemChrome.setPreferredOrientations([
//   //   //       DeviceOrientation.landscapeRight,
//   //   //       DeviceOrientation.landscapeLeft,
//   //   //     ]);
//   //   //   } else {
//   //   //     SystemChrome.setPreferredOrientations([
//   //   //       DeviceOrientation.portraitUp,
//   //   //       DeviceOrientation.portraitDown,
//   //   //     ]);
//   //   //   }
//   //   // });
//   //}

//   VideoPlayerController getVideoPlayerController(String videoUrl) =>
//       VideoPlayerController.networkUrl(Uri.parse(videoUrl),
//           formatHint: VideoFormat.hls);

//   ChewieController getChewieController(
//       bool isAutoPlay, bool showControls, String link) {
//     return ChewieController(
//       videoPlayerController: _videoPlayerController1 ??
//           // context.read<CourseListBloc>().state.videoPlayerController1 ??
//           getVideoPlayerController(link),
//       autoPlay: isAutoPlay,
//       // allowFullScreen: true,
//       zoomAndPan: true,
//       looping: false,
//       aspectRatio: 16 / 9,
//       showControlsOnInitialize: false,
//       autoInitialize: true,
//       // placeholder: BlocBuilder<CourseListBloc, CourseListState>(
//       //     builder: (context, state) {
//       //   return state.isLoading || state.videoLoading
//       //       ? const SizedBox()
//       //       : SizedBox(
//       //           width: MediaQuery.of(context).size.width,
//       //           child: CachedNetworkImage(
//       //             imageUrl: widget.thumbnailUrl,
//       //             fit: BoxFit.fitWidth,
//       //             placeholder: (context, url) =>  SizedBox(
//       //                 child: Image.asset(placeholder),
//       //                 ),
//       //             errorWidget: (context, url, error) {
//       //               return Image.asset(
//       //                 placeholder,
//       //                 fit: BoxFit.cover,
//       //               );
//       //             },
//       //           ),
//       //         );
//       // }),
//       allowMuting: true,

//       allowedScreenSleep: false,
//       allowPlaybackSpeedChanging: true,
//       showControls: showControls,
//       progressIndicatorDelay: const Duration(seconds: 3),
//       deviceOrientationsAfterFullScreen: [
//         // DeviceOrientation.landscapeRight,
//         // DeviceOrientation.landscapeLeft,
//         DeviceOrientation.portraitUp,
//         DeviceOrientation.portraitDown,
//       ],

//       placeholder: Center(child: SvgPicture.asset(splashLogo)),
//       cupertinoProgressColors: ChewieProgressColors(
//           backgroundColor: Colors.black38,
//           bufferedColor: Colors.white12,
//           handleColor: secondaryColor,
//           playedColor: primaryColor),
//       materialProgressColors: ChewieProgressColors(
//           backgroundColor: Colors.black38,
//           bufferedColor: Colors.white12,
//           handleColor: secondaryColor,
//           playedColor: primaryColor),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     log("build section");
//     //  videoPlayerInitialization();
//     if (Platform.isIOS) {
//       if (_videoPlayerController1 == null) {
//         changeVideoURL(widget.videoUrl);
//       } else {
//         if (_videoPlayerController1?.dataSource == widget.videoUrl) {
//           //do nothing
//         } else {
//           changeVideoURL(widget.videoUrl);
//         }
//       }
//     } else {
      
//         log("build section else");

//         changeVideoURL(widget.videoUrl);
      
//     }

//     return Column(
//       children: [
//         AspectRatio(
//           aspectRatio: 16 / 9,
//           // child: context.read<CourseListBloc>().state.chewieController
//           child: _chewieController == null ||
//                   // context.read<CourseListBloc>().state.videoPlayerController1
//                   _videoPlayerController1 == null
//               ? const Center(
//                   child: CircularProgressIndicator(color: primaryColor),
//                 )
//               : VisibilityDetector(
//                   key: const Key("unique key"),
//                   onVisibilityChanged: (VisibilityInfo info) {
//                     debugPrint(
//                         "${info.visibleFraction} of my widget is visible");
//                     if (info.visibleFraction == 0) {
//                       _videoPlayerController1?.pause();
//                     } else {
//                       _videoPlayerController1?.play();
//                     }
//                   },
//                   child: Chewie(
//                       controller:
//                           // context.read<CourseListBloc>().state.chewieController!
//                           _chewieController!),
//                 ),
//         ),
//         triggerOutsidePause(),
//       ],
//     );
//   }

//   Widget triggerOutsidePause() {
//     return BlocBuilder<CourseListBloc, CourseListState>(
//       builder: (context, state) {
//         try {
//           String? triggerState = state.videoOutSidePauseState;
//           log('PLAYER :: ***Outside Pause Triggered**', level: 2000);

//           if (triggerState != null) {
//             log("pause widget is working.....");
//             Future.delayed(
//               Duration.zero,
//               () async {
//                 await _videoPlayerController1?.pause();
//                 //await _videoPlayerController1?.dispose();
//               },
//             );
//           }
//         } catch (e) {
//           debugPrint(e.toString());
//         }
//         return const SizedBox();
//       },
//     );
//   }
// }
