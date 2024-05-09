import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:number_one_academy_v2/Application/OnboardingPhone/onboarding_phone_bloc.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/button_custom.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/text_custom.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Utils/toast_urils.dart';
import 'package:provider/provider.dart';
import '../../../Utils/constants.dart';
import '../../Widgets/onboarding_background.dart';

class OnBoardingBusinus extends StatefulWidget {
  const OnBoardingBusinus({super.key});
  @override
  State<OnBoardingBusinus> createState() => _OnBoardingBusinusState();
}

class _OnBoardingBusinusState extends State<OnBoardingBusinus> {
  List<Business> businusslist = [
    Business(false, "assets/svg/onbo_busi_icn1.svg", "Yes"),
    Business(false, "assets/svg/onbo_busi_icn2.svg", "No"),
    Business(false, "assets/svg/onbo_busi_icn3.svg", "Planning To Be"),
  ];
  int radioIndex = -1;

  changeColor(index) {
    setState(() {
      radioIndex = index;
    });
  }

  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                      height: 55.h,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextCustom(
                        text: "Are you an Entrepreneur or a SME Owner?",
                        textColor: textGreyColor,
                        size: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 20.0,
                        crossAxisSpacing: 42.0,
                        childAspectRatio: MediaQuery.of(context).size.width /
                            (MediaQuery.of(context).size.height / 7),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            changeColor(index);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: radioIndex == index
                                      ? primaryColor
                                      : whiteColor),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: businusslist[index].activeOrNot
                                      ? const Color.fromRGBO(255, 201, 43, 1)
                                          .withOpacity(0.6)
                                      : const Color.fromARGB(255, 88, 85, 85)
                                          .withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          businusslist[index].icon),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      TextCustom(
                                        fontWeight: FontWeight.bold,
                                        textColor:
                                            businusslist[index].activeOrNot
                                                ? primaryColor
                                                : secondaryColor,
                                        size: 17.sp,
                                        text: businusslist[index].title,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      radioIndex == index
                                          ? SvgPicture.asset(tickIcon)
                                          : const SizedBox()
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: ButtonCustom(
                      butonText: "Continue",
                      onPressed: () {
                        if (radioIndex == -1) {
                          ToastUtil.show("Please choose one option");
                        } else {
                          context.read<OnboardingPhoneBloc>().add(
                              OnboardingPhoneEvent.updateProfile(
                                  address: "",
                                  appLanguage: "",
                                  businesState: "",
                                  businessAddress: "",
                                  businessCity: "",
                                  businessPincode: "",
                                  businessTurnOver: "",
                                  city: "",
                                  companyName: "",
                                  dateOfBirth: "",
                                  email: "",
                                  fullName: "",
                                  gender: "",
                                  gstNumber: "",
                                  industry: "",
                                  pincode: "",
                                  state: "",
                                  context: context,
                                  entrepreneurType: radioIndex));

                          // Provider.of<SignUpProvider>(context, listen: false)
                          //   .updateProfileProfun(context: context,
                          //   entrepreneurType: radioIndex);
                        }
                      },
                      validate: radioIndex == -1 ? false : true,
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

class Business {
  String icon;
  String title;
  bool activeOrNot;
  Business(
    this.activeOrNot,
    this.icon,
    this.title,
  );
}
