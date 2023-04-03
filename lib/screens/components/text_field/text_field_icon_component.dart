import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';


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
      style: TextStyle(
          fontSize: fontSize_12, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(
          icon,
          color: clr_black26,
        ),
        labelStyle: TextStyle(
            fontSize: fontSize_10,
            color: clr_black54,
            fontWeight: FontWeight.w500),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: PRIMARY_COLOR),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: PRIMARY_COLOR),
        ),
      ),
    );
  }
}