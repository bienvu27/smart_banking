import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/style.dart';


class TextFieldSubTitleComponent extends StatelessWidget {
  const TextFieldSubTitleComponent({
    super.key, required this.label, required this.subTitle, required this.textInputType,
  });

  final String label;
  final String subTitle;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        TextField(
          keyboardType: textInputType,
            enabled: true,
            obscureText: false,
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w900),
            decoration: InputDecoration(
                labelText: label,
                labelStyle: TextStyle(
                    fontSize: 17.sp,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: PRIMARY_COLOR),
                ),
                disabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: clr_black)))),
        Positioned(
            right: 5.w,
            child: Text(
              subTitle,
              style: const TextStyle(color: clr_black12),
            ))
      ],
    );
  }
}