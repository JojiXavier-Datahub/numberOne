import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(1);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
      
        return MoltenBottomNavigationBar(
          barHeight: 60.h,
          domeCircleColor: primaryColor,
          barColor: secondaryColor,
          selectedIndex: newIndex,
          onTabChange: (clickedIndex) {
            indexChangeNotifier.value = clickedIndex;
          },
          tabs: [
            MoltenTab(
              icon: SvgPicture.asset(courseIcon),
            ),
            MoltenTab(
              icon: SvgPicture.asset(homeIcon),
            ),
            MoltenTab(
              icon: SvgPicture.asset(profileIcon),
            ),
          ],
        );

        // BottomNavigationBar(
        //   selectedFontSize: 12,
        //   unselectedFontSize: 11,
        //   type: BottomNavigationBarType.fixed,
        //   currentIndex: newIndex,
        //   selectedItemColor: primaryColor,
        //   elevation: 0,
        //   onTap: (index) {
        //     indexChangeNotifier.value = index;
        //   },
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Padding(
        //         padding: EdgeInsets.all(5.0),
        //         child: ImageIcon(
        //             AssetImage("images/Vector Smart Object copy 7.png")),
        //       ),
        //       label: "Home",
        //     ),
        //     BottomNavigationBarItem(
        //         icon: Padding(
        //           padding: EdgeInsets.all(5.0),
        //           child: ImageIcon(AssetImage("images/categories.png")),
        //         ),
        //         label: 'Categories'),
        //     BottomNavigationBarItem(
        //       icon: Padding(
        //         padding: EdgeInsets.all(5.0),
        //         child: ImageIcon(AssetImage("images/Vector Smart Object2.png")),
        //       ),
        //       label: "Deals",
        //     ),
        //     BottomNavigationBarItem(
        //         icon: Padding(
        //           padding: EdgeInsets.all(5.0),
        //           child:
        //               ImageIcon(AssetImage("images/Vector Smart Object11.png")),
        //         ),
        //         label: 'My Account'),
        //   ],
        // );
      },
    );
  }
}
