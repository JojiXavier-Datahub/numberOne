import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Application/OnboardingPhone/onboarding_phone_bloc.dart';
import 'package:number_one_academy_v2/Presentation/Screens/MainPage/widgets/bottom_nav.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';
import '../../Utils/colors.dart';
import 'text_custom.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingPhoneBloc, OnboardingPhoneState>(
        builder: (context, sign) {
      return AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: const Color.fromARGB(255, 254, 254, 254),
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        actions: [
          indexChangeNotifier.value == 2
              ? const SizedBox()
              : Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 186, 181, 181)
                            .withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Center(
                      child: Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xFFFFF3B3), primaryColor],
                            ),
                          ),
                          child: Center(
                              child: sign.isLoading
                                  ? const SizedBox()
                                  : TextCustom(
                                      fontWeight: FontWeight.w500,
                                      textColor: const Color(0xFFD8A023),
                                      text: kUserName[0].toUpperCase(),
                                      size: 16.sp,
                                    ))),
                    ),
                  ),
                ),
          kw20
        ],
        leadingWidth: 100.w,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextCustom(
                text: "Good Morning!",
                size: 10.sp,
                textColor: secondaryColor3,
              ),
              sign.isLoading
                  ? k
                  : TextCustom(
                      text: kUserName,
                      textColor: secondaryColor,
                      size: 16.sp,
                    ),
            ],
          ),
        ),
      );
    });
  }
}
