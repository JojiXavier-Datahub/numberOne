import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CustomRitchText2 extends StatelessWidget {
  const CustomRitchText2({
    super.key,
    required this.textOne,
    required this.textTwo,
  });
  final String textOne;
  final String textTwo;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: textOne,
            style: textStyle1.copyWith(
              color: lightGreen,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
          const WidgetSpan(child: SizedBox(width: 5)),
          TextSpan(
            text: textTwo,
            style: textStyle1.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
