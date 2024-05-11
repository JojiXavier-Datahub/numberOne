part of 'course_list_bloc.dart';

@freezed
class CourseListState with _$CourseListState {
  const factory CourseListState({
    required bool isLoading,
    required bool videoLoading,
    required int totalPages,
    required int page,
    required bool loadMore,
    CourseList? courseList,
    VideoPlayerController? videoPlayerController1,
    ChewieController? chewieController,
    @Default([]) List<VideoGetModel> videoList,
    //  CourseList? freecourseList,
    CourseList? instructorCourseList,
    String? videoOutSidePauseState,
    CourseGet? courseGet,
    int? chapterIndex,
    CoupenModel? coupenModel,
    @Default([]) List<String> chapterdId,
    required Option<Either<MainFailure, CourseGet>>
        courseGetFailureOrSuccessOption,
    required Option<Either<MainFailure, CoupenModel>>
        coupenModelFailureOrSuccessOption,
    required Option<Either<MainFailure, List<VideoGetModel>>>
        videoGetFailureOrSuccessOption,
    required Option<Either<MainFailure, CourseList>>
        languageFailureOrSuccessOption,
  }) = _CourseListState;

  // starting video

  factory CourseListState.initial() {
    return const CourseListState(
      chapterIndex: 0,
      videoOutSidePauseState: null,
      coupenModelFailureOrSuccessOption: None(),
      page: 1,
      totalPages: 1,
      loadMore: false,
      videoGetFailureOrSuccessOption: None(),
      videoLoading: false,
      courseGetFailureOrSuccessOption: None(),
      isLoading: false,
      languageFailureOrSuccessOption: None(),
    );
  }
}
