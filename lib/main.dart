import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Config/pages.dart';
import 'package:number_one_academy_v2/Config/routers.dart';
import 'package:number_one_academy_v2/Presentation/Screens/SplashScreen/splash_screen.dart';
import 'Domain/Core/Di/injectable.dart';
import 'Utils/colors.dart';
import 'Utils/global_data.dart';

Future<void> main() async {
  //   SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]);
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp, DeviceOrientation.portraitDown
  // ]).then((value) {
    runApp(const MyApp());
  // },);

  
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     statusBarColor: Colors.transparent,
  //     statusBarIconBrightness: Brightness.dark));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [...AppPages.blocer(context)],
            child: MaterialApp(
                navigatorObservers: [AppPages.observer],
                initialRoute: Routers.splash,
                onGenerateRoute: AppPages.generateRouteSettings,
                navigatorKey: navigatorKey,
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                debugShowCheckedModeBanner: false,
                title: 'Number One Academy',
                theme: ThemeData(
                  fontFamily: 'Euclid Circular A',
                  colorScheme: ColorScheme.fromSeed(
                      seedColor: const Color.fromARGB(255, 102, 79, 142)),
                  useMaterial3: true,
                  scaffoldBackgroundColor: whiteColor,
                  dialogBackgroundColor: whiteColor,
                  bottomSheetTheme: const BottomSheetThemeData(
                    backgroundColor: whiteColor,
                  ),
                ),
                home: 
                // const PaymentSuccess()
                // OrderDetails()
                // const SubscriptionDetails()
                 const SplashScreen(),
                ),
          );
        });
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:number_one_academy_v2/Test/test_provider.dart';
// import 'package:provider/provider.dart';

// import 'Presentation/Screens/SplashScreen/splash_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//         designSize: const Size(360, 800),
//         minTextAdapt: true,
//         splitScreenMode: true,
//         builder: (context, child) {
//           return MultiBlocProvider(
//             providers: [
//               BlocProvider(
//                 create: (context) => getIt<LanguageBloc>(),
//               )
//             ],
//             child: MaterialApp(
//                 supportedLocales: const [
//                   Locale('en'), // English
//                   Locale('ml'), // Spanish
//                   Locale('ta'), // Tamil
//                   Locale('hi'), // Hindi
//                   Locale('kn'), // Kannada
//                 ],
//                 localizationsDelegates: const [
//                   AppLocalizations.delegate,
//                   GlobalCupertinoLocalizations.delegate,
//                   GlobalMaterialLocalizations.delegate,
//                   GlobalWidgetsLocalizations.delegate
//                 ],
//                 title: 'Number One Academy',
//                 theme: ThemeData(
//                   colorScheme:
//                       ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//                   useMaterial3: true,
//                 ),
//                 debugShowCheckedModeBanner: false,
//                 home:
//                      // const CourseDetailsThree()
//                     // const CourseDetailsTwo()
//                     // const CourseDetails()
//                  const SplashScreen(),
//                 ),
//           );
//         });
//   }
// }
// const CourseDetailsFour()
//  const CourseDetailsThree()
// const CourseDetailsTwo()
// const CourseDetails()
//                 // const SplashScreen(),
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:number_one_academy_v2/Test/test_provider.dart';
// import 'package:number_one_academy_v2/Utils/colors.dart';
// import 'package:provider/provider.dart';
// import 'Presentation/Screens/SplashScreen/splash_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   //sdjfs sdfvs

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//         designSize: const Size(360, 800),
//         minTextAdapt: true,
//         splitScreenMode: true,
//         builder: (context, child) {
//           return MultiProvider(
//             providers: [ChangeNotifierProvider<SignUpProvider>(create: (context)=> SignUpProvider())],
//             child: MaterialApp(
//               title: 'Number One Academy',
//               theme: ThemeData(
//                 colorScheme: ColorScheme.fromSeed(seedColor: secondaryColor),
//                 useMaterial3: true,
//               ),
//               home: const SplashScreen(),
//             ),
//           );
//         });
//   }
// }