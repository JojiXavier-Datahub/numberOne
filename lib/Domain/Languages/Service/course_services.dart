import 'package:dartz/dartz.dart';
import '../../CourseGet/Model/course_get.dart';
import '../../CourseList/Model/course_list.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Coupon/Model/coupon_model.dart';
import 'package:number_one_academy_v2/Domain/VideoGet/Model/video_get_model.dart';

abstract class CourseService {
  Future<Either<MainFailure, CourseList>> getCourseList(
      {required String search,
      required String instructorId,
      required int perPage,
      required int page});
  Future<Either<MainFailure, CourseGet>> getCourseById({required String id});
  Future<Either<MainFailure, List<VideoGetModel>>> getVideo(
      {required List<String> id});
  Future<Either<MainFailure, CoupenModel>> applyCoupon(
      {required String couponCode,
      required String productType,
      required String productId});
}
