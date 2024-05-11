import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../Config/routers.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:video_player/video_player.dart';
import '../../Domain/CourseList/Model/course_list.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:number_one_academy_v2/Utils/toast_urils.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Coupon/Model/coupon_model.dart';
import 'package:number_one_academy_v2/Domain/CourseGet/Model/course_get.dart';
import 'package:number_one_academy_v2/Domain/VideoGet/Model/video_get_model.dart';
import 'package:number_one_academy_v2/Domain/Languages/Service/course_services.dart';

part 'course_list_bloc.freezed.dart';
part 'course_list_event.dart';
part 'course_list_state.dart';

@injectable
class CourseListBloc extends Bloc<CourseListEvent, CourseListState> {
  VideoPlayerController? _videoPlayerController1;
  ChewieController? _chewieController;
  final CourseService _courseService;
  CourseListBloc(this._courseService) : super(CourseListState.initial()) {
    on<SearchCourseList>((event, emit) async {
      if (event.previousPage && state.page != 0) {
        int pageIn = state.page - 1;
        emit(state.copyWith(page: pageIn));
      } else {
        log('page ${state.page}');
      }
      if (state.page <= state.totalPages || state.totalPages == 0) {
        emit(state.copyWith(isLoading: true));

        final searchCourceList = await _courseService.getCourseList(
            search: event.search,
            instructorId: '',
            perPage: 8,
            page: state.page);
        searchCourceList.fold((l) {
          emit(state.copyWith(
              isLoading: false,
              loadMore: true,
              languageFailureOrSuccessOption: Some(left(l))));
          handleError(
            error: l,
            routeName: Routers.mainPage,
          );
        }, (r) {
          int pageIn = event.nextPage ? state.page + 1 : state.page;
          emit(state.copyWith(
            // freecourseList: courseListfreeModel,
            page: pageIn,
            totalPages: r.totalPages ?? 0,
            isLoading: false,
            loadMore: false,
            courseList: r,
            languageFailureOrSuccessOption: Some(right(r)),
          ));
        });
      } else {
        log("total page ${state.totalPages}");
      }
    });
    on<GetCourseList>((event, emit) async {
      debugPrint("get course function calling ${event.search}");
      emit(
        state.copyWith(
            isLoading: true,
            languageFailureOrSuccessOption: none(),
            loadMore: true),
      );
      debugPrint("just calling ");

      if (state.page <= state.totalPages) {
        if (event.instructorId != "") {
          debugPrint("instructor list is : ${event.instructorId}");
          final instructorCourseList = await _courseService.getCourseList(
              search: event.search,
              perPage: 8,
              page: 1,
              // free: false,
              instructorId: event.instructorId);
          instructorCourseList.fold((failure) {
            emit(state.copyWith(
                isLoading: false,
                loadMore: false,
                languageFailureOrSuccessOption: Some(left(failure))));
            handleError(
              error: failure,
              routeName: Routers.mainPage,
            );
          }, (success) {
            debugPrint("Instructor if");
            var instructorCourseList = CourseList(
                currentPage: success.currentPage,
                list: success.list,
                perPageCount: success.perPageCount,
                sortAttributes: success.sortAttributes,
                sortOrders: success.sortAttributes,
                totalPages: success.totalPages);

            emit(state.copyWith(
              instructorCourseList: instructorCourseList,
              totalPages: success.totalPages ?? 0,
              isLoading: false,
              loadMore: false,
              languageFailureOrSuccessOption: Some(right(success)),
            ));
          });
        }
        final courseList = await _courseService.getCourseList(
            instructorId: '',
            // free: false,
            page: state.page,
            search: event.search,
            perPage: 8);
        // final freecourseList = await _courseService.getCourseList(
        //     instructorId: '',
        //     free: true,
        //     page: state.page,
        //     search: event.search,
        //     perPage: 8);
        courseList.fold((failure) {
          emit(state.copyWith(
              isLoading: false,
              loadMore: false,
              languageFailureOrSuccessOption: Some(left(failure))));
          handleError(
            error: failure,
            routeName: Routers.mainPage,
          );
        }, (success) {
          // List<ListElement>? courselist =
          //     List<ListElement>.from(state.courseList?.list ?? []);
          // List<ListElement>? freeCourselist =
          //     List<ListElement>.from(state.freecourseList?.list ?? []);

          // courselist.addAll(success.list ?? []);
          // var courseListModel = CourseList(
          //     currentPage: success.currentPage,
          //     list: courselist,
          //     perPageCount: success.perPageCount,
          //     sortAttributes: success.sortAttributes,
          //     sortOrders: success.sortAttributes,
          //     totalPages: success.totalPages);

          // var courseListfreeModel = CourseList(
          //     currentPage: success.currentPage,
          //     list: freeCourselist,
          //     perPageCount: success.perPageCount,
          //     sortAttributes: success.sortAttributes,
          //     sortOrders: success.sortAttributes,
          //     totalPages: success.totalPages);
          int pageIn = state.page + 1;

          emit(state.copyWith(
            // freecourseList: courseListfreeModel,
            page: pageIn,
            totalPages: success.totalPages ?? 0,
            isLoading: false,
            loadMore: false,
            courseList: success,
            languageFailureOrSuccessOption: Some(right(success)),
          ));
        });
      } else {
        emit(state.copyWith(isLoading: false));
      }
    });
    on<_GetCourse>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          videoLoading: true,
          courseGetFailureOrSuccessOption: none()));

      final courseList = await _courseService.getCourseById(id: event.id);

      courseList.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            courseGetFailureOrSuccessOption: Some(left(failure))));
      }, (success) async {
        List<String> chptersIds = [];
        success.chapters?.forEach(
          (element) {
            chptersIds.add(element.publitioVideoId!);
          },
        );

        print("chapters video ${chptersIds.toString()}");

        // var id = success.chapters?.first.publitioVideoId ?? "";
        // log("id is ::: $id");

        add(CourseListEvent.getVideo(id: chptersIds));

        emit(state.copyWith(
          chapterdId: chptersIds,
          isLoading: false,
          courseGet: success,
          courseGetFailureOrSuccessOption: Some(right(success)),
        ));
      });
    });
    on<_GetVideo>(_getvideo);

    // on<_VideoDispose>(
    //   (event, emit) {
    //     state.videoPlayerController1?.dispose();
    //     state.chewieController?.dispose();
    //     emit(state.copyWith(
    //         chewieController: null, videoPlayerController1: null));
    //   },
    // );
    on<_InitializeVIdeoPlayer>(
      (event, emit) async {
        final video = event.videoid;
        _videoPlayerController1?.pause();
        _videoPlayerController1 = VideoPlayerController.networkUrl(
          Uri.parse(video.streamingUrl!),
          formatHint: VideoFormat.hls,
        );
        await _videoPlayerController1!.initialize();
        _videoPlayerController1?.addListener(() {
          print(
              "${_videoPlayerController1!.value.position.inSeconds}================${_videoPlayerController1!.value.duration.inSeconds}");

          if (_videoPlayerController1!.value.position ==
              _videoPlayerController1!.value.duration) {
            debugPrint("duration check ");

            debugPrint("chapter index : ${state.chapterIndex}");
            if (state.chapterIndex! < state.videoList.length - 1) {
              debugPrint("chapterIndex value get");

              print("Chapter Index${state.chapterIndex}");

              // setState(() {
              //   _currentIndex++;
              // });
              add(CourseListEvent.changeChapterIndex(
                  index: state.chapterIndex! + 1));
              print("Chapter Index${state.chapterIndex! + 1}");
              // state.chewieController!.dispose(); // Dispose the current controller
              // initializePlayer(); // Initialize with the next video
            } else {
              // End of the video list, do something like showing a message or stopping playback
              print('All videos played');
            }
          }
        });

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

        // state.videoPlayerController1!.addListener(() {
        //   debugPrint("add listener value");
        //   if (state.videoPlayerController1!.value.position >=
        //       state.videoPlayerController1!.value.duration) {
        //     debugPrint("duration check ");

        //     debugPrint("chapter index : ${state.chapterIndex}");
        //     if (state.chapterIndex! < state.videoList.length - 1) {
        //       debugPrint("chapterIndex value get");

        //       // setState(() {
        //       //   _currentIndex++;
        //       // });
        //       // context.read<CourseListBloc>().add(
        //       //     CourseListEvent.changeChapterIndex(index: state.chapterIndex! + 1));
        //       // state.chewieController!.dispose(); // Dispose the current controller
        //       // initializePlayer(); // Initialize with the next video
        //     } else {
        //       // End of the video list, do something like showing a message or stopping playback
        //       print('All videos played');
        //     }
        //   }
        // });
        //        void _playNextVideo() {
        //   debugPrint("_playNextVideo check ");

        // }

        emit(state.copyWith(
          videoPlayerController1: _videoPlayerController1,
          chewieController: _chewieController,
        ));
      },
    );
    on<_VideoPause>(
      (event, emit) {
        debugPrint("video Dispose is woking");
        _videoPlayerController1 = null;
        _chewieController = null;
        emit(state.copyWith(
          chewieController: null,
          videoPlayerController1: null,
        ));
        _videoPlayerController1?.pause();
        _videoPlayerController1?.dispose();
        _chewieController?.dispose();
        emit(state.copyWith(
            // courseList: null,
            videoList: [],
            chewieController: _chewieController,
            videoPlayerController1: _videoPlayerController1));
      },
    );
    on<_ChangeChapterIndex>(
      (event, emit) {
        emit(state.copyWith(isLoading: true));
        emit(state.copyWith(chapterIndex: event.index));
        emit(state.copyWith(isLoading: false));
      },
    );
    on<_ApplyCoupon>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, coupenModelFailureOrSuccessOption: none()));

      final coupenResult = await _courseService.applyCoupon(
          couponCode: event.couponCode,
          productId: event.productId,
          productType: event.productType);

      coupenResult.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            coupenModelFailureOrSuccessOption: Some(left(failure))));
      }, (success) {
        if (success.status!) {
          emit(state.copyWith(
            coupenModel: success,
            isLoading: false,
            coupenModelFailureOrSuccessOption: Some(right(success)),
          ));
          ToastUtil.show(success.message ?? "");
        } else {
          emit(state.copyWith(
            coupenModel: success,
            isLoading: false,
            coupenModelFailureOrSuccessOption: Some(right(success)),
          ));
          ToastUtil.show(success.message ?? "");
        }
      });
    });
  }

  // Get course details

  // _getCourse(event, emit) async {

  // }
  // Get video

  _getvideo(event, emit) async {
    emit(state.copyWith(
        videoLoading: true, videoGetFailureOrSuccessOption: none()));

    final videoList = await _courseService.getVideo(id: event.id);

    emit(videoList.fold(
        (failure) => state.copyWith(
            videoLoading: false,
            isLoading: false,
            courseGetFailureOrSuccessOption: Some(left(failure))),
        (success) => state.copyWith(
              videoLoading: false,
              videoList: success,
              isLoading: false,
              videoGetFailureOrSuccessOption: Some(right(success)),
            )));
  }
}
