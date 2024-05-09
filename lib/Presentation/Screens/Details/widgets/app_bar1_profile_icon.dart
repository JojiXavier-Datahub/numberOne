import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/text_custom.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class AppBar1ProfileIcon extends StatelessWidget {
  const AppBar1ProfileIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, right: 5, bottom: 5),
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 186, 181, 181).withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Container(
        width: 35,
        height: 35,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFFFF3B3), primaryColor],
          ),
        ),
        child: TextCustom(
          fontWeight: FontWeight.w500,
          textColor: const Color(0xFFD8A023),
          text: 'T', //kUserName[0].toUpperCase(),
          size: 16.sp,
        ),
      ),
    );
  }
}
