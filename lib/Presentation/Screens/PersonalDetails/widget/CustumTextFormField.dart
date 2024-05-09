import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

class CustumTextFormField extends StatelessWidget {
  const CustumTextFormField({
    super.key,
    required this.controller,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.labelIcon,
    this.enabled = false,
    this.onTap,
  });

  final TextEditingController controller;
  final String label;
  final InlineSpan? labelIcon;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool enabled;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      controller: controller,
      decoration: InputDecoration(
        label: RichText(
          text: TextSpan(
            text: label,
            children: [
              if (labelIcon != null) labelIcon!,
            ],
            style: textStyle1.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 10.sp,
              color: labelColor,
            ),
          ),
          textScaler: const TextScaler.linear(1.25),
        ),
        prefix: prefixIcon,
        suffix: suffixIcon,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: boderLine), //inputBorder
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: boderLine),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: inputBorder),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 6),
        // isDense: true,
      ),
      maxLines: null,
      onTap: onTap,
      textInputAction: TextInputAction.done,
      style: textStyle1.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 16.sp,
      ),
    );
  }
}
