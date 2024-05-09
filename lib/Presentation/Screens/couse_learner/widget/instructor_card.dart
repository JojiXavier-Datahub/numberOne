import 'dart:ui' as ui show PlaceholderAlignment; //ParagraphBuilder
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_elevated_button.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/custom_rating_bar.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';

class InstructorCard extends StatelessWidget {
  const InstructorCard({
    super.key,
    required this.instructorName,
    required this.followers,
    required this.courseCount,
    required this.image,
    required this.courseRating,
    this.onViewCourse,
  });
  final String instructorName;
  final String followers;
  final String image;

  final int courseCount;
  final int courseRating;
  final void Function()? onViewCourse;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onViewCourse,
      child: Container(
        width: 120.51.w,
        margin: const EdgeInsets.only(right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 107.51.h,
              width: 107.51.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover),
                color: lightGreen.withOpacity(0.5),
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            kh10,
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: instructorName,
                    style: textStyle1.copyWith(
                        color: secondaryColor,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        height: 15 / 10),
                  ),
                  const WidgetSpan(child: SizedBox(width: 2)),
                  WidgetSpan(
                    alignment: ui.PlaceholderAlignment.middle,
                    child: SvgPicture.asset(tickMark, height: 10),
                  ),
                ],
              ),
            ),
            CustomRatingBar(
              rating: courseRating.toDouble(),
            ),
            // Text.rich(
            //   TextSpan(
            //     children: [
            //       TextSpan(
            //         text: followers,
            //         style: textStyle1.copyWith(fontSize: 9),
            //       ),
            //       TextSpan(
            //         text: '\tFollowers',
            //         style: textStyle1.copyWith(
            //           color: lightGreen,
            //           fontSize: 9,
            //           fontWeight: FontWeight.w400,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            kh5,
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 23.13.h,
                  width: 23.13.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(4.84),
                  ),
                  child: Text(
                    courseCount.toString(),
                    style: textStyle1.copyWith(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                kw5,
                Text(
                  'Courses',
                  style: textStyle1.copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            CustomElevatedButton(
              btnText: 'View Profile',
              backgroundColor: lightGreen,
              onPressed: onViewCourse,
              minimumSize: Size(108.w, 33.h),
            ),
          ],
        ),
      ),
    );
  }
}
