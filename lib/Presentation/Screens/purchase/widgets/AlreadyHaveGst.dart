import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/purchase/widgets/GstDetails.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class AlreadyHaveGst extends StatelessWidget {
  const AlreadyHaveGst({
    super.key,
    required this.gstNumber,
    this.onTap,
    required this.organisationName,
    required this.address,
  });
  final String gstNumber;

  final String organisationName;
  final String address;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      dense: true,
      child: ExpansionTile(
        backgroundColor: green1,
        collapsedBackgroundColor: green1,
        childrenPadding: const EdgeInsets.symmetric(horizontal: 15),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        expandedAlignment: Alignment.topLeft,
        shape: const Border(),
        title: Row(
          children: [
            Text(
              'GST No. $gstNumber',
              style: textStyle1.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 12.sp,
                color: secondaryColor,
              ),
            ),
            const SizedBox(width: 5),
            InkWell(
              onTap: onTap,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: lightGreen,
                ),
                alignment: Alignment.center,
                child: Text(
                  'Remove GST',
                  style: textStyle1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 8,
                  ),
                ),
              ),
            )
          ],
        ),
        children: [
          GstDetails(
            organisationName: organisationName,
            address: address,
          ),
          const SizedBox(height: 7),
        ],
      ),
    );
  }
}
