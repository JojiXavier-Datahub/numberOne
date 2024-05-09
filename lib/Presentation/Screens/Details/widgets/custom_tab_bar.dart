import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key, this.controller});
  final TabController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      color: greyTab,
      child: TabBar(
        controller: controller,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: const BoxDecoration(
          color: primaryColor,
          border: Border(
            right: BorderSide(color: Colors.white, width: 2),
            left: BorderSide(color: Colors.white, width: 2),
          ),
        ),
        tabs: [
          Tab(child: buildTabTitle('Chapters')),
          Tab(child: buildTabTitle('Overview')),
          Tab(child: buildTabTitle('Downloads')),
        ],
      ),
    );
  }

  buildTabTitle(String text) {
    return Text(
      text,
      style: textStyle1.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 12,
      ),
    );
  }
}
