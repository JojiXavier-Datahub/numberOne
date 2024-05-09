import 'dart:ui' as ui show PlaceholderAlignment;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';

class PurchaseItemTile extends StatelessWidget {
final bool isfromSubscription;
final String image;
final String detils;
final String price;
final String? instructorName;
  
  const PurchaseItemTile({
    super.key, required this.isfromSubscription, required this.image, required this.detils, required this.price, this.instructorName, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 45.h,
            width: 67.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.sp),
              image:  DecorationImage(
                image: NetworkImage(image),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  detils,
                  style: textStyle1.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 10.sp,
                  ),
                ),
                isfromSubscription?  const SizedBox(): RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'By',
                        style: textStyle1.copyWith(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const WidgetSpan(child: SizedBox(width: 5)),
                      TextSpan(
                        text:instructorName??"",
                        style: textStyle1.copyWith(
                          color: lightGreen,
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const WidgetSpan(child: SizedBox(width: 2)),
                      WidgetSpan(
                        alignment: ui.PlaceholderAlignment.middle,
                        child: SvgPicture.asset(tickMark, height: 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 5),
          Text(
            '₹$price',
            style: textStyle1.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
            ),
          ),
        ],
      ),
    );
  }
}
