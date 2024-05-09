import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class PlayerContainer extends StatelessWidget {
  const PlayerContainer({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 156,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: containerBg,
        borderRadius: const BorderRadiusDirectional.only(
          bottomStart: Radius.circular(15),
          bottomEnd: Radius.circular(15),
        ),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffFFFFFF),
            Color(0xffE9E9E9),
          ],
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 15,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.25),
          ),
        ],
      ),
      child: child,
    );
  }
}
