import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';

class ImageBadge extends StatelessWidget {
  const ImageBadge({
    super.key,
    required this.alignment,
    this.color,
    required this.isLeft,
    required this.label,
  });

  final AlignmentGeometry alignment;
  final Color? color;
  final bool isLeft;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        height: 20.h,
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topLeft: !isLeft ? const Radius.circular(5) : Radius.zero,
              topRight: isLeft ? const Radius.circular(5) : Radius.zero,
            )),
        child: FittedBox(
          child: Text(
            label,
            style: textStyle1.copyWith(
              fontSize: 8,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
