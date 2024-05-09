import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:number_one_academy_v2/Presentation/Screens/purchase/widgets/NormalShadow.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

import '../Details/widgets/custom_app_bar1.dart';
import '../styles/text_styles.dart';
import 'widget/InstructorTile.dart';

class InstructorsList extends StatelessWidget {
  const InstructorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar1(
          elevation: 4,
          isShape: true,
          // actions: [NotificationIcon()],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        shrinkWrap: true,
        children: [
          Text(
            'Instructors',
            style: textStyle1.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
            ),
          ),
          const SizedBox(height: 10),
          buildSearchBar(),
          ...List.generate(
            2,
            (index) => InstructorTile(
              instructorName: 'Madhu Bhaskaran',
              language: 'Malayalam, Tamil',
              followers: '1.5M',
              learners: '1436',
              viewProfile: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const InstructorProfile(index: null,),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }

  buildSearchBar() {
    return NormalShadow(
      height: 45.h,
      width: 321.w,
      child: TextFormField(
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          hintText: 'Search Instructor',
          hintStyle: textStyle1.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: const Color(0xffAFAFAF),
          ),
          prefixIcon: const Icon(
            Icons.search_rounded,
            color: secondaryColor,
          ),
        ),
      ),
    );
  }
}
