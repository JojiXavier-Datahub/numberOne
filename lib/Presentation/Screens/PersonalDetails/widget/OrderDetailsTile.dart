import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class OrderDetailsTile extends StatelessWidget {
  const OrderDetailsTile({
    super.key,
    required this.titleText,
    this.trailing,
  });
  final String titleText;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        titleText,
        style: textStyle1.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
        ),
      ),
      trailing: trailing,
      shape: const Border(
        bottom: BorderSide(
          color: inputBorder,
          width: 1.0,
        ),
      ),
    );
  }
}
