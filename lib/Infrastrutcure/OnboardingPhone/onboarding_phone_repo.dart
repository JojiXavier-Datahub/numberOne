import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/Core/NetworkServices/network_services.dart';
import 'package:number_one_academy_v2/Domain/Core/api_endpoints.dart';
import 'package:number_one_academy_v2/Domain/OnboardingPhone/Service/onboar_phone_service.dart';
import 'package:number_one_academy_v2/Domain/OtpVerification/Model/otpverification_model.dart';

import '../../Domain/Profile/Model/profile_model.dart';

@LazySingleton(as: OnboaredingPhoneService)
class OnboradingPhoneRepository implements OnboaredingPhoneService {
  final NetworkService _networkService;
  OnboradingPhoneRepository(this._networkService) {
    _networkService.init();
  }

  @override
  Future<Either<MainFailure, dynamic>> sentOTP({required String phone}) async {
    final Either<MainFailure, Response> response =
        await _networkService.postRequest(ApiEndPoints.numberVerificion, {
      "phoneNumber": phone,
    });
    return await response.fold((error) {
      return left(error);
    }, (result) async {
      return right(result.data);
    });
  }

  @override
  Future<Either<MainFailure, OtpVerificationModel>> verifyOTP(
      {required String otp, required String phone}) async {
    final Either<MainFailure, Response> response = await _networkService
        .postRequest(
            ApiEndPoints.otpVerification, {"phoneNumber": phone, 'otp': otp});
    return await response.fold((error) {
      return left(error);
    }, (result) async {
      OtpVerificationModel otpVerificationModel =
          OtpVerificationModel.fromJson(result.data);

      return right(otpVerificationModel);
    });
  }

  @override
  Future<Either<MainFailure, dynamic>> updateProfile(
      {String? appLanguage,
      String? fullName,
      String? gender,
      String? dateOfBirth,
      String? email,
      String? address,
      String? city,
      String? state,
      String? pincode,
      String? companyName,
      String? businessTurnOver,
      String? industry,
      String? gstNumber,
      String? businessAddress,
      String? businessCity,
      String? businesState,
      String? businessPincode,
      int? entrepreneurType}) async {
    final Either<MainFailure, Response> response =
        await _networkService.putRequest(ApiEndPoints.updateProfile, {
      "fullName": fullName,
      "entrepreneurType": entrepreneurType,
      "appLanguage": appLanguage,

    });
    return await response.fold((error) {
      return left(error);
    }, (result) async {
      return right(result.data);
    });
  }

  @override
  Future<Either<MainFailure, ProfileeModel>> getProfile() async {
    final Either<MainFailure, Response> response =
        await _networkService.getRequest(ApiEndPoints.getProfile);
    return await response.fold((error) {
      log("get profile error is found $error");
      return left(error);
    }, (result) async {
      log("get profile result is found");
      ProfileeModel profileeModel = ProfileeModel.fromJson(result.data);
      return right(profileeModel);
    });
  }

  @override
  Future<Either<MainFailure, dynamic>> resentOTP(
      {required String phone}) async {
    final Either<MainFailure, Response> response =
        await _networkService.postRequest(ApiEndPoints.resendOTP, {
      "phoneNumber": phone,
    });
    return await response.fold((error) {
      return left(error);
    }, (result) async {
      return right(result.data);
    });
  }

  @override
  Future<Either<MainFailure, OtpVerificationModel>> refreshToken(
      {required String refreshToken}) async {
    final Either<MainFailure, Response> response = await _networkService
        .postRequest(ApiEndPoints.refreshToken, {"refreshToken": refreshToken});
    return await response.fold((error) {
      return left(error);
    }, (result) async {
      OtpVerificationModel otpVerificationModel =
          OtpVerificationModel.fromJson(result.data);

      return right(otpVerificationModel);
    });
  }
}
