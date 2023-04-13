import 'package:flutter/material.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class TextFieldComponent extends StatelessWidget {
   TextFieldComponent({
    super.key,
    required this.label,
    required this.textInputType,
    this.text
  });

  final String label;
  String? text;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      controller: TextEditingController(text: text),
      style: TextStyle(
        fontSize: fontSize_12,
        fontWeight: FontWeight.w600,
        fontFamily: 'open_sans',
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          fontSize: fontSize_11,
          fontFamily: 'open_sans',
          color: clr_black54,
          fontWeight: FontWeight.w500,
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: clr_black12),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: PRIMARY_COLOR),
        ),
      ),
    );
  }
}
