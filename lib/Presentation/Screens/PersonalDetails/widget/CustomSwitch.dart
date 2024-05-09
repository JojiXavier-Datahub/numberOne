import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CustomSwitch extends StatefulWidget {
  final void Function(bool isToggled) onToggled;

  const CustomSwitch({super.key, required this.onToggled});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isToggled = false;
  double size = 20;
  double innerPadding = 0;

  @override
  void initState() {
    innerPadding = size / 10;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => isToggled = !isToggled);
        widget.onToggled(isToggled);
      },
      onPanEnd: (b) {
        setState(() => isToggled = !isToggled);
        widget.onToggled(isToggled);
      },
      child: AnimatedContainer(
        height: size,
        width: 45.w,
        padding: EdgeInsets.all(innerPadding),
        alignment: isToggled ? Alignment.centerRight : Alignment.centerLeft,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isToggled ? secondaryColor : Colors.grey.shade300,
        ),
        child: Directionality(
          textDirection: isToggled ? TextDirection.rtl : TextDirection.ltr,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: size - innerPadding * 2,
                height: size - innerPadding * 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: isToggled ? Colors.white : Colors.grey.shade500,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                isToggled ? 'YES' : 'NO',
                style: textStyle1.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 10.sp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
