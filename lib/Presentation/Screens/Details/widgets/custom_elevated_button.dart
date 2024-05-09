import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.backgroundColor = secondaryColor,
    required this.btnText,
    this.onPressed,
    this.textColor = Colors.white,
    this.minimumSize = const Size(92, 35),
    this.child, this.textFontSize,
  });
  final Color backgroundColor;
  final String btnText;
  final void Function()? onPressed;
  final Color textColor;
  final Size? minimumSize;
  final double? textFontSize;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: minimumSize,
      ),
      onPressed: onPressed,
      child: child ??
          FittedBox(
            child: Text(
              btnText,
              style: textStyle1.copyWith(
                color: textColor,
                fontWeight: FontWeight.w700,
                fontSize:  textFontSize??10,
              ),
            ),
          ),
    );
  }
}
