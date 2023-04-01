import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';


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
      style: TextStyle(
          fontSize: fontSize_12, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
            fontSize: fontSize_10,
            color: clr_black54,
            fontWeight: FontWeight.w500),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: clr_black12),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: PRIMARY_COLOR),
        ),
      ),
    );
  }
}
