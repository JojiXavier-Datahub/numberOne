import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_app_bar1.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_elevated_button.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';

import 'widget/CustomExpansionTle.dart';


class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {

  bool expanded1 = false;
  bool expanded2 = false;

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
        children: [
          ...buildHelpSupport(),
        ],
      ),
    );
  }

  buildHelpSupport() {
    return [
      Text(
        'Help & Support',
        style: textStyle1.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 20.sp,
        ),
      ),
      const SizedBox(height: 10),
      CustomExpansionTle(
        isExpanded: expanded1,
        title: 'Do you offer offline courses?',
        description:
            'No, currently offer only online courses related to business and personal success. Many more courses will be added on the way. But if you want to clear any doubts in the course, you can contact us.',
        onExpansionChanged: (expaded) {
          setState(() => expanded1 = expaded);
        },
      ),
      CustomExpansionTle(
        isExpanded: expanded2,
        title: 'Do you have refund options?',
        description:
            'No, currently offer only online courses related to business and personal success. Many more courses will be added on the way. But if you want to clear any doubts in the course, you can contact us.',
        onExpansionChanged: (expaded) {
          setState(() => expanded2 = expaded);
        },
      ),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomElevatedButton(
            btnText: 'Order Offline',
            onPressed: () {},
            minimumSize: const Size(151, 41),
          ),
          CustomElevatedButton(
            btnText: 'Chat With Us',
            onPressed: () {},
            minimumSize: const Size(151, 41),
          ),
        ],
      )
    ];
  }
}
