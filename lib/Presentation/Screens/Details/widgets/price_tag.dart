import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class PriceTag extends StatelessWidget {
  const PriceTag({
    super.key,
    this.isBottom = false,
    required this.offerPrice,
    required this.originalPrice,
  });
  final int offerPrice;
  final int originalPrice;
  final bool isBottom;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '₹',
        style: textStyle1.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 10,
        ),
        children: [
          TextSpan(
            text: originalPrice.toString(),
            style: textStyle1.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ), 
          const WidgetSpan(child: SizedBox(width: 5)),
          // TextSpan(
          //   text: originalPrice == offerPrice ? "" : originalPrice.toString(),
          //   style: textStyle1.copyWith(
          //     color: isBottom ? Colors.black : textRed,
          //     fontWeight: FontWeight.w700,
          //     fontSize: 12,
          //     decoration: TextDecoration.lineThrough,
          //   ),
          // ),
        ],
      ),
    );
  }
}
