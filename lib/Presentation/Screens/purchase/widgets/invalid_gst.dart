import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_elevated_button.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_otlined_button.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class InvalidGst extends StatelessWidget {
  const InvalidGst({
    super.key,
    required this.gstNumber,
    this.tryAgain,
    this.cancel,
  });
  final String gstNumber;
  final void Function()? tryAgain;
  final void Function()? cancel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Your GST number $gstNumber could not be verified\nPlease check the number for any errors and try again",
          style: textStyle1.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 10.sp,
            color: textRed,
          ),
        ),
        Row(
          children: [
            CustomOtlinedButton(
              title: 'Try Again',
              onPressed: tryAgain,
              color: secondaryColor,
              minimumSize: const Size(98, 28),
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(width: 10),
            CustomElevatedButton(
              btnText: 'Cancel',
              minimumSize: const Size(81, 28),
              onPressed: cancel,
            )
          ],
        )
      ],
    );
  }
}
