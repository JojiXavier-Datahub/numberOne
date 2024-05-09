import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CustomElevatedWithTrail extends StatelessWidget {
  const CustomElevatedWithTrail({
    super.key,
    this.onPressed,
    required this.title,
  });
  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: Colors.white,
        backgroundColor: secondaryColor,
        side: const BorderSide(width: 0.1),
      ),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(
                title,
                style: textStyle1.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 15.sp,
                  color: (onPressed == null) ? greyBtnText : Colors.white,
                ),
              ),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 17,
            color: (onPressed == null) ? greyBtnText : Colors.white,
          ),
        ],
      ),
    );
  }
}
