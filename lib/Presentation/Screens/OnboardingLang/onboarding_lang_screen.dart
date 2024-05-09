import 'dart:core';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:number_one_academy_v2/Application/language/language_bloc.dart';
import 'package:number_one_academy_v2/Config/pages.dart';
import 'package:number_one_academy_v2/Config/routers.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/button_custom.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/text_custom.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import '../../../Utils/constants.dart';
import '../../Widgets/onboarding_background.dart';

class OnBoardingLang extends StatefulWidget {
  const OnBoardingLang({super.key});

  @override
  State<OnBoardingLang> createState() => _OnBoardingLangState();
}

class _OnBoardingLangState extends State<OnBoardingLang> {
  List<Languages> lan = [
    Languages(true, false, "E", "English"),
    Languages(false, false, "മ", "മലയാളം"),
    Languages(false, false, "த", "தமிழ்"),
    Languages(false, true, "ह", "हिंदी"),
    Languages(false, true, "ಕ", "ಕನ್ನಡ")
  ];
  @override
  void initState() {
    super.initState();

    context.read<LanguageBloc>().add(const LanguageEvent.getLanguageList());

    // Provider.of<SignUpProvider>(context, listen: false)
    //     .languageListProfun(context: context);
  }

  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   BlocProvider.of<LanguageBloc>(context)
    //       .add(const LanguageEvent.getLanguageList());
    // });
    //  BlocProvider.of<LanguageBloc>(context)
    //       .add(const LanguageEvent.getLanguageList());
    return Scaffold(
      body: Stack(
        children: [
          const OnboarBackGround(),
          Positioned(
              left: 17,
              top: 25,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Center(
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: primaryColor,
                          size: 18,
                        ),
                        TextCustom(
                          text: "Back",
                          fontWeight: FontWeight.bold,
                          textColor: secondaryColor,
                        )
                      ],
                    ),
                  ),
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 45.h,
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: SvgPicture.asset(
                          splashLogo,
                          height: 53.65.h,
                          width: 70.65.w,
                        )),
                    SizedBox(
                      height: 45.h,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextCustom(
                        text: "Select Preferred Languages",
                        fontWeight: FontWeight.bold,
                        size: 20.sp,
                        textColor: secondaryColor,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextCustom(
                        text: "We can serve you with curated content",
                        textColor: textGreyColor,
                        size: 10.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    BlocBuilder<LanguageBloc, LanguageState>(
                        builder: (context, state) {
                      return state.isLoading
                          ? const SizedBox()
                          : GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 20.0,
                                crossAxisSpacing: 42.0,
                                childAspectRatio: MediaQuery.of(context)
                                        .size
                                        .width /
                                    (MediaQuery.of(context).size.height / 5.5),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: lan[index].activeOrNot
                                            ? primaryColor
                                            : whiteColor),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      10.0,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 4,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: lan[index].activeOrNot
                                                      ? primaryColor
                                                      : secondaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 9,
                                                    right: 9,
                                                    bottom: 7),
                                                child: Text(
                                                  lan[index].firstLetter

                                                  // sign.languageModel?[index]
                                                  //         .code ??
                                                  //     ""
                                                  ,
                                                  // lan[index].firstLetter,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 28.sp,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                          TextCustom(
                                            text: lan[index].title
                                            // sign.languageModel?[index]
                                            //         .name ??
                                            //     ""
                                            ,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            index == 0
                                                ? SvgPicture.asset(tickIcon)
                                                : const SizedBox()
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                    })
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: ButtonCustom(
                      butonText: "Continue",
                      onPressed: () {
                        Navigator.push(
                            context,
                            AppPages.generateRouteSettings(const RouteSettings(
                                name: Routers.onBoardingBusinus)));
                      },
                      validate: true,
                      loading: false),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Languages {
  String title;
  String firstLetter;
  bool activeOrNot;
  bool commingSoon;
  Languages(this.activeOrNot, this.commingSoon, this.firstLetter, this.title);
}
