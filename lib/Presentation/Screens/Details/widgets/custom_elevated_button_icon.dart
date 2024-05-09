import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CustomElevatedButtonIcon extends StatelessWidget {
  const CustomElevatedButtonIcon({
    super.key,
    required this.label,
    required this.iconAsset,
    required this.onPressed,
    this.minimumSize,
  });
  final String label;
  final String iconAsset;
  final void Function()? onPressed;
  final Size? minimumSize;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: SvgPicture.asset(iconAsset),
        label: Text(
          label,
          style: textStyle1.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 10,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          minimumSize: minimumSize,
        ),
      ),
    );
  }
}
