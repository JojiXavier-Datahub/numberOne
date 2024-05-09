import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Utils/Helper/shared_pref.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';
import 'package:number_one_academy_v2/Utils/global_data.dart';

import '../../Widgets/custom_appbar.dart';
import '../Courses/courses_screen.dart';
import '../HomePage/home_screen.dart';
import '../Profile/profile_screen.dart';
import 'widgets/bottom_nav.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    const CoursesScreen(),
    const HomeScreen(),
    const ProfileScreen(),
    const ProfileScreen(),

    // ScreenMyAccount()
  ];

  @override
  Widget build(BuildContext context) {
    subscribedd();

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: ValueListenableBuilder(
        builder: (context, int index, _) {
          return _pages[index];
        },
        valueListenable: indexChangeNotifier,
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
