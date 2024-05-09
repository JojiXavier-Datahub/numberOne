import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({
    super.key,
    required this.count,
  });
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.h,
      width: 14.w,
      alignment: Alignment.center,
      decoration: const ShapeDecoration(
        color: textRed,
        shape: CircleBorder(),
      ),
      child: Text(
        count.toString(),
        style: textStyle1.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 8.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}
