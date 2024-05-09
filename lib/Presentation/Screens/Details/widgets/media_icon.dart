import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MediaIcon extends StatelessWidget {
  const MediaIcon({
    super.key,
    required this.assetName,
    this.onPressed,
  });
  final String assetName;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset('assets/svg/$assetName'),
    );
  }
}
