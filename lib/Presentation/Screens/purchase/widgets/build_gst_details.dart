import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_elevated_button.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_otlined_button.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

import 'GstDetails.dart';

class BuildGstDetails extends StatelessWidget {
  const BuildGstDetails({
    super.key,
    required this.organisationName,
    required this.address,
    required this.gstNumber,
    this.onNotCorrext,
    this.onCancel,
  });
  final String organisationName;
  final String address;
  final String gstNumber;
  final void Function()? onNotCorrext;
  final void Function()? onCancel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your GST number has been verified. Please confirm the details before proceeding',
          style: textStyle1.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 10.sp,
            color: secondaryColor,
          ),
        ),
        const SizedBox(height: 5),
        GstDetails(organisationName: organisationName, address: address),
        Text(
          "GST No. $gstNumber",
          style: textStyle1.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 12.sp,
          ),
        ),
        Row(
          children: [
            CustomOtlinedButton(
              title: 'Not Correct?',
              onPressed: onNotCorrext,
              color: secondaryColor,
              minimumSize: const Size(98, 28),
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(width: 10),
            CustomElevatedButton(
              btnText: 'Cancel',
              minimumSize: const Size(81, 28),
              onPressed: onCancel,
            )
          ],
        )
      ],
    );
  }
}
