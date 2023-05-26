import 'package:flutter/material.dart';
import '../../../utils/utils.dart';
import '../../../res/strings/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Utils.showAuthenticationDialog(context);
      },
      child: Text(
        LOGIN,
        style: TextStyle(
          fontSize: fontSize_12,
          fontWeight: FontWeight.w500,
          color: PRIMARY_COLOR_BLUE,
        ),
      ),
    );
  }
}
