import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_app_bar1.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';

import 'widget/CustumTextFormField.dart';

class SubscriptionDetails extends StatelessWidget {
  const SubscriptionDetails({super.key});

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
          Text(
            'Subscription Details',
            style: textStyle1.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
            ),
          ),
          const SizedBox(height: 10),
          CustumTextFormField(
            enabled: false,
            controller: TextEditingController(text: 'Gold Plan - ₹5,999/yr'),
            label: 'Subscription Plan',
            suffixIcon: const GoldTextIcon(),
          ),
          const SizedBox(height: 10),
          CustumTextFormField(
            enabled: false,
            controller: TextEditingController(text: '20, January 2024'),
            label: 'Plan Activation Date',
          ),
          const SizedBox(height: 10),
          CustumTextFormField(
            enabled: false,
            controller: TextEditingController(text: '19, January 2025'),
            label: 'Expiry Date',
          )
        ],
      ),
    );
  }
}

class GoldTextIcon extends StatelessWidget {
  const GoldTextIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.26.h,
      width: 47.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffFFAC00),
              Color(0xffA67000),
            ],
          )),
      child: Text(
        'GOLD',
        style: textStyle1.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 10.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}
