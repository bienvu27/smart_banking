import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';


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
            style: TextStyle(
                fontSize: fontSize_12, fontWeight: FontWeight.w600),
            decoration: InputDecoration(
                labelText: label,
              prefixIcon: Icon(
              icon,
              color: clr_black26,
            ),
                labelStyle: TextStyle(
                    fontSize: fontSize_10,
                    color: clr_black54,
                    fontWeight: FontWeight.w500),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: PRIMARY_COLOR),
                ),
                disabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: PRIMARY_COLOR)))),
        Positioned(
            right: width_4,
            child: Text(
              subTitle,
              style: TextStyle(
                  fontSize: fontSize_10,
                  fontWeight: FontWeight.w500,
                  color: PRIMARY_COLOR),
            ))
      ],
    );
  }
}