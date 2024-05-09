import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class NormalShadow extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  const NormalShadow({
    super.key,
    required this.height,
    required this.width,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 4,
            spreadRadius: 2,
            color: secondaryColor.withOpacity(0.1),
          ),
        ],
      ),
      child: child,
    );
  }
}
