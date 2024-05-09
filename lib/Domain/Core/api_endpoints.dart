import '../../Infrastrutcure/api_key.dart';

class ApiEndPoints {
  static const numberVerificion = "$baseUrl/mobile-auth/sendOTP";
  static const resendOTP = "$baseUrl/mobile-auth/resendOTP";
  static const otpVerification = "$baseUrl/mobile-auth/verifyOTP";
  static const refreshToken = "$baseUrl/auth/refreshToken";
  static const updateProfile = "$baseUrl/users/updateProfile";
  static const languages = "$baseUrl/language/list";
    static const subscriptionGet = "$baseUrl/subscription/list";


  
  static const getProfile = "$baseUrl/users/getProfile";
  static const courseGet = "$baseUrl/course/get";
  static const courseList = "$baseUrl/course/list?isPublished=1";
  static const videoGet = "$baseUrl/media/videos/get";
  static const industry = "$baseUrl/industry/list";
  static const instructor = "$baseUrl/instructor/list";
  static const applyCoupon = "$baseUrl/coupon/validate";
    static const payment = "$baseUrl/transactions/create";

}
