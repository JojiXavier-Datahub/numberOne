import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_elevated_button.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

import 'NormalShadow.dart';

class ApplyCoupon extends StatelessWidget {
  const ApplyCoupon({
    super.key,
    required this.textEditingController,
    this.applyCoupon,
    this.onChanged,
  });

  final TextEditingController textEditingController;
  final void Function()? applyCoupon;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: NormalShadow(
            height: 37.h,
            width: 199.w,
            child: TextFormField(
              controller: textEditingController,
              textAlign: TextAlign.center,
              onChanged: onChanged,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 3.0),
                border: InputBorder.none,
                hintText: 'Enter Coupon Code',
                hintStyle: textStyle1.copyWith(
                  color: greyColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 10.sp,
                ),
              ),
              style: textStyle1.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        CustomElevatedButton(
          btnText: 'Apply Coupon',
          textColor: (applyCoupon != null) ? Colors.white : textBlackColor,
          onPressed: applyCoupon,
        ),
      ],
    );
  }
}
