import 'package:flutter/material.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({
    super.key, required this.callback,
  });

  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () =>callback() ,
        child: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: clr_black,
          size: fontSize_14,
        ));
  }
}