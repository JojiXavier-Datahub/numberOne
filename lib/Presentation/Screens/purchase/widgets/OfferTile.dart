import 'dart:ui' as ui show PlaceholderAlignment;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

import '../../Details/widgets/custom_elevated_button.dart';

class OfferTile extends StatelessWidget {
  const OfferTile({
    super.key,
    this.isApplied = false,
    required this.title,
    required this.discription,
    this.onPressed,
  });
  final bool isApplied;
  final String title;
  final String discription;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: isApplied ? secondaryColor : Colors.white,
        border: Border.all(
          width: 1,
          color: isApplied ? Colors.white : secondaryColor,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                    text: title,
                    style: textStyle1.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: isApplied ? Colors.white : secondaryColor,
                    ),
                    children: [
                      if (isApplied)
                        WidgetSpan(
                          alignment: ui.PlaceholderAlignment.middle,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SvgPicture.asset(
                              'assets/svg/verified_yellow.svg',
                            ),
                          ),
                        ),
                    ]),
              ),
              CustomElevatedButton(
                btnText: isApplied ? 'REMOVE' : 'APPLY',
                backgroundColor: isApplied ? Colors.white : secondaryColor,
                textColor: isApplied ? secondaryColor : Colors.white,
                minimumSize: const Size(69, 22),
                onPressed: onPressed,
              )
            ],
          ),
          Text(
            discription,
            style: textStyle1.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 10.sp,
              color: isApplied ? Colors.white : secondaryColor,
            ),
          )
        ],
      ),
    );
  }
}
