
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class ThumbnailWidget extends StatelessWidget {
  final String urlThumbNail;
  const ThumbnailWidget({super.key, required this.urlThumbNail});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CachedNetworkImage(
            imageUrl: urlThumbNail,
            fit: BoxFit.cover,
          ),
          const Align(
            child: CircularProgressIndicator(
                color: secondaryColor, backgroundColor: whiteColor),
          )
        ],
      ),
    );
  }
}
