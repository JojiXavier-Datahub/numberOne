part of 'onboarding_phone_bloc.dart';

@freezed
class OnboardingPhoneEvent with _$OnboardingPhoneEvent {
  const factory OnboardingPhoneEvent.sendOtp(
      {required String phoneNumber, required BuildContext context}) = _SendOtp;
      const factory OnboardingPhoneEvent.resendOtp(
      ) = _ResendOtp;
  const factory OnboardingPhoneEvent.verifyOtp(
      {required String otp, required BuildContext context}) = _VerifyOtp;
  const factory OnboardingPhoneEvent.nameStoring(
      {required String name, required BuildContext context}) = _NameStoring;
  const factory OnboardingPhoneEvent.updateProfile(
      { required BuildContext context,

        String? appLanguage,
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
     int? entrepreneurType,}) = _UpdateProfile;


const factory OnboardingPhoneEvent.getProfile({required BuildContext context}
      ) = _GetProfile;

      


const factory OnboardingPhoneEvent.clearPhoneNumber({required BuildContext context}
      ) = _ClearPhoneNumber;
  const factory OnboardingPhoneEvent.phoneValidation({
    required int phonevalidation,
    required int count
  }) = _PhoneValidation;
}
