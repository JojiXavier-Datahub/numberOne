import 'dart:ui' as ui show PlaceholderAlignment;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';

import '../../styles/text_styles.dart';

class GstDetails extends StatelessWidget {
  const GstDetails({
    super.key,
    required this.organisationName,
    required this.address,
  });
  final String organisationName;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: organisationName,
                style: textStyle1.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const WidgetSpan(child: SizedBox(width: 5)),
              WidgetSpan(
                alignment: ui.PlaceholderAlignment.middle,
                child: SvgPicture.asset(tickMark, height: 14),
              ),
            ],
          ),
        ),
        Text(
          address,
          style: textStyle1.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 10.sp,
          ),
        ),
      ],
    );
  }
}
