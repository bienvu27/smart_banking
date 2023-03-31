import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/style.dart';


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
      style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w900),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
            fontSize: 17.sp,
            color: Colors.black54,
            fontWeight: FontWeight.w500),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: PRIMARY_COLOR),
        ),
      ),
    );
  }
}
