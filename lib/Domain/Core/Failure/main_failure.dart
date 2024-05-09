
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:number_one_academy_v2/Config/pages.dart';
import 'package:number_one_academy_v2/Config/routers.dart';
import 'package:number_one_academy_v2/Utils/global_data.dart';
import 'package:number_one_academy_v2/Utils/toast_urils.dart';
part 'main_failure.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clientFailure() = _CilentFailure;
  const factory MainFailure.serverFailure([String? message]) = _ServerFailure;
  const factory MainFailure.unAuthorisedException([String? message]) =
      _UnAuthorisedException;
  const factory MainFailure.badRequestException([String? message]) =
      _BadRequestException;
  
}

void handleError({required MainFailure error, required String routeName}) {
  error.when(clientFailure: () {
    debugPrint('Network Error');
    final BuildContext? context = navigatorKey.currentContext;
    throw Navigator.pushReplacement(
        context!,
        AppPages.generateRouteSettings(
            RouteSettings(name: Routers.networkError, arguments: routeName)));
    // Handle network error scenario
  }, serverFailure: ([String? message]) {
    debugPrint('Server Error: $message');
    final BuildContext? context = navigatorKey.currentContext;
    throw Navigator.pushReplacement(
        context!,
        AppPages.generateRouteSettings(
            RouteSettings(name: Routers.serverError, arguments: routeName)));
  }, unAuthorisedException: ([String? message]) {
    debugPrint('Unauthorised: $message');
    final BuildContext? context = navigatorKey.currentContext;
    throw Navigator.pushAndRemoveUntil(
      context!,
      AppPages.generateRouteSettings(const RouteSettings(name: Routers.onBoarding)),
      (route) => false, // Replace false with your custom condition
    );
  }, badRequestException: ([String? message]) {
    debugPrint('Invalid Request: $message');
    ToastUtil.show('Invalid Request: $message');
  },
 
 
  );
}
