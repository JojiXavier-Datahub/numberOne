import 'package:dartz/dartz.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/OtpVerification/Model/otpverification_model.dart';
import 'package:number_one_academy_v2/Domain/Profile/Model/profile_model.dart';

abstract class OnboaredingPhoneService {
  Future<Either<MainFailure, dynamic>> sentOTP({
    required String phone,
  });
   Future<Either<MainFailure, dynamic>> resentOTP({
    required String phone,
  });
  Future<Either<MainFailure, OtpVerificationModel>> verifyOTP(
      {required String otp, required String phone});
      Future<Either<MainFailure, OtpVerificationModel>> refreshToken(
      {required String refreshToken});
      
  Future<Either<MainFailure, dynamic>> updateProfile({
    required String appLanguage,
   required  String fullName,
    required String gender,
   required  String dateOfBirth,
   required  String email,
   required  String address,
   required  String city,
    required String state,
   required  String pincode,
   required   String companyName,
   required   String businessTurnOver,
     required String industry,
   required   String gstNumber,
    required  String businessAddress,
     required String businessCity,
    required  String businesState,
    required  String businessPincode,
    required int entrepreneurType,
  });
  Future<Either<MainFailure, ProfileeModel>> getProfile();
}
