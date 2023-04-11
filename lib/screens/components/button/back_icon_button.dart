import 'package:flutter/material.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({
    super.key, required this.callback, required this.color,
  });

  final VoidCallback callback;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () =>callback() ,
        child: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: color,
          size: fontSize_14,
        ));
  }
}