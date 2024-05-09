import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:number_one_academy_v2/Application/Insructor/instructor_bloc.dart';
import 'package:number_one_academy_v2/Application/OnboardingPhone/onboarding_phone_bloc.dart';
import 'package:number_one_academy_v2/Application/course_list/course_list_bloc.dart';
import 'package:number_one_academy_v2/Application/subscription/subscription_bloc.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/text_custom.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';
import 'package:provider/provider.dart';
import '../../Widgets/onboarding_background.dart';

class OnboardingRocketAnimation extends StatefulWidget {
  const OnboardingRocketAnimation({super.key});

  @override
  State<OnboardingRocketAnimation> createState() =>
      _OnboardingRocketAnimationState();
}

class _OnboardingRocketAnimationState extends State<OnboardingRocketAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = Tween<Offset>(
      begin: Offset(0.0, 4.5), // Start from bottom
      end: Offset(0.0, -4.5), // End at a point a little above the center
    ).animate(_controller);
    _controller.addStatusListener((status) {
      // Provider.of<SignUpProvider>(context, listen: false)
      //     .profilegetProFun(context: context);
      context
          .read<SubscriptionBloc>()
          .add(const SubscriptionEvent.subscriptionGet());
      context
          .read<InstructorBloc>()
          .add(const InstructorEvent.getInstructorList());
      context.read<CourseListBloc>().add(
          const CourseListEvent.getCourseList(search: "", instructorId: ''));
      context
          .read<OnboardingPhoneBloc>()
          .add(OnboardingPhoneEvent.getProfile(context: context));

      // if (status == AnimationStatus.completed) {
      //   Future.delayed(Duration(seconds: 1), () {
      //     _controller.reset(); // Reset the animation after 1 second pause
      //     _controller.forward(); // Resume the animation
      //   });
      // } else if (status == AnimationStatus.dismissed) {
      //   log("animation dissmissed");

      // }
    });

    _controller.forward();
    // Timer(
    //   const Duration(seconds: 3),
    //   () {

    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const OnboarBackGround(),
          // Positioned(
          //     left: 17,
          //     top: 25,
          //     child: InkWell(
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //       child: const Center(
          //         child: SizedBox(
          //           height: 100,
          //           width: 100,
          //           child: Row(
          //             children: [
          //               Icon(
          //                 Icons.arrow_back_ios,
          //                 color: primaryColor,
          //                 size: 18,
          //               ),
          //               TextCustom(
          //                 text: "Back",
          //                 fontWeight: FontWeight.bold,
          //                 textColor: secondaryColor,
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //     )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SlideTransition(
                  position: _animation,
                  child: Lottie.asset(
                    'assets/lottie/rocket.json',
                    controller: _controller,
                    onLoaded: (composition) {
                      _controller
                        ..duration = composition.duration
                        ..forward();
                      _controller.repeat();
                    },
                  ),
                ),
                //  SvgPicture.asset(rocketIcon),
                TextCustom(
                  textAlign: TextAlign.center,
                  text: "Let’s skyrocket your business!",
                  fontWeight: FontWeight.bold,
                  size: 25.sp,
                  textColor: secondaryColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
