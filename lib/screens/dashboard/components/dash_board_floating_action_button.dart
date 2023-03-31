import 'package:flutter/material.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class DashBoardFloatingActionButton extends StatelessWidget {
  const DashBoardFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(border_16)),
      shadowColor: PRIMARY_COLOR,
      child: CircleAvatar(
        radius: border_16,
        backgroundColor: clr_white,
        child: FloatingActionButton(
          backgroundColor: PRIMARY_COLOR,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            side: BorderSide(width: width_2, color: clr_white),
            borderRadius: BorderRadius.circular(border_40),
          ),
          child: const Icon(Icons.qr_code_2),
        ),
      ),
    );
  }
}
