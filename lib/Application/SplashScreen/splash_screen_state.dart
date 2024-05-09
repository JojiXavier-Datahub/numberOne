part of 'splash_screen_bloc.dart';

@freezed
class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState(
      {required bool networkError,
      required bool success,
      required bool logoChange,
      required bool sizechange,
      required bool settingsOpened,
      bool? locationServiceDenied}) = _SplashScreenState;

  factory SplashScreenState.initial() {
    return const SplashScreenState(
        logoChange: false,
        sizechange: false,
        networkError: false,
        success: false,
        settingsOpened: false);
  }
}
