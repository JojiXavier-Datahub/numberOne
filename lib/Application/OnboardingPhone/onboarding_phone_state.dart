part of 'onboarding_phone_bloc.dart';

@freezed
class OnboardingPhoneState with _$OnboardingPhoneState {
  const factory OnboardingPhoneState(
    {required bool buttonColorChage,required bool isLoading, required bool isError,
    bool? status,
     String? phoneNumber, 
     String? message,
     String? name,
     ProfileeModel? profileeModel,
    OnboardingPhoneModel? onboardingPhoneModel}
  ) = _OnboardingPhoneState;
  factory OnboardingPhoneState.initial() {
    return const OnboardingPhoneState(
      status: true,
      buttonColorChage: false,isError: false,isLoading: false);
  }
}
