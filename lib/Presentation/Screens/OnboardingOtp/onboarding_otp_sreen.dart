import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_one_academy_v2/Application/OnboardingPhone/onboarding_phone_bloc.dart';
import 'package:number_one_academy_v2/Application/course_list/course_list_bloc.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/button_custom.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/text_custom.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Utils/toast_urils.dart';
import 'package:pinput/pinput.dart';
import '../../../Utils/constants.dart';
import '../../Widgets/onboarding_background.dart';

class OnBoardingOtp extends StatefulWidget {
  const OnBoardingOtp({super.key});

  @override
  State<OnBoardingOtp> createState() => _OnBoardingOtpState();
}

class _OnBoardingOtpState extends State<OnBoardingOtp> {
  @override
  void initState() {
    super.initState();
    timerFunction();
  }

  Timer? timer;

  void timerFunction() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (secondsRemaining != 0) {
          setState(() {
            secondsRemaining--;
          });
        } else {
       
          setState(() {
            enableResend = true;
          });
          timer.cancel(); // Cancel the timer when it reaches zero
        }
      },
    );
  }

  void _resendCode() {
    timer?.cancel();
    context.read<OnboardingPhoneBloc>().add(const OnboardingPhoneEvent
        .resendOtp()); // Cancel previous timer if exists
    setState(() {
      secondsRemaining = 60;
      enableResend = false;
    }); // Reset enableResend if needed
    timerFunction(); // Start a new timer
  }

  int secondsRemaining = 60;
  bool enableResend = false;
  // Timer? timer;
  final preFilledWidget = Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        width: 56,
        height: 3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ],
  );
  final cursor = Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        width: 56,
        height: 3,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ],
  );
  final focusNode = FocusNode();
  final defaultPinTheme = PinTheme(
    width: 20,
    constraints: const BoxConstraints(minHeight: 25, maxHeight: 32),
    textStyle: GoogleFonts.lato(
      fontSize: 25,
      fontWeight: FontWeight.w700,
      height: 30 / 25,
      color: const Color(0xffAFAFAF),
    ),
    decoration: const BoxDecoration(),
  );
  TextEditingController otpController = TextEditingController();
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
                  context.read<OnboardingPhoneBloc>().add(OnboardingPhoneEvent.clearPhoneNumber(context: context));
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
          BlocBuilder<OnboardingPhoneBloc,OnboardingPhoneState>(
            builder: (context,state) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            text: "Enter OTP",
                            fontWeight: FontWeight.bold,
                            size: 20.sp,
                            textColor: secondaryColor,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                TextCustom(
                                  text: "OTP sent to ",
                                  textColor: secondaryColor,
                                  size: 10.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                                BlocBuilder<OnboardingPhoneBloc,
                                        OnboardingPhoneState>(
                                    builder: (context, state) {
                                  return TextCustom(
                                    text: state.phoneNumber ?? "",
                                    size: 10.sp,
                                    textColor: secondaryColor2,
                                  );
                                }),
                                TextCustom(
                                  text: " (WhatsApp)",
                                  textColor: secondaryColor,
                                  size: 10.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: TextCustom(
                                text: "Change Number?",
                                textColor: secondaryColor,
                                size: 10.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(36.0),
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
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(26),
                                  boxShadow: [
                                    BoxShadow(
                                      color: primaryColor.withOpacity(.15),
                                      blurRadius: 25,
                                    )
                                  ]),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 14),
                                    child: Pinput(
                                      controller: otpController,
                                      length: 6,
                                      onChanged: (value) {
                                        context.read<OnboardingPhoneBloc>().add(
                                            OnboardingPhoneEvent.phoneValidation(
                                                phonevalidation: value.length,
                                                count: 5));
                                      },
                                      autofocus: true,
                                      pinAnimationType: PinAnimationType.slide,
                                      defaultPinTheme: defaultPinTheme,
                                      showCursor: true,
                                      focusNode: focusNode,
                                      cursor: cursor,
                                      preFilledWidget: preFilledWidget,
                                      toolbarEnabled: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        state.status!? const SizedBox():
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, top: 5),
                          child:  Text(
                            state.message??"",
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                       kh20,
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 25.0,
                            left: 25,
                            bottom: 34,
                          ),
                          child: enableResend
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "Didn't Recieve OTP?",
                                      style: TextStyle(
                                        color: Color(0xffAFAFAF),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        height: 12 / 10,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        print("onPressing $enableResend");
              
                                        enableResend ? _resendCode() : null;
                                        // if (isResend == false && context.mounted) {
                                        //   ref
                                        //       .read(isResendProvider.notifier)
                                        //       .state = true;
                                        //   await sentOtp(context);
                                        //   setState(() {
                                        //     remainingSeconds = 60;
                                        //   });
                                        //   ref
                                        //       .read(timerExpiredProvider.notifier)
                                        //       .state = false;
                                        //   timer!.cancel();
                                        //   await startTimer(ref);
                                        // }
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.only(left: 5.0),
                                        child: Text(
                                          "Resend Now",
                                          style: TextStyle(
                                            color: secondaryColor,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            height: 12 / 10,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "Please Wait ",
                                      style: TextStyle(
                                        color: secondaryColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        height: 12 / 10,
                                      ),
                                    ),
                                    Text(secondsRemaining.toString(),
                                        style: lightGreen10w700style),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 2),
                                      child: Text(
                                        "seconds",
                                        style: TextStyle(
                                          color: secondaryColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          height: 12 / 10,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: BlocBuilder<OnboardingPhoneBloc, OnboardingPhoneState>(
                          builder: (context, state) {
                        return ButtonCustom(
                            butonText: "Verify OTP",
                            onPressed: () {
                              if (otpController.text == "" ||
                                  otpController.text.length < 6) {
                                ToastUtil.show("Please enter valid OTP");
                              } else {
                                context.read<OnboardingPhoneBloc>().add(
                                    OnboardingPhoneEvent.verifyOtp(
                                        otp: otpController.text, context: context));
                                // sign
                                //     .verifyOtp(
                                //         otp: otpController.text, context: context);
                              }
                            },
                            validate: state.buttonColorChage,
                            loading: state.isLoading);
                      }),
                    )
                  ],
                ),
              );
            }
          )
        ],
      ),
    );
  }
}
