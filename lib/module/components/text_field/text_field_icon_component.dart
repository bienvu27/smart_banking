import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      decoration: InputDecoration(
        labelText: labelText,
        //babel text
        prefixIcon: Icon(
          icon,
          color: MyColor.PRIMARY_COLOR_BLUE,
        ),
        labelStyle: TextStyle(
            fontSize: 15.sp,
            color: Colors.black54,
            fontWeight: FontWeight.w400),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: MyColor.PRIMARY_COLOR_BLUE),
        ),
      ),
    );
  }
}