import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utils/colors.dart';
import '../../../Widgets/text_custom.dart';

class OnboardingSliders extends StatelessWidget {
  final String heading;
  final String content;

  const OnboardingSliders({
    super.key,
    required this.heading,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextCustom(
          textAlign: TextAlign.center,
          size: 24.sp,
          fontWeight: FontWeight.bold,
          text: heading,
          textColor: secondaryColor,
        ),
        SizedBox(
          height: 23.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextCustom(
            maxline: 9,
            textAlign: TextAlign.center,
            size: 14.sp,
            text: content,
            textColor: textBlackColor,
          ),
        ),
      ],
    );
  }
}
