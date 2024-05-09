import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Utils/colors.dart';

class ProfileWidget extends StatelessWidget {
  final String containerName;
  final String containerImage;
  final void Function()? ontap;
  const ProfileWidget({

    super.key,
    required this.containerName,
    required this.containerImage, this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: containerGreyColor),
        width: 94.w,
        height: 94.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(containerImage),
            SizedBox(
              height: 10.h,
            ),
            Text(
              containerName,
              style: green85w500style,
            ),
          ],
        ),
      ),
    );
  }
}
