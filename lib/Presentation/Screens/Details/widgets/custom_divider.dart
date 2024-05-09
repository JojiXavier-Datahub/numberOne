import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 0.2,
      color: boderGreyColor1,
    );
  }
}
