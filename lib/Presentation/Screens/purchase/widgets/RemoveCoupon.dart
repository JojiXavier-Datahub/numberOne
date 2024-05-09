import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class RemoveCoupon extends StatelessWidget {
  const RemoveCoupon({
    super.key,
    required this.code,
    this.discoundInPercent,
    required this.additionalText,
    this.isValid = true,
    this.onPressed,
  });
  final String code;
  final String? discoundInPercent;
  final String additionalText;
  final bool isValid;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37.h,
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isValid ? secondaryColor : textRed,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: code,
                  style: textStyle1.copyWith(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
                if (discoundInPercent != null) ...[
                  const WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(
                    text: discoundInPercent,
                    style: textStyle1.copyWith(
                      color: offerPercentage,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
                const WidgetSpan(child: SizedBox(width: 2)),
                TextSpan(
                  text: additionalText,
                  style: textStyle1.copyWith(
                    color: Colors.white,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
            ),
            child: Text(
              'Remove Code',
              style: textStyle1.copyWith(
                color: Colors.white,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
