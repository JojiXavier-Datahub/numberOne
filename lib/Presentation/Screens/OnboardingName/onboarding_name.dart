import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:number_one_academy_v2/Application/OnboardingPhone/onboarding_phone_bloc.dart';
import 'package:number_one_academy_v2/Config/pages.dart';
import 'package:number_one_academy_v2/Config/routers.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/button_custom.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/text_custom.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Utils/toast_urils.dart';
import '../../../Utils/constants.dart';
import '../../Widgets/onboarding_background.dart';

class OnBoardingName extends StatefulWidget {
  const OnBoardingName({super.key});

  @override
  State<OnBoardingName> createState() => _OnBoardingNameState();
}

class _OnBoardingNameState extends State<OnBoardingName> {
  TextEditingController nameController = TextEditingController();
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
                      height: 45.h,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextCustom(
                        text: "Hi! Let’s onboard you",
                        fontWeight: FontWeight.bold,
                        size: 20.sp,
                        textColor: secondaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextCustom(
                        text: "Your Name",
                        fontWeight: FontWeight.bold,
                        size: 20.sp,
                        textColor: primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(26.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: TextFormField(
                          controller: nameController,
                          style: const TextStyle(color: secondaryColor),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 20),
                            border: InputBorder.none,
                          ),
                          onChanged: (name) {
                            context.read<OnboardingPhoneBloc>().add(
                                OnboardingPhoneEvent.phoneValidation(
                                    phonevalidation: name.length,count: 2));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: BlocBuilder<OnboardingPhoneBloc,OnboardingPhoneState>(
                    builder: (context,state) {
                      return ButtonCustom(
                          butonText: "Continue",
                          onPressed: () {
                            if (nameController.text == "" ||
                                nameController.text.length < 2) {
                              ToastUtil.show("Please enter valid Name");
                            } else {
                              context.read<OnboardingPhoneBloc>().add(
                                  OnboardingPhoneEvent.nameStoring(
                                      name: nameController.text, context: context));
                            }
                            Navigator.push(
                                context,
                                AppPages.generateRouteSettings(const RouteSettings(
                                    name: Routers.onBoardingLang)));
                          },
                          validate: state.buttonColorChage,
                          loading: false);
                    }
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
