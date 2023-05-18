import 'package:flutter/material.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class TextFieldComponent extends StatelessWidget {
   TextFieldComponent({
    super.key,
    required this.label,
    required this.textInputType,
     this.textController,
     this.onChange,
    this.text,
    this.suffix,
    this.counter,
    this.focusNode,
    this.maxLength,
     this.autoFocus
  });

  final String label;
  String? text;
  TextEditingController? textController;
  Function? onChange;
  Widget? suffix, counter;
  int? maxLength;
  FocusNode? focusNode;
  final TextInputType textInputType;
  final bool? autoFocus;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      focusNode: focusNode,
      controller: textController ?? TextEditingController(text: text),
      onChanged: (_) {
        if(onChange != null) {
          onChange!(_);
        }
      },
      autofocus: autoFocus ?? false,
      maxLength: maxLength,
      style: TextStyle(
        fontSize: fontSize_12,
        fontWeight: FontWeight.w600,
        fontFamily: 'open_sans',
      ),
      decoration: InputDecoration(
        counter: textController != null && textController!.text.isNotEmpty ? counter : null,
        counterText: "",
        labelText: label,
        suffixIcon: suffix,
        labelStyle: TextStyle(
          fontSize: fontSize_12,
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
