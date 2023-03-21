import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            decoration: InputDecoration(
                labelText: label,
                labelStyle: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                disabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)))),
        Positioned(
            right: 5.w,
            child: Icon(
              icon,
              color: Colors.red,
            ))
      ],
    );
  }
}