import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Config/pages.dart';
import 'package:number_one_academy_v2/Config/routers.dart';
import 'package:number_one_academy_v2/Domain/OnboardingPhone/Service/onboar_phone_service.dart';
import 'package:number_one_academy_v2/Utils/Helper/check_connectivity.dart';
import 'package:number_one_academy_v2/Utils/Helper/shared_pref.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';
part 'splash_screen_bloc.freezed.dart';
part 'splash_screen_event.dart';
part 'splash_screen_state.dart';

@injectable
class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  // final SplashScreenService splashScreenService;
  // final AppSettingService appSettingService;
  // final ProfileService profileService;
  final OnboaredingPhoneService _onboarService;
  SplashScreenBloc(this._onboarService) : super(SplashScreenState.initial()) {
    on<_Started>((event, emit) async {
      if (await checkNetworkConnectivity()) {
        emit(state.copyWith(settingsOpened: false));
        Future.delayed(Duration.zero)
            .then((value) => add(_IsExistingCustomer(event.context)));
      } else {
        Future.delayed(Duration.zero).then((value) => Navigator.pushReplacement(
            event.context,
            AppPages.generateRouteSettings(const RouteSettings(
                name: Routers.networkError, arguments: Routers.splash))));
      }
    });
    on<_ChangeSize>((event, emit) async {
      await Future.delayed(const Duration(seconds: 2)).then((value) async {
        kKeyAccessToken = await SharedPrefUtil.getString(accesToken);
        kUserName = await SharedPrefUtil.getString(userName);
        krefreshToken = await SharedPrefUtil.getString(refreshToken);

        if (kKeyAccessToken != '' && kUserName != "") {
          log("username is found");
          //   log("******** Authenticated *********************");
          //   final Either<MainFailure, OtpVerificationModel> verifyOtp =
          //       await _onboarService.refreshToken(refreshToken: krefreshToken);

          //   return verifyOtp.fold((error) {
          // handleError(
          //     error: const MainFailure.serverFailure(),
          //     routeName: Routers.onBoardingOtp);
          //   }, (result) async {
          //     log("token is ${result.accessToken!.toString()}");

          //     log("hai muth");
          //     await SharedPrefUtil.writeString(
          //         accesToken, result.accessToken!.toString());

          //     // await SharedPrefUtil.writeString(
          //     //     refreshToken, result.refreshToken!.toString());

          //     // var testoken = await SharedPrefUtil.getString(accesToken);
          //     // log("last token is $testoken");
          //     // final ttt = await SharedPrefUtil.getString(accesToken);
          //     // log('hhhhhh $ttt');

          //     // kKeyAccessToken = result.accessToken!;

          //     // refreshToken = result.refreshToken!;

          //     // Future.delayed(const Duration(seconds: 2)).then((value) {
          //     //   add(_GetProfile(context: event.context));
          //     // });

          //     // ToastUtil.show(result["message"] ?? "");
          //     // } else {
          //     //   ToastUtil.show(result["message"] ?? "");
          //     //   emit(state.copyWith(isError: true, isLoading: false));
          //     // }
          //   });
        }
        emit(state.copyWith(logoChange: true));
      });

      await Future.delayed(const Duration(seconds: 3)).then(
        (value) {
          emit(state.copyWith(sizechange: true));
        },
      );
      await Future.delayed(const Duration(seconds: 4)).then(
        (value) {
          if (kKeyAccessToken == "" && kUserName == "") {
            add(SplashScreenEvent.navigateTo(
                context: event.context, routeName: Routers.onBoarding));
          } else {
            // event.context
            //     .read<OnboardingPhoneBloc>()
            //     .add(OnboardingPhoneEvent.getProfile(context: event.context));
            add(SplashScreenEvent.navigateTo(
                context: event.context,
                routeName: Routers.onboardingRocketAnimation));
          }
        },
      );

      //  Timer(
      //   const Duration(seconds: 2),
      //   () async {

      //   },
      // );
      // Timer(
      //   const Duration(seconds: 3),
      //   () {

      //   },
      // );
      // Timer(
      //   const Duration(seconds: 4),
      //   () async {

      //   },
      // );
    });

    // on<_EnableLocation>((event, emit) {
    //   emit(state.copyWith(locationError: false));
    //   showEnableLocationDialog(
    //       ctx: event.context, serviceError: state.locationServiceDenied!);
    // });

    // on<_OpenSetting>((event, emit) {
    //   emit(state.copyWith(settingsOpened: true));
    // });
    // on<_OpenSetting>((event, emit) {
    //   emit(state.copyWith(settingsOpened: true));

    on<_NavigateTo>((event, emit) async {
      await Future.delayed(Duration.zero).then((value) =>
          Navigator.pushReplacement(
              event.context,
              AppPages.generateRouteSettings(
                  RouteSettings(name: event.routeName))));
    });

    // on<_IsExistingCustomer>((event, emit) async {
    //   final bool hasToken = await SharedPrefUtil.contains(kKeyAccessToken);
    //   if (hasToken) {
    //     String userId = await SharedPrefUtil.getString(kKeyUserId);
    //     Either<MainFailure, ProfileModel> profileData = await profileService
    //         .fetchProfileData(userId: userId, memberId: userId);
    //     Future.delayed(Duration.zero).then((value) {
    //       if (profileData != null) {
    //         add(SplashScreenEvent.navigateTo(
    //             context: event.context, routeName: Routers.mainPage));
    //       } else {
    //         add(SplashScreenEvent.navigateTo(
    //             context: event.context, routeName: Routers.onBoarding));
    //       }
    //     });
    //   } else {
    //     add(SplashScreenEvent.navigateTo(
    //         context: event.context, routeName: Routers.onBoarding));
    //     // Future.delayed(Duration.zero)
    //     //     .then((value) => add(_FetchLocation(context: event.context)));
    //   }
    // });

    // on<_FetchLocation>((event, emit) async {
    //   if (event.userData != null) {
    //     bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    //     if (serviceEnabled) {
    //       LocationPermission permission = await Geolocator.checkPermission();
    //       if (permission == LocationPermission.always ||
    //           permission == LocationPermission.whileInUse) {
    //         Future.delayed(Duration.zero).then((value) => add(
    //             _LocationThroughGps(
    //                 context: event.context, userData: event.userData)));
    //       } else {
    //         Future.delayed(Duration.zero).then((value) => add(
    //             _LocationThroughProfile(
    //                 context: event.context, userData: event.userData!)));
    //       }
    //     } else {
    //       Future.delayed(Duration.zero).then((value) => add(
    //           _LocationThroughProfile(
    //               context: event.context, userData: event.userData!)));
    //     }
    //   } else {
    //     add(_LocationThroughGps(context: event.context));
    //   }
    // });

    // on<_LocationThroughGps>((event, emit) async {
    //   Either<MainFailure, Position> currentLocation =
    //       await splashScreenService.fetchCurrentLocation();
    //   currentLocation.fold((error) {
    //     if (error == const MainFailure.locationServiceFailure()) {
    //       return emit(
    //           state.copyWith(locationError: true, locationServiceDenied: true));
    //     } else {
    //       return emit(state.copyWith(
    //           locationError: true, locationServiceDenied: false));
    //     }
    //   }, (result) async {
    //     String locationName = "Unknown Location";
    //     String address = "";
    //     try {
    //       List<Placemark> placeMarks =
    //           await placemarkFromCoordinates(result.latitude, result.longitude);
    //       locationName =
    //           "${placeMarks.first.subLocality!.trim().isEmpty ? placeMarks.first.locality : placeMarks.first.subLocality}";
    //       address =
    //           "${placeMarks.first.subLocality} ${placeMarks.first.locality} ";
    //       debugPrint("location name fetching Success");
    //     } catch (e) {
    //       debugPrint("location name fetching Error : $e");
    //     }
    //     await Future.delayed(Duration.zero).then((value) => event.context
    //         .read<GlobalValueBloc>()
    //         .add(GlobalValueEvent.started(
    //             location: LatLng(result.latitude, result.longitude),
    //             locName: locationName,
    //             locAddress: address)));
    //     Future.delayed(Duration.zero).then((value) {
    //       if (event.userData != null) {
    //         add(SplashScreenEvent.navigateTo(
    //             context: event.context, routeName: Routers.bottomNav));
    //       } else {
    //         add(SplashScreenEvent.navigateTo(
    //             context: event.context, routeName: Routers.onBoarding));
    //       }
    //     });
    //   });
    // });

    // on<_LocationThroughProfile>((event, emit) {
    //   var userData = event.userData.data;
    //   event.context.read<GlobalValueBloc>().add(GlobalValueEvent.started(
    //       location: LatLng(double.parse(userData?.locationLat ?? "0"),
    //           double.parse(userData?.locationLong ?? "0")),
    //       locName: userData?.address?.memberLocationName ?? "Unknown Location",
    //       locAddress: userData?.address?.memberAddress ?? "Unknown Location"));
    //   add(SplashScreenEvent.navigateTo(
    //       context: event.context, routeName: Routers.bottomNav));
    // });
  }
}
