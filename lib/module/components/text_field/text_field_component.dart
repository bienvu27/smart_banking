import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/my_color .dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent({
    super.key, required this.label, required this.textInputType,
  });

  final String label;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
            fontSize: 15.sp,
            color: Colors.black54,
            fontWeight: FontWeight.w500),
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
