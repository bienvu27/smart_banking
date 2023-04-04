import 'package:flutter/material.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/style/size.dart';

class TextFieldTransFer extends StatelessWidget {
  TextFieldTransFer({
    super.key, required this.labelText, this.suffixIcon,
  });
  final String labelText;
  IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: width_16, right: width_16, top: height_12),
      child: TextField(
        keyboardType: TextInputType.number,
        enabled: false,
        style: TextStyle(
            fontSize: fontSize_12, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: Icon(
            suffixIcon,
            size: fontSize_15,
            color: clr_black54,
          ),
          suffixIconColor: clr_black54,
          labelStyle: TextStyle(
              fontSize: fontSize_8,
              color: clr_black54,
              fontWeight: FontWeight.w500),
          disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: clr_black12),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: PRIMARY_COLOR),
          ),
        ),
      ),
    );
  }
}