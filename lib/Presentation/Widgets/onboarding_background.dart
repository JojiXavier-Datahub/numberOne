import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';

class OnboarBackGround extends StatelessWidget {
  const OnboarBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      backgroundIllustrationImg,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.fill,
    );
  }
}
