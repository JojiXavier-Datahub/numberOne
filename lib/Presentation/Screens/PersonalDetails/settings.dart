import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_app_bar1.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';
import 'widget/LanguageDropdown.dart';
import 'widget/OrderDetailsTile.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final String dropdownvalue = 'Malayalam';
  final items = ['English', 'Malayalam', 'Tamil'];
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
          
          ...buildSettings(),
        
        ],
      ),
    );
  }

  buildSettings() {
    return [
      Text(
        'Settings',
        style: textStyle1.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 20.sp,
        ),
      ),
     kh10,
      // OrderDetailsTile(
      //     titleText: 'Push Notifications',
      //     trailing: CustomSwitch(
      //       onToggled: (isToggled) {},
      //     )),
      // OrderDetailsTile(
      //     titleText: 'Sounds',
      //     trailing: CustomSwitch(
      //       onToggled: (isToggled) {},
      //     )),
      OrderDetailsTile(
        titleText: 'Preferred Languages',
        trailing: LanguageDropdown(
          dropdownvalue: dropdownvalue,
          items: items,
          onChanged: (p0) {},
        ),
      ),
    ];
  }

 
}
