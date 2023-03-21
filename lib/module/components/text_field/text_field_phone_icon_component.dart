import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldPhoneIconComponent extends StatelessWidget {
  TextFieldPhoneIconComponent({
    super.key, required this.labelText, this.icon
  });
  final String labelText;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: labelText,
        //babel text
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
        labelStyle: TextStyle(
            fontSize: 15.sp,
            color: Colors.black54,
            fontWeight: FontWeight.w400),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}