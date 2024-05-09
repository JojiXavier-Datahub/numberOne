import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_one_academy_v2/Application/Insructor/instructor_bloc.dart';
import 'package:number_one_academy_v2/Application/OnboardingPhone/onboarding_phone_bloc.dart';
import 'package:number_one_academy_v2/Application/SplashScreen/splash_screen_bloc.dart';
import 'package:number_one_academy_v2/Application/course_list/course_list_bloc.dart';
import 'package:number_one_academy_v2/Application/language/language_bloc.dart';
import 'package:number_one_academy_v2/Application/subscription/subscription_bloc.dart';
import 'package:number_one_academy_v2/Presentation/Screens/MainPage/screen_main_page.dart';
import 'package:number_one_academy_v2/Presentation/Screens/OnboardingBusinus/onboarding_businus.dart';
import 'package:number_one_academy_v2/Presentation/Screens/OnboardingLang/onboarding_lang_screen.dart';
import 'package:number_one_academy_v2/Presentation/Screens/OnboardingName/onboarding_name.dart';
import 'package:number_one_academy_v2/Presentation/Screens/OnboardingOtp/onboarding_otp_sreen.dart';
import 'package:number_one_academy_v2/Presentation/Screens/OnboardingRocketAnimation/onboaring_rocket_ani_screen.dart';
import 'package:number_one_academy_v2/Presentation/Screens/OnboardingScreen/onboarding_screen.dart';
import 'package:number_one_academy_v2/Presentation/Screens/couse_learner/couse_learner_one.dart';
import 'package:number_one_academy_v2/Presentation/Screens/purchase/purchase_screen.dart';
import '../Domain/Core/Di/injectable.dart';
import '../Presentation/Screens/ErrorScreen/error_screen.dart';
import '../Presentation/Screens/OnboardingPhoneScreen/onboarding_phone_screen.dart';
import '../Presentation/Screens/SplashScreen/splash_screen.dart';
import 'routers.dart';

class AppPages {
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];

  static List<PageEntity> routes() {
    return [
      // PageEntity(
      //     bloc: BlocProvider(create: (ctx) => getIt<GlobalValueBloc>()),
      //     path: null,
      //     page: null),
      // PageEntity(
      //     bloc: BlocProvider(create: (ctx) => getIt<CountryPickerBloc>()),
      //     path: null,
      //     page: null),
      PageEntity(
          bloc: null,
          path: Routers.serverError,
          page: const ErrorScreen.server()),
      PageEntity(
          bloc: null,
          path: Routers.networkError,
          page: const ErrorScreen.network()),
      PageEntity(
          path: Routers.splash,
          page: const SplashScreen(),
          bloc: BlocProvider(create: (ctx) => getIt<SplashScreenBloc>())),
      PageEntity(
          path: Routers.onBoarding, page: const OnBoardingScreen(), bloc: null),
      PageEntity(path: Routers.mainPage, page: ScreenMainPage(), bloc: null),
      PageEntity(
          path: Routers.onBoardingphone,
          page: const OnBoardingPhone(),
          bloc: BlocProvider(create: (ctx) => getIt<OnboardingPhoneBloc>())),
      PageEntity(
          path: Routers.onBoardingOtp, page: const OnBoardingOtp(), bloc: null),
      PageEntity(
          path: Routers.onBoardingName,
          page: const OnBoardingName(),
          bloc: null),
      PageEntity(
          path: Routers.onBoardingLang,
          page: const OnBoardingLang(),
          bloc: BlocProvider(create: (ctx) => getIt<LanguageBloc>())),
      PageEntity(
          path: Routers.onBoardingBusinus,
          page: const OnBoardingBusinus(),
          bloc: null),
      // PageEntity(
      //     path: Routers.instructorsProfile,
      //     page: const InstructorProfile(),
      //     bloc: null),
          PageEntity(
          path: Routers.onboardingRocketAnimation,
          page:  const OnboardingRocketAnimation(),
          bloc: null),
      PageEntity(
          path: null,
          page: null,
          bloc: BlocProvider(create: (ctx) => getIt<CourseListBloc>())),
      PageEntity(
          path: Routers.more, page: const CourseLearnerOne(), bloc: null),
      // PageEntity(
      //     path: Routers.paymentDetails, page: const PurchaseScreen(
      //       isfromsubscription: ,
      //     ), bloc: null),
      PageEntity(
          path: null,
          page: null,
          bloc: BlocProvider(create: (_) => getIt<InstructorBloc>())),
      PageEntity(
          path: null,
          page: null,
          bloc: BlocProvider(create: (_) => getIt<SubscriptionBloc>())),
      // PageEntity(
      //     path: Routers.googleMap,
      //     page: const GoogleMapScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<FeedOnBoardingBloc>())),
      // PageEntity(
      //     path: Routers.chooseLocation,
      //     page: ChooseLocation(),
      //     bloc: BlocProvider(create: (_) => getIt<ChooseLocationBloc>())),
      // PageEntity(
      //     path: Routers.profile,
      //     page: const ProfileScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.friendsList,
      //     page: const FriendsList(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(path: Routers.hifiList, page: const HifiList(), bloc: null),
      // PageEntity(
      //     path: Routers.settings,
      //     page: const SettingsScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<SettingsBloc>())),
      // PageEntity(
      //     path: Routers.search,
      //     page: const SearchScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ChooseLocationBloc>())),
      // PageEntity(
      //     path: Routers.orderTracking,
      //     page: const TrackingScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ChooseLocationBloc>())),
      // PageEntity(
      //     path: Routers.forgotPassword,
      //     page: const ForgotScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ForgotBloc>())),
      // PageEntity(
      //     path: Routers.addNewPost,
      //     page: const AddNewPostScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<AddNewPostBloc>())),
      // PageEntity(
      //     path: Routers.choosePostLocation,
      //     page: ChoosePostLocation(),
      //     bloc: null),
      // PageEntity(
      //     path: Routers.applyCoupon,
      //     page: const ApplyCouponScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ApplyCouponBloc>())),
      // PageEntity(
      //     path: Routers.suggestion,
      //     page: const SuggestionScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ChooseLocationBloc>())),
      // PageEntity(
      //     path: Routers.accountSearch,
      //     page: const AccountSearchScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<AccountSearchBloc>())),
      // PageEntity(
      //     path: Routers.reportIssue, page: const ReportScreen(), bloc: null),
      // PageEntity(
      //     path: Routers.favourite,
      //     page: const FavouriteScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ChooseLocationBloc>())),
      // PageEntity(
      //     path: Routers.editPost,
      //     page: const EditPost(),
      //     bloc: BlocProvider(create: (_) => getIt<ChooseLocationBloc>())),
      // PageEntity(
      //     path: Routers.savedAddress,
      //     page: const SavedAddressScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ChooseLocationBloc>())),
      // PageEntity(
      //     path: Routers.privacy,
      //     page: const PrivacyScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ChooseLocationBloc>())),
      // PageEntity(
      //     path: Routers.changePassword,
      //     page: const ChangePasswordScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ChooseLocationBloc>())),
      // PageEntity(
      //     path: Routers.twoFactorAuth,
      //     page: const TwoFactorAuth(),
      //     bloc: BlocProvider(create: (_) => getIt<ChooseLocationBloc>())),
      // PageEntity(
      //     path: Routers.accountPrivacy,
      //     page: const AccountPrivacyScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ChooseLocationBloc>())),
      // PageEntity(
      //     path: Routers.blockedUser,
      //     page: const BlockedUserScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<SettingsBloc>())),
      // PageEntity(
      //     path: Routers.privacyPolicy,
      //     page: const PrivacyPolicyScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ChooseLocationBloc>())),
      // PageEntity(
      //     path: Routers.termsAndConditions,
      //     page: const TermsAndConditions(),
      //     bloc: BlocProvider(create: (_) => getIt<ChooseLocationBloc>())),
      // PageEntity(
      //     path: Routers.language,
      //     page: const LanguageScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ChooseLocationBloc>())),
      // PageEntity(
      //     path: Routers.postDetails,
      //     page: const PostDetailsScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<FeedBloc>())),
      // PageEntity(
      //     path: Routers.postDetailsNotAvailable,
      //     page: const PostNotAvailable(),
      //     bloc: null),
      // PageEntity(
      //     path: Routers.editProfile,
      //     page: const EditProfileScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.editName,
      //     page: const EditName(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.editBio,
      //     page: const EditBio(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.editPhoneVerificationOtp,
      //     page: const EditPhoneVerificationOtpScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.passwordVerifyScreen,
      //     page: PasswordVerifyScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.editPhone,
      //     page: const EditPhone(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.editDob,
      //     page: const EditDob(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.editGender,
      //     page: const EditGender(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.orders,
      //     page: const MyOrder(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.orderSummary,
      //     page: const OrderSummaryScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.categories,
      //     page: const CategoriesScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.dishSearch,
      //     page: const DishSearchSreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.couponBox,
      //     page: const CouponBoxScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.savedCoupons,
      //     page: const SavedCoupons(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.yourCoupons,
      //     page: const YourCouponsScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.redeemQr,
      //     page: const RedeemCouponQrScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.couponRedeemSuccess,
      //     page: const CouponRedeemSuccessScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.offerRestaurantCoupon,
      //     page: const OfferRestaurantCouponScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.restaurantCoupon,
      //     page: const RestaurantCouponsScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.orderRecode,
      //     page: const OrderRecode(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.orderDelivered,
      //     page: const OrderDelivered(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.expolre,
      //     page: const Explore(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.orderPlaced,
      //     page: const OrderPlaced(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.hashDetail,
      //     page: const HashTagDetaileScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.restaurantReviewPages,
      //     page: const Reviewpagescreenss(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.couponCart,
      //     page: const CouponCart(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.chatPage,
      //     page: const ChatScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.notification,
      //     page: const NotificationScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<NotificationBloc>())),
      // PageEntity(
      //     path: Routers.enterNewPassWord,
      //     page: EnterNewPassWord(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.expolreNow,
      //     page: const ExploreNow(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.topEventViewAll,
      //     page: const TopEventViewAll(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.eventDetails,
      //     page: const EventDetailsScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.influencersDetails,
      //     page: const InfluencersDetails(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.exploreFoodiesStories,
      //     page: const ExploreFoodiesStories(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.foodiesStoriesDetailsScreen,
      //     page: const FoodiesStoriesDetailsScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.trendingDetailedView,
      //     page: const TrendingDetailedView(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.trendingResDetails,
      //     page: const TrendingResDetails(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.butomyContributeHome,
      //     page: const ButomyContributeHome(),
      //     bloc: BlocProvider(create: (_) => getIt<ContributorBloc>())),
      // PageEntity(
      //     path: Routers.contributeVerification,
      //     page: const ContributeVerification(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.verificationSuccess,
      //     page: const VerificationSuccess(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.contributorWallet,
      //     page: const ContributorWallet(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.myContributions,
      //     page: const MyContributions(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.suggestRestaurent,
      //     page: const SuggestRestaurent(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.contributionSubmitted,
      //     page: const ContributionSubmitted(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.walletsScreen,
      //     page: const WalletsScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.withdrawCash,
      //     page: const WithdrawCash(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.walletHistory,
      //     page: const WalletHistory(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.bankDetails,
      //     page: const BankDetails(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.withdrawSuccessScreen,
      //     page: const WithdrawSuccessScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.contributorProfileInformation,
      //     page: const ContributorProfileInformation(),
      //     bloc: BlocProvider(create: (_) => getIt<ChatBloc>())),
      // PageEntity(
      //     path: Routers.getVerifiedScreen,
      //     page: const GetVerifiedScreen(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.uploadIdProofScreen,
      //     page: const UploadIdProofScreen(),
      //     bloc: null),
      // PageEntity(
      //     path: Routers.weAreNotYet,
      //     page: const WeAreNotYet(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.checkResturentList,
      //     page: const CheckResturentList(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
      // PageEntity(
      //     path: Routers.joinFoodieCommunity,
      //     page: const JoinFoodieCommunity(),
      //     bloc: BlocProvider(create: (_) => getIt<ProfileBloc>())),
    ];
  }

  static List<dynamic> blocer(BuildContext context) {
    List<dynamic> blocerList = <dynamic>[];
    for (var blocer in routes()) {
      if (blocer.bloc != null) {
        blocerList.add(blocer.bloc);
      }
    }
    return blocerList;
  }

  static PageRouteBuilder generateRouteSettings(RouteSettings settings) {
    if (settings.name != null) {
      var result = routes().where((element) => element.path == settings.name);

      if (result.isNotEmpty) {
        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => result.first.page!,
          settings: settings,
          transitionDuration: const Duration(seconds: 0),
        );
      }
    }
    return PageRouteBuilder(
      pageBuilder: (context, animation1, animation2) => const OnBoardingPhone(),
      transitionDuration: const Duration(seconds: 0),
    );
    ;
  }
}

class PageEntity<T> {
  String? path;
  Widget? page;
  dynamic bloc;

  PageEntity({required this.path, required this.page, required this.bloc});
}
