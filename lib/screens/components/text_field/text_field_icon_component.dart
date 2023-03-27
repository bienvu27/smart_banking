import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style.dart';
import '../../../res/my_color .dart';

class TextFieldIconComponent extends StatelessWidget {
  TextFieldIconComponent({
    super.key, required this.labelText, this.icon, required this.textInputType
  });
  final String labelText;
  IconData? icon;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w900),
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(
          icon,
          color: clr_black26,
        ),
        labelStyle: TextStyle(
            fontSize: 15.sp,
            color: clr_black26,
            fontWeight: FontWeight.w500),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: clr_blue_customization),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: clr_blue_customization),
        ),
      ),
    );
  }
}