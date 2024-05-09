import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/purchase/widgets/CustomRadio.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CustomRadioText extends StatelessWidget {
  const CustomRadioText({
    super.key,
    required this.value,
    this.groupValue,
    this.onChanged,
  });
  final String value;
  final Object? groupValue;
  final void Function(Object?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.85,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomRadio(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            // fillColor: MaterialStateProperty.resolveWith(getColor),
            // activeColor: Colors.amber,
            // visualDensity: const VisualDensity(
            //   horizontal: VisualDensity.minimumDensity,
            //   vertical: VisualDensity.minimumDensity,
            // ),
          ),
          Text(
            value,
            style: textStyle1.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 10.sp,
              color: secondaryColor,
            ),
          )
        ],
      ),
    );
  }
}
