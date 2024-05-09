import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';

import 'CustomChip.dart';

class CustomChipItem extends StatelessWidget {
  const CustomChipItem({
    super.key,
    required this.text1,
    required this.text2,
    this.secondHighlight = false,
  });
  final String text1;
  final String text2;
  final bool secondHighlight;

  @override
  Widget build(BuildContext context) {
    return CustomChip(
        padding: const EdgeInsets.symmetric(
          vertical: 3,
          horizontal: 5,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text1,
              style: textStyle1.copyWith(
                fontWeight:
                    (!secondHighlight) ? FontWeight.w700 : FontWeight.w400,
                fontSize: 10,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              text2,
              style: textStyle1.copyWith(
                fontWeight:
                    (secondHighlight) ? FontWeight.w700 : FontWeight.w400,
                fontSize: 10,
              ),
            )
          ],
        ));
  }
}
