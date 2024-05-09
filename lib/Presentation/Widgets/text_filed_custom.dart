import 'package:flutter/material.dart';

import '../../Utils/colors.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String? labelText;
  final String? errorText;
  final TextEditingController controller;
  final String? hintText;
  final bool? enabled;
  final int? maxlength;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final ValueChanged<String>? onFieldSubmitted;
  final void Function(String)? change;
  final void Function()? onEditingCompleted;

  const TextFormFieldCustom({
    super.key,
    this.labelText,
    this.hintText,
    this.keyboardType,
    this.validator,
    this.onSaved,
    this.textInputAction,
    this.focusNode,
    this.onFieldSubmitted,
    required this.controller,
    this.change,
    this.errorText,
    this.onEditingCompleted,
    this.enabled,
    this.maxlength
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Container(
         decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Set shadow color
                  spreadRadius: 5, // Set the spread radius of the shadow
                  blurRadius: 7, // Set the blur radius of the shadow
                  offset: Offset(0, 3), // Set the offset of the shadow
                ),
              ],
        
       
      ),
        child: TextFormField(
          enabled: enabled == null ? true : false,
          onChanged: change,
        
          controller: controller,
          maxLength: maxlength,
          decoration: InputDecoration(
            errorText: errorText,
            labelText: labelText,
            labelStyle: const TextStyle(
              color: greyColor, 
            ),
            hintText: hintText,
            // focusedBorder: const  UnderlineInputBorder(
            //   borderSide: BorderSide(color: primaryColor),
            // ),
          ),
          onEditingComplete: onEditingCompleted,
          keyboardType: keyboardType ?? TextInputType.text,
          validator: validator,
          onSaved: onSaved,
          textInputAction: textInputAction,
          focusNode: focusNode,
          onFieldSubmitted: onFieldSubmitted,
        ),
      ),
    );
  }
}
