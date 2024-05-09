import 'package:flutter/material.dart';

import '../../styles/text_styles.dart';

class CustomTimerTile extends StatelessWidget {
  const CustomTimerTile({
    super.key,
    required this.startTime,
    required this.endTime,
  });
  final String startTime;
  final String endTime;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -15.0),
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              startTime,
              style: textStyle1.copyWith(
                fontSize: 11.41,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              endTime,
              style: textStyle1.copyWith(
                fontSize: 11.41,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
