import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CustomExpansionTle extends StatelessWidget {
  final void Function(bool expaded) onExpansionChanged;
  final bool isExpanded;
  final String title;
  final String description;
  const CustomExpansionTle({
    super.key,
    required this.onExpansionChanged,
    this.isExpanded = false,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: Colors.white,
      collapsedBackgroundColor: Colors.white,
      tilePadding: EdgeInsets.zero,
      childrenPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: textStyle1.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
        ),
      ),
      trailing: AnimatedRotation(
          turns: isExpanded ? .25 : 0,
          duration: const Duration(milliseconds: 400),
          child: const Icon(
            Icons.arrow_forward_ios,
            color: secondaryColor,
            size: 13,
          )),
      onExpansionChanged: onExpansionChanged,
      shape: const Border(
        bottom: BorderSide(color: inputBorder, width: 1.0),
      ),
      collapsedShape: const Border(
        bottom: BorderSide(color: inputBorder, width: 1.0),
      ),
      children: [
        Text(
          description,
          style: textStyle1.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 13.sp,
            color: const Color(0xffA4A4A4),
          ),
        ),
      ],
    );
  }
}
