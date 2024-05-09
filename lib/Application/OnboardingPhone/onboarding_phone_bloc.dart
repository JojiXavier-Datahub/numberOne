import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Config/pages.dart';
import 'package:number_one_academy_v2/Config/routers.dart';
import 'package:number_one_academy_v2/Domain/Core/Failure/main_failure.dart';
import 'package:number_one_academy_v2/Domain/OnboardingPhone/Model/onboar_phone_model.dart';
import 'package:number_one_academy_v2/Domain/OnboardingPhone/Service/onboar_phone_service.dart';
import 'package:number_one_academy_v2/Domain/OtpVerification/Model/otpverification_model.dart';
import 'package:number_one_academy_v2/Domain/Profile/Model/profile_model.dart';
import 'package:number_one_academy_v2/Utils/Helper/shared_pref.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';
import 'package:number_one_academy_v2/Utils/toast_urils.dart';
part 'onboarding_phone_bloc.freezed.dart';
part 'onboarding_phone_event.dart';
part 'onboarding_phone_state.dart';

@injectable
class OnboardingPhoneBloc
    extends Bloc<OnboardingPhoneEvent, OnboardingPhoneState> {
  final OnboaredingPhoneService _onboarService;
  OnboardingPhoneBloc(this._onboarService)
      : super(OnboardingPhoneState.initial()) {
    on<_SendOtp>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final Either<MainFailure, dynamic> sendOtp =
          await _onboarService.sentOTP(phone: event.phoneNumber);

      return sendOtp.fold((error) {
        emit(state.copyWith(isLoading: false, isError: true));
        handleError(
          error: error,
          routeName: Routers.onBoardingphone,
        );
      }, (result) async {
        if (result["status"] ?? false) {
          emit(state.copyWith(
              isError: false,
              isLoading: false,
              phoneNumber: event.phoneNumber,
              buttonColorChage: false));
          await Navigator.push(
            event.context,
            AppPages.generateRouteSettings(
                const RouteSettings(name: Routers.onBoardingOtp)),
          );

          ToastUtil.show(result["message"] ?? "");
        } else {
          ToastUtil.show(result["message"] ?? "");
          emit(state.copyWith(
            isError: true,
            isLoading: false,
          ));
        }
      });
    });
    on<_ClearPhoneNumber>(
      (event, emit) {
        emit(state.copyWith(phoneNumber: ""));
      },
    );
    on<_ResendOtp>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final Either<MainFailure, dynamic> sendOtp =
          await _onboarService.resentOTP(phone: state.phoneNumber!);

      return sendOtp.fold((error) {
        emit(state.copyWith(isLoading: true, isError: true));
        handleError(
          error: error,
          routeName: Routers.onBoardingphone,
        );
      }, (result) async {
        if (result["status"] ?? false) {
          emit(state.copyWith(
              isError: false, isLoading: false, buttonColorChage: false));

          ToastUtil.show("OTP send successfully");
        } else {
          ToastUtil.show(result["message"] ?? "");
          emit(state.copyWith(isError: true, isLoading: false));
        }
      });
    });

    on<_PhoneValidation>((event, emit) {
      if (event.phonevalidation > event.count) {
        emit(state.copyWith(buttonColorChage: true));
      } else {
        emit(state.copyWith(buttonColorChage: false));
      }
    });
    on<_VerifyOtp>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final Either<MainFailure, OtpVerificationModel> verifyOtp =
          await _onboarService.verifyOTP(
              phone: state.phoneNumber!, otp: event.otp);

      return verifyOtp.fold((error) {
        handleError(error: error, routeName: Routers.onBoardingOtp);
      }, (result) async {
        if (result.status ?? false) {
          emit(state.copyWith(
              status: result.status ?? false,
              message: result.message ?? "",
              isError: false,
              isLoading: false,
              phoneNumber: state.phoneNumber,
              buttonColorChage: false));

          await SharedPrefUtil.writeString(
              accesToken, result.accessToken!.toString());

          await SharedPrefUtil.writeString(
              refreshToken, result.refreshToken!.toString());

          Navigator.push(
              event.context,
              AppPages.generateRouteSettings(const RouteSettings(
                  name: Routers.onboardingRocketAnimation)));
        } else {
          ToastUtil.show("You have entered a wrong OTP");
          emit(state.copyWith(
              status: result.status ?? false,
              message: result.message ?? "",
              isError: true,
              isLoading: false));
        }
      });
    });
    on<_NameStoring>((event, emit) {
      emit(state.copyWith(name: event.name));
      emit(state.copyWith(buttonColorChage: false));
    });

    on<_UpdateProfile>((event, emit) async {
      emit(state.copyWith(
          isError: false, isLoading: true, buttonColorChage: false));

      final Either<MainFailure, dynamic> updateProfile =
          await _onboarService.updateProfile(
        address: event.address ?? "",
        businesState: event.businesState ?? "",
        businessAddress: event.businessAddress ?? "",
        businessCity: event.businessCity ?? "",
        businessPincode: event.businessPincode ?? "",
        businessTurnOver: event.businessTurnOver ?? "",
        city: event.city ?? "",
        companyName: event.businesState ?? "",
        dateOfBirth: event.dateOfBirth ?? "",
        email: event.email ?? "",
        gender: event.gender ?? "",
        gstNumber: event.gstNumber ?? "",
        industry: event.industry ?? "",
        pincode: event.pincode ?? "",
        state: event.state ?? "",
        appLanguage: "en",
        entrepreneurType: event.entrepreneurType!,
        fullName: event.fullName ?? state.name ?? "",
      );

      return updateProfile.fold((error) {
        handleError(error: error, routeName: Routers.onBoardingOtp);
      }, (result) async {
        if (result["status"] ?? false) {
          emit(state.copyWith(
              isError: false, isLoading: false, buttonColorChage: false));

          Navigator.push(
              event.context,
              AppPages.generateRouteSettings(const RouteSettings(
                  name: Routers.onboardingRocketAnimation)));
          ToastUtil.show(result["message"] ?? "");
        } else {
          ToastUtil.show(result["message"] ?? "");
          emit(state.copyWith(isError: true, isLoading: false));
        }
      });
    });

    on<_GetProfile>((event, emit) async {
      emit(state.copyWith(
          isError: false, isLoading: true, buttonColorChage: false));

      final Either<MainFailure, ProfileeModel> getProfile =
          await _onboarService.getProfile();

      return getProfile.fold((error) {
        log("getProfile error is found");
        emit(state.copyWith(
            profileeModel: null,
            isError: true,
            isLoading: false,
            buttonColorChage: false));
        handleError(error: error, routeName: Routers.onBoardingphone);
      }, (result) async {
        emit(state.copyWith(
            profileeModel: result,
            isError: false,
            isLoading: false,
            buttonColorChage: false));
        inspect(result);
        if (result.fullName != null &&
            result.appLanguage != null &&
            result.entrepreneurType != null) {
          await SharedPrefUtil.writeString(
              userName, result.fullName!.toString());
          kUserName = result.fullName!;

          Navigator.pushAndRemoveUntil(
              event.context,
              AppPages.generateRouteSettings(
                  const RouteSettings(name: Routers.mainPage)),
              (route) => false);
        } else {
          Navigator.push(
              event.context,
              AppPages.generateRouteSettings(
                  const RouteSettings(name: Routers.onBoardingName)));
        }
      });
    });
  }
}
