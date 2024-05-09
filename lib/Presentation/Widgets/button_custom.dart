import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';

import '../../Utils/colors.dart';
import 'text_custom.dart';

class ButtonCustom extends StatelessWidget {
  final String butonText;
  final bool validate;
  final double? width;
  final double? height;
  final bool loading; 
  final FontWeight? fontweight;

  final void Function()? onPressed;

  const ButtonCustom({
    super.key,
    required this.butonText,
    required this.onPressed,
    required this.validate,
    required this.loading,
    this.fontweight = FontWeight.normal,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !loading,
      replacement: kLoading,
      child: SizedBox(
        width: width ?? 311.w,
        height: height ?? 57.h,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                backgroundColor: validate ? secondaryColor : buttonShadeColor),
            child: TextCustom(
              fontWeight: fontweight,
              text: butonText,
              textColor: validate ? whiteColor : whiteColor,
              size: 16.sp,
            )),
      ),
    );
  }
}
