import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../Domain/Core/api_endpoints.dart';
import '../../Domain/Languages/Service/course_services.dart';
import '../../Domain/Core/NetworkServices/network_services.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Coupon/Model/coupon_model.dart';
import 'package:number_one_academy_v2/Domain/CourseGet/Model/course_get.dart';
import 'package:number_one_academy_v2/Domain/CourseList/Model/course_list.dart';
import 'package:number_one_academy_v2/Domain/VideoGet/Model/video_get_model.dart';

@LazySingleton(as: CourseService)
class CourseRepositoty implements CourseService {
  final NetworkService _networkService;
  CourseRepositoty(this._networkService) {
    _networkService.init();
  }
  @override
  Future<Either<MainFailure, CourseGet>> getCourseById(
      {required String id}) async {
    log(" course get repo stattrd");

    final Either<MainFailure, Response> response =
        await _networkService.getRequest("${ApiEndPoints.courseGet}?id=$id");

    return await response.fold((error) {
      log(" course get repo fail");
      return left(error);
    }, (result) async {
      log(" course get repo success");

      CourseGet courseGet = CourseGet.fromJson(result.data);
      return right(courseGet);
    });
  }

  @override
  Future<Either<MainFailure, CourseList>> getCourseList(
      {required int page,
      required int perPage,
      required String search,
      // required bool free,
      required String instructorId}) async {
    // var value = free ? "&courseType=free" : "";
    var instructorIdValue =
        instructorId == "" ? "" : "&courseInstructors=$instructorId";
    final Either<MainFailure, Response> response = await _networkService.getRequest(
        "${ApiEndPoints.courseList}&page=$page&pageSize=$perPage&query=$search$instructorIdValue");

    return await response.fold((error) {
      return left(error);
    }, (result) {
      CourseList courseList = CourseList.fromJson(result.data);
      log('Search Len ${courseList.list!.length}');
      return right(courseList);
    });
  }

  @override
  Future<Either<MainFailure, List<VideoGetModel>>> getVideo(
      {required List<String> id}) async {
    final data = id;
    final Either<MainFailure, Response> response =
        await _networkService.postRequest(ApiEndPoints.videoGet, data);
    return await response.fold((error) {
      return left(error);
    }, (result) async {
      final List<VideoGetModel> videoList = [];
      for (final raw in result.data) {
        videoList.add(VideoGetModel.fromJson(raw as Map<String, dynamic>));
      }
      return right(videoList);
    });
  }

  @override
  Future<Either<MainFailure, CoupenModel>> applyCoupon(
      {required String couponCode,
      required String productType,
      required String productId}) async {
    log(" apply coupon repo stattrd");

    final Either<MainFailure, Response> response =
        await _networkService.postRequest(ApiEndPoints.applyCoupon, {
      {
        "couponCode": couponCode,
        "productType": productType,
        "productId": productId
      }
    });
    inspect(response);

    return await response.fold((error) {
      log(" apply coupon repo fail");
      log("error in repo apply coupon : $error");
      return left(error);
    }, (result) async {
      log("apply coupon repo success");
      CoupenModel coupenModel = CoupenModel.fromJson(result.data);
      return right(coupenModel);
    });
  }
}
