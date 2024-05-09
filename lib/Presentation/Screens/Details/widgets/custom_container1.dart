import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CustomContainer1 extends StatelessWidget {
  const CustomContainer1({
    super.key,
    this.child,
    this.padding,
  });
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: padding,
      decoration: BoxDecoration(
        color: containerBg,
        borderRadius: const BorderRadiusDirectional.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.25),
            // Color(0xffC9C9C9),
          ),
        ],
      ),
      child: child,
    );
  }
}
