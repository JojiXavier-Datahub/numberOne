import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({
    super.key,
    required this.dropdownvalue,
    required this.items,
    this.onChanged,
  });

  final String dropdownvalue;
  final List<String> items;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      padding: const EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        color: const Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          padding: EdgeInsets.zero,
          elevation: 0,
          value: dropdownvalue,
          icon: Container(
            width: 26,
            color: const Color(0xffE2EAEA),
            child: const Icon(Icons.keyboard_arrow_down),
          ),
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: FittedBox(
                child: Text(
                  items,
                  style: textStyle1.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
