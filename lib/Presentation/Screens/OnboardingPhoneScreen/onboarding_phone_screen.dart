import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:number_one_academy_v2/Application/OnboardingPhone/onboarding_phone_bloc.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/button_custom.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/text_custom.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Utils/toast_urils.dart';
import '../../../Utils/constants.dart';
import '../../Widgets/onboarding_background.dart';

class OnBoardingPhone extends StatefulWidget {
  const OnBoardingPhone({super.key});

  @override
  State<OnBoardingPhone> createState() => _OnBoardingPhoneState();
}

class _OnBoardingPhoneState extends State<OnBoardingPhone> {
  TextEditingController phoneNumberController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
        phoneNumberController.clear();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const OnboarBackGround(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
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
                        text: "Enter your phone number",
                        fontWeight: FontWeight.bold,
                        size: 20.sp,
                        textColor: secondaryColor,
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
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 9, vertical: 5),
                              child: IntlPhoneField(
                                controller: phoneNumberController,
                                dropdownTextStyle:
                                    const TextStyle(color: greyColor),
                                style: const TextStyle(color: secondaryColor),
                                disableLengthCheck: true,
                                showDropdownIcon: false,
                                decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(top: 10, left: 20),
                                  border: InputBorder.none,
                                ),
                                initialCountryCode: 'IN',
                                onChanged: (phone) {
                                  context.read<OnboardingPhoneBloc>().add(
                                      OnboardingPhoneEvent.phoneValidation(
                                          count: 9,
                                          phonevalidation:
                                              phone.number.length));
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: SvgPicture.asset(whatsappIcon),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 54.w, bottom: 12),
                    child: Row(
                      children: [
                        TextCustom(
                          text: "By proceeding, I agree to the ",
                          textColor: secondaryColor,
                          size: 11.sp,
                        ),
                        TextCustom(
                          text: "Terms & Conditions",
                          size: 11.sp,
                          textColor: secondaryColor2,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child:
                        BlocBuilder<OnboardingPhoneBloc, OnboardingPhoneState>(
                            builder: (
                      context,
                      state,
                    ) {
                      return ButtonCustom(
                          butonText: "Proceed",
                          onPressed: ()  async{
                            if (phoneNumberController.text == "" ||
                                phoneNumberController.text.length < 10) {
                              ToastUtil.show("Please enter valid phone number");
                            } else {
                               context.read<OnboardingPhoneBloc>().add(
                                  OnboardingPhoneEvent.sendOtp(
                                      phoneNumber: "+91${phoneNumberController.text}",
                                      context: context));
                                      phoneNumberController.clear();

                              // sign.numberVerification(
                              //     number: phoneNumberController.text,
                              //     context: context);
                            }
                          },
                          validate: state.buttonColorChage,
                          loading: state.isLoading);
                    }),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
