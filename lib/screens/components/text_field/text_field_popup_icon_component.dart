import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class TextFieldPopupIconComponent extends StatelessWidget {
  const TextFieldPopupIconComponent({
    super.key,
    required this.label,
    required this.icon,
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
            style: TextStyle(
              fontSize: fontSize_12,
              fontWeight: FontWeight.w500,
              fontFamily: 'open_sans',
            ),
            decoration: InputDecoration(
                labelText: label,
                labelStyle: TextStyle(
                  fontSize: fontSize_12,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'open_sans',
                  color: clr_black54,
                ),
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
