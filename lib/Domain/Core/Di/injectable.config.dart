// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../Application/course_list/course_list_bloc.dart' as _i25;
import '../../../Application/Industry/industry_bloc.dart' as _i26;
import '../../../Application/Insructor/instructor_bloc.dart' as _i18;
import '../../../Application/language/language_bloc.dart' as _i27;
import '../../../Application/OnboardingPhone/onboarding_phone_bloc.dart'
    as _i21;
import '../../../Application/Payment/payment_bloc.dart' as _i22;
import '../../../Application/SplashScreen/splash_screen_bloc.dart' as _i9;
import '../../../Application/subscription/subscription_bloc.dart' as _i23;
import '../../../Application/video_player/video_player_bloc.dart' as _i24;
import '../../../Infrastrutcure/course_repo/course_repo.dart' as _i13;
import '../../../Infrastrutcure/IndustryList/industry_list_repo.dart' as _i15;
import '../../../Infrastrutcure/InstructorList/instructor_list_repo.dart'
    as _i17;
import '../../../Infrastrutcure/Languages/language_repo.dart' as _i20;
import '../../../Infrastrutcure/OnboardingPhone/onboarding_phone_repo.dart'
    as _i6;
import '../../../Infrastrutcure/Payment/payement_repo.dart' as _i8;
import '../../../Infrastrutcure/Subscription/subscription_repo.dart' as _i11;
import '../../Industry/Service/industry_service.dart' as _i14;
import '../../Instructor/Service/instructors_service.dart' as _i16;
import '../../Languages/Service/course_services.dart' as _i12;
import '../../Languages/Service/lanugages_service.dart' as _i19;
import '../../OnboardingPhone/Service/onboar_phone_service.dart' as _i5;
import '../../Payment/Service/payment_service.dart' as _i7;
import '../../Subscription/Service/subscription_service.dart' as _i10;
import '../NetworkServices/network_helper.dart' as _i4;
import '../NetworkServices/network_services.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.NetworkService>(() => _i4.NetworkHelper());
    gh.lazySingleton<_i5.OnboaredingPhoneService>(
        () => _i6.OnboradingPhoneRepository(gh<_i3.NetworkService>()));
    gh.lazySingleton<_i7.PaymentService>(
        () => _i8.PaymentRepo(gh<_i3.NetworkService>()));
    gh.factory<_i9.SplashScreenBloc>(
        () => _i9.SplashScreenBloc(gh<_i5.OnboaredingPhoneService>()));
    gh.lazySingleton<_i10.SubscriptionService>(
        () => _i11.SubscriptionRepo(gh<_i3.NetworkService>()));
    gh.lazySingleton<_i12.CourseService>(
        () => _i13.CourseRepositoty(gh<_i3.NetworkService>()));
    gh.lazySingleton<_i14.IndustryListListService>(
        () => _i15.IndustryListRepo(gh<_i3.NetworkService>()));
    gh.lazySingleton<_i16.InstrotorsService>(
        () => _i17.InstructorsRepo(gh<_i3.NetworkService>()));
    gh.factory<_i18.InstructorBloc>(
        () => _i18.InstructorBloc(gh<_i16.InstrotorsService>()));
    gh.lazySingleton<_i19.LanguageService>(
        () => _i20.LanguageRepo(gh<_i3.NetworkService>()));
    gh.factory<_i21.OnboardingPhoneBloc>(
        () => _i21.OnboardingPhoneBloc(gh<_i5.OnboaredingPhoneService>()));
    gh.factory<_i22.PaymentBloc>(
        () => _i22.PaymentBloc(gh<_i7.PaymentService>()));
    gh.factory<_i23.SubscriptionBloc>(
        () => _i23.SubscriptionBloc(gh<_i10.SubscriptionService>()));
    gh.factory<_i24.VideoPlayerBloc>(
        () => _i24.VideoPlayerBloc(gh<_i12.CourseService>()));
    gh.factory<_i25.CourseListBloc>(
        () => _i25.CourseListBloc(gh<_i12.CourseService>()));
    gh.factory<_i26.IndustryBloc>(
        () => _i26.IndustryBloc(gh<_i14.IndustryListListService>()));
    gh.factory<_i27.LanguageBloc>(
        () => _i27.LanguageBloc(gh<_i19.LanguageService>()));
    return this;
  }
}
