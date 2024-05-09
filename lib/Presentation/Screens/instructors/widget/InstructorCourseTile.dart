import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/price_tag.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/custom_rating_bar.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

import '../../Details/widgets/custom_elevated_button.dart';

class InstructorCourseTile extends StatelessWidget {
  const InstructorCourseTile({
    super.key,
    required this.courseName,
    required this.reviewCount,
    required this.offerPrice,
    required this.originalPrice,
    this.onPressed,
  });
  final String courseName;
  final String reviewCount;
  final int offerPrice;
  final int originalPrice;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 101.h,
          width: 151.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          courseName,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: textStyle1.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
          ),
        ),
        const SizedBox(height: 5),
        const CustomRatingBar(
          rating: 2,
        ),
        const SizedBox(height: 5),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: reviewCount,
                style: textStyle1.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                ),
              ),
              const WidgetSpan(child: SizedBox(width: 5)),
              TextSpan(
                text: 'Reviews',
                style: textStyle1.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: lightGreen,
                ),
              ),
            ],
          ),
        ),
        PriceTag(
          offerPrice: offerPrice,
          originalPrice: originalPrice,
        ),
        Container(
          height: 16.h,
          width: 153.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: primary1, width: 0.5),
            borderRadius: BorderRadius.circular(3.65),
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Get\t',
                  style: textStyle1.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 8,
                  ),
                ),
                const TextSpan(text: 'this course\t'),
                TextSpan(
                  text: 'FREE\t',
                  style: textStyle1.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 8,
                  ),
                ),
                const TextSpan(text: 'with\t'),
                TextSpan(
                  text: 'Gold Plan',
                  style: textStyle1.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 8,
                    color: const Color(0xffFFC92B),
                  ),
                ),
              ],
              style: textStyle1.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 8,
              ),
            ),
          ),
        ),
        CustomElevatedButton(
          minimumSize: const Size(153, 31),
          btnText: 'View Course',
          onPressed: onPressed,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(5),
          // ),
        ),
      ],
    );
  }
}
