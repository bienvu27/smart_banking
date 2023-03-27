import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style.dart';
import '../../../res/my_color .dart';

class TextFieldPopupIconComponent extends StatelessWidget {
  const TextFieldPopupIconComponent({
    super.key, required this.label, required this.icon,
  });

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        TextField(
            enabled: false,
            obscureText: false,
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w900),
            decoration: InputDecoration(
                labelText: label,
                labelStyle: TextStyle(
                    fontSize: 17.sp,
                    color: clr_black54,
                    fontWeight: FontWeight.w500),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: clr_black54),
                ),
                disabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: clr_black54)))),
        Positioned(
            right: 5.w,
            child: Icon(
              icon,
              color: clr_366173,
            ))
      ],
    );
  }
}