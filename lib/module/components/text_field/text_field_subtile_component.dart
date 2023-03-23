import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/my_color .dart';

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
                    fontSize: 15.sp,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: MyColor.PRIMARY_COLOR_BLUE),
                ),
                disabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)))),
        Positioned(
            right: 5.w,
            child: Text(
              subTitle,
              style: const TextStyle(color: Colors.black12),
            ))
      ],
    );
  }
}