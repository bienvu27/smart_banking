import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class TextFieldSubTitleComponent extends StatelessWidget {
   TextFieldSubTitleComponent({
    super.key,
    required this.label,
    required this.subTitle,
    required this.textInputType,
    this.enabled
  });

  final String label;
  final String subTitle;
  final TextInputType textInputType;
  bool? enabled = true ;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        TextField(
          keyboardType: textInputType,
          enabled: enabled,
          obscureText: false,
          style: TextStyle(
            fontSize: fontSize_12,
            fontWeight: FontWeight.w600,
            fontFamily: 'open_sans',
          ),
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(
                fontSize: fontSize_10, fontWeight: FontWeight.w500, fontFamily: 'open_sans', color: clr_black54),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: PRIMARY_COLOR),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 0.5,
                color: clr_black12,
              ),),
          ),
        ),
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
