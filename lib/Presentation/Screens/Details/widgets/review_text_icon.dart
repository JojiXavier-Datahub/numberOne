import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../styles/text_styles.dart';

class ReviewTextIcon extends StatelessWidget {
  const ReviewTextIcon({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Like the course?',
            style: textStyle1.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          const WidgetSpan(child: SizedBox(width: 7)),
          TextSpan(
            text: 'Write a review',
            style: textStyle1.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: const Color(0xff00C294),
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
