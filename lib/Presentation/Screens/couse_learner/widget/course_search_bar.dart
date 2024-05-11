import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CourseSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  const CourseSearchBar({
    super.key,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 4,
            spreadRadius: 2,
            color: secondaryColor.withOpacity(0.1),
          ),
        ],
      ),
      child: TextFormField(
        textAlign: TextAlign.start,
        // textAlignVertical: TextAlignVertical.top,
        controller: controller,
        onChanged: onChanged,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.zero,
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search_rounded,
            color: secondaryColor,
          ),
        ),
      ),
    ));
  }
}
