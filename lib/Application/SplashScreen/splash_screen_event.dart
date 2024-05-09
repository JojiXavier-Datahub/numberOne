part of 'splash_screen_bloc.dart';

@freezed
class SplashScreenEvent with _$SplashScreenEvent {
  const factory SplashScreenEvent.started(BuildContext context) = _Started;
  const factory SplashScreenEvent.enableLocation(BuildContext context) =
      _EnableLocation;
  const factory SplashScreenEvent.openSetting() = _OpenSetting;
  const factory SplashScreenEvent.navigateTo(
      {required String routeName, required BuildContext context}) = _NavigateTo;
  const factory SplashScreenEvent.isExistingCustomer(BuildContext context) =
      _IsExistingCustomer;
      
      // change the size of the widget 
        const factory SplashScreenEvent.changeSize(BuildContext context) = _ChangeSize; 
        // change the logo
                const factory SplashScreenEvent.changelogo(BuildContext context) = _Changelogo;



  // const factory SplashScreenEvent.locationThroughGps(
  //     {required BuildContext context,
  //     ProfileModel? userData}) = _LocationThroughGps;
  // const factory SplashScreenEvent.locationThroughProfile(
  //     {required BuildContext context,
  //     required ProfileModel userData}) = _LocationThroughProfile;
  // const factory SplashScreenEvent.fetchLocation(
  //     {required BuildContext context, ProfileModel? userData}) = _FetchLocation;
}
