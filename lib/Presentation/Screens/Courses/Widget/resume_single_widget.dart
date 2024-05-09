import 'dart:ui' as ui show PlaceholderAlignment;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_otlined_button.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/text_custom.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';

class ResumeSingleWidget extends StatelessWidget {
  final bool isfromSubscription;
  final String image;
  final String courseTitile;
  final String timeLeft;

  const ResumeSingleWidget({
    super.key,
    required this.isfromSubscription,
    required this.image,
    required this.courseTitile,
    required this.timeLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 45.h,
                width: 67.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  image: DecorationImage(
                    image: NetworkImage(image),
                  ),
                ),
              ),
              kw5,
              Expanded(
                child: Text(
                  courseTitile,
                  maxLines: 2,
                  style: textStyle1.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 13.sp,
                  ),
                ),
              ),
            ],
          ),
          Row(
            //  crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomOtlinedButton(
                minimumSize: Size(70, 22),
                backgroundColor: secondaryColor,
                title: "Resume",
                color: whiteColor,
              ),
              kw10,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 240.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextCustom(
                          text: "Course Progress",
                          size: 8.sp,
                          fontWeight: FontWeight.w600,
                          textColor: secondaryColor,
                        ),
                        TextCustom(
                          text: "15 mins left",
                          size: 8.sp,
                          fontWeight: FontWeight.w600,
                          textColor: secondaryColor,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Container(
                      width: 250.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                spreadRadius: 0,
                                offset: Offset(0, 2),
                                blurRadius: 5,
                                color: Colors.white)
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: const LinearProgressIndicator(
                          minHeight: 8,
                          color: primaryColor,
                          backgroundColor: Color(0xffE3E3E3),
                          value: .3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
