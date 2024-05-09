import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Config/pages.dart';
import 'package:number_one_academy_v2/Config/routers.dart';
import 'package:number_one_academy_v2/Presentation/Screens/OnboardingScreen/widget/onboarding_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../Utils/colors.dart';
import '../../../Utils/constants.dart';
import '../../Widgets/button_custom.dart';
import '../../Widgets/onboarding_background.dart';
import '../OnboardingPhoneScreen/onboarding_phone_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<String> images = [
    onBoardingImg1,
    onBoardingImg2,
    onBoardingImg3,
  ];

  final List<String> pageHeading = [
    'Awesome Mentors',
    'Curated Content',
    'Affordable Fees',
  ];
  final List<String> pageContents = [
    'Our expert entrepreneurship development advisors empower you to create your own success stories, with strong conviction.',
    'We deliver the right content to our learners through curation and engage them with practical and meaningful materials, to fix their challenges in scaling businesses.',
    'We provide industry-best online business courses for budding entrepreneurs at the industry\'s best rates, helping them throughout their journey towards success.',
  ];
  final CarouselController carouselController = CarouselController();

  int currentPage = 0;

  changepage(int value) {
    setState(() {
      currentPage = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
        body: Stack(
      children: [
        InkWell(onTap: () {}, child: const OnboarBackGround()),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 110.h,
            ),
            Column(
              children: [
                Image.asset(
                  images[currentPage],
                  height: 250.h,
                  width: 300.w,
                ),
                SizedBox(
                  height: 40.h,
                ),
                SizedBox(
                  height: 30,
                  width: 100,
                  child: SmoothIndicator(
                    offset: currentPage.toDouble(),
                    count: images.length,
                    effect: ExpandingDotsEffect(
                      dotColor: secondaryColor,
                      activeDotColor: primaryColor,
                      dotWidth: 10.0.w,
                      dotHeight: 10.0.h,
                      expansionFactor: 4,
                    ),
                    size: Size.zero,
                  ),
                ),
                CarouselSlider(
                  items: [
                    OnboardingSliders(
                      heading: pageHeading[0],
                      content: pageContents[0],
                    ),
                    OnboardingSliders(
                      heading: pageHeading[1],
                      content: pageContents[2],
                    ),
                    OnboardingSliders(
                      heading: pageHeading[2],
                      content: pageContents[2],
                    ),
                  ],
                  options: CarouselOptions(
                      height: 270.h,
                      viewportFraction: 1,
                      onPageChanged: (index, _) async {
                        await changepage(index);
                      }),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: ButtonCustom(
                  loading: false,
                  butonText: 'Get Started',
                  fontweight: FontWeight.w600,
                  onPressed: () async {
                    Navigator.pushReplacement(
                      context,
                     AppPages.generateRouteSettings(const RouteSettings(name: Routers.onBoardingphone))
                    );
                  },
                  validate: true),
            ),
          ],
        ),
      ],
    ));
  }
}
