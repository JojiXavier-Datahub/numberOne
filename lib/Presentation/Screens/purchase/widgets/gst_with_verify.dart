import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_elevated_button.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

import 'NormalShadow.dart';

class GstWithVerify extends StatelessWidget {
  const GstWithVerify({
    super.key,
    required this.textEditingController,
    this.onChanged,
    this.onVerify,
  });

  final TextEditingController textEditingController;
  final void Function(String)? onChanged;
  final void Function()? onVerify;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Please provide your GST number for tax purpose',
          style: textStyle1.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 10.sp,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: NormalShadow(
                height: 28.h,
                width: 200.w,
                child: TextFormField(
                  controller: textEditingController,
                  textAlign: TextAlign.center,
                  onChanged: onChanged,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(vertical: 3.0),
                    border: InputBorder.none,
                    hintText: 'Enter your GST number',
                    hintStyle: textStyle1.copyWith(
                      color: const Color(0xffDCDCDC),
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                    ),
                  ),
                  style: textStyle1.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            CustomElevatedButton(
              btnText: 'Verify',
              textColor: (onVerify != null) ? Colors.white : textBlackColor,
              onPressed: onVerify,
              minimumSize: const Size(92, 28),
            ),
          ],
        ),
      ],
    );
  }
}
