import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CustomRatingBar extends StatelessWidget {
  final double rating; 
  const CustomRatingBar({
    super.key, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      initialRating: rating,
      direction: Axis.horizontal,
      allowHalfRating: true,
      ignoreGestures: true,
      itemSize: 15,
      itemCount: 5,
      ratingWidget: RatingWidget(
        full: const Icon(Icons.star_purple500_sharp,
            color: primaryColor, size: 10),
        half: const Icon(Icons.star_half, color: primaryColor, size: 10),
        empty: const Icon(Icons.star, color: greyTab, size: 10),
      ),
      itemPadding: const EdgeInsets.symmetric(vertical: 5),
      onRatingUpdate: (rating) {},
    );
  }
}
