import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CustomOtlinedButton extends StatelessWidget {
  const CustomOtlinedButton({
    super.key,
    required this.title,
    this.onPressed,
    this.color = txtYellow,
    this.maximumSize,
    this.minimumSize,
    this.backgroundColor,
  });

  final String title;
  final void Function()? onPressed;
  final Color color;
  final Size? minimumSize;
  final Size? maximumSize;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: backgroundColor ?? Colors.white,
        minimumSize: minimumSize ?? const Size(92, 35),
        maximumSize: maximumSize ?? const Size(170, 35),
        side: BorderSide(color: color),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: textStyle1.copyWith(
          color: color,
          fontWeight: FontWeight.w700,
          fontSize: 10,
        ),
      ),
    );
  }
}
