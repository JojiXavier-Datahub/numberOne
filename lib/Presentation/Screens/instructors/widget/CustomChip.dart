import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({super.key, required this.child, this.padding});
  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          const EdgeInsets.symmetric(
            vertical: 1,
            horizontal: 3,
          ),
      // alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffE3F1F2),
      ),
      child: child,
    );
  }
}
