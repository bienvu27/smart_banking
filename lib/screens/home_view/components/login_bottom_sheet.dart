import 'package:flutter/material.dart';
import 'package:smart_banking/res/app_context_extention.dart';
import '../../../res/text_style/app_text_style.dart';
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
        style: AppTextStyle().bigTextStyle.copyWith(
          color: context.resources.color.colorPrimary,
        ),
      ),
    );
  }
}
