part of 'course_list_bloc.dart';

@freezed
class CourseListEvent with _$CourseListEvent {
  const factory CourseListEvent.getCourseList({required String search,required String instructorId}) =
      _GetCourseList;
  const factory CourseListEvent.getCourse({required String id}) = _GetCourse;
  const factory CourseListEvent.getVideo({required List<String> id}) = _GetVideo;
    const factory CourseListEvent.changeChapterIndex({required int index}) = _ChangeChapterIndex;
        const factory CourseListEvent.clearInstructorListByCourses() = _ClearInstructorListByCourses;
  // const factory CourseListEvent.videoDispose() = _VideoDispose;
  const factory CourseListEvent.videoPause() = _VideoPause;
  const factory CourseListEvent.initializeVIdeoPlayer(
      {required VideoGetModel videoid,
    }) = _InitializeVIdeoPlayer;
  const factory CourseListEvent.applyCoupon({
    required String couponCode,
    required String productType,
    required String productId,
  }) = _ApplyCoupon;
}
