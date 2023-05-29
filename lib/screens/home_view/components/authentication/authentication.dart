import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/res/app_context_extention.dart';
import '../../../../res/strings/strings.dart';
import '../../../../res/text_style/app_text_style.dart';
import '../login_bottom_sheet.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const LoginBottomSheet(),
        InkWell(
          onTap: () {
            Get.toNamed("/register", arguments: '');
          },
          child: Text(
            SIGN_IN,
            style: AppTextStyle().verySmallTextStyle.copyWith(
                  color: context.resources.color.colorBlack.withOpacity(.3),
                ),
          ),
        ),
      ],
    );
  }
}
