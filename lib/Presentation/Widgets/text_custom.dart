import 'package:flutter/material.dart';

import '../../Utils/colors.dart';

class TextCustom extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? size;
  final int? maxline;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final TextDecoration? underline;
  final String? fontFamily;

  const  TextCustom({
    super.key,
    required this.text,
    this.textColor,
    this.size,
    this.fontWeight,
    this.maxline,
    this.textAlign,
    this.underline = TextDecoration.none, this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(

      text,
      textAlign: textAlign,
      style: TextStyle(

          overflow: TextOverflow.ellipsis,
          color: textColor ?? textBlackColor,
          fontSize: size ?? 12,
                  fontFamily: fontFamily ?? "Euclid Circular A",

          fontWeight: fontWeight ?? FontWeight.normal,
          decoration: underline),
      maxLines: maxline ?? 2,
    );
  }
}
