import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    super.key,
    required this.offset,
    required this.icon,
    this.onPressed,
  });
  final Offset offset;
  final String icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offset,
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        icon: SvgPicture.asset(icon),
      ),
    );
  }
}
