import 'dart:ui' as ui show PlaceholderAlignment;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_ritch_text2.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/custom_rating_bar.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';

import '../../Details/widgets/custom_elevated_button.dart';

class InstructorTile extends StatelessWidget {
  const InstructorTile({
    super.key,
    required this.instructorName,
    required this.language,
    required this.followers,
    required this.learners,
    this.viewProfile,
  });

  final String instructorName;
  final String language;
  final String followers;
  final String learners;
  final void Function()? viewProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: const ShapeDecoration(
        shape: Border(
          bottom: BorderSide(color: inputBorder, width: 1.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 85.w,
                width: 85.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text('Place image'),
              ),
              const SizedBox(width: 7),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    text: TextSpan(
                      text: instructorName,
                      style: textStyle1.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: lightGreen,
                      ),
                      children: [
                        const WidgetSpan(child: SizedBox(width: 5)),
                        WidgetSpan(
                          alignment: ui.PlaceholderAlignment.middle,
                          child: SvgPicture.asset(tickMark, height: 18),
                        ),
                      ],
                    ),
                  ),
                  const CustomRatingBar(
                    rating: 2,
                  ),
                  Text(
                    language,
                    style: textStyle1.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 10.sp,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Transform.scale(
                    scale: 0.8,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomRitchText2(
                          textOne: followers,
                          textTwo: 'Followers',
                        ),
                        const SizedBox(width: 10),
                        CustomRitchText2(
                          textOne: learners,
                          textTwo: 'Learners',
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              CustomElevatedButton(
                btnText: '22 Courses',
                textColor: secondaryColor,
                backgroundColor: secondaryColor.withOpacity(0.8),
                minimumSize: const Size(85, 30),
              ),
              const Spacer(),
              CustomElevatedButton(
                btnText: 'View Profile',
                onPressed: viewProfile,
                minimumSize: const Size(97, 30),
              ),
            ],
          ),
        ],
      ),
    );
  }

  buildStar(int star) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        5,
        (index) => const Icon(
          Icons.star,
          color: primaryColor,
          size: 18,
        ),
      ),
    );
  }
}
