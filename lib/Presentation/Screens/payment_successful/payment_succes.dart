import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:number_one_academy_v2/Presentation/Screens/MainPage/screen_main_page.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/Helper/shared_pref.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({super.key});

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    Timer(
      const Duration(seconds: 3),
      () async {
        await SharedPrefUtil.writeString(subscribed, "subscribed");
        setState(() {
          subscribedOrNot = "subscribed";
        });

        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => ScreenMainPage()),
          (Route<dynamic> route) => false, // Condition to stop removing routes
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SvgPicture.asset(
              'assets/svg/success_bg.svg',
              fit: BoxFit.cover,
            ),
            Center(
              child: Container(
                width: 240.w,
                height: 290.h,
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Lottie.asset(
                      'assets/lottie/successful-anim.json',
                      controller: _controller,
                      onLoaded: (composition) {
                        _controller
                          ..duration = composition.duration
                          ..forward();
                        _controller.repeat();
                      },
                    ),
                    Text(
                      'Payment Sucessful',
                      style: textStyle1.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
