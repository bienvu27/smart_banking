import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style.dart';
import '../../../res/my_color .dart';

class TextFieldIconSubTitleComponent extends StatelessWidget {
  const TextFieldIconSubTitleComponent({
    super.key, required this.label, required this.subTitle, required this.textInputType, required this.obscureText, required this.icon,
  });

  final String label;
  final String subTitle;
  final TextInputType textInputType;
  final bool obscureText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        TextField(

          keyboardType: textInputType,
            enabled: true,
            obscureText: obscureText,
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w900),
            decoration: InputDecoration(
                labelText: label,
              prefixIcon: Icon(
              icon,
              color: clr_black26,
            ),
                labelStyle: TextStyle(
                    fontSize: 15.sp,
                    color: clr_black26,
                    fontWeight: FontWeight.w500),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: clr_blue_customization),
                ),
                disabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: clr_blue_customization)))),
        Positioned(
            right: 5.w,
            child: Text(
              subTitle,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: clr_blue_customization),
            ))
      ],
    );
  }
}