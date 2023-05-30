import 'package:flutter/material.dart';
import 'package:smart_banking/res/app_context_extention.dart';
import 'package:smart_banking/view_model/home_view_model/dialog_home/dialog_home_view/text_icon_dialog_avt_home.dart';
import '../../../../res/dimentions/gaps.dart';
import '../../../../res/strings/strings.dart';
import '../../../../utils/utils.dart';

class DialogAvatarHomeView extends StatelessWidget {
  const DialogAvatarHomeView({Key? key, this.time}) : super(key: key);
  final String? time;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: context.resources.dimension.gapH2,
      ),
      color: context.resources.color.colorWhite,
      padding: EdgeInsets.only(
        top: context.resources.dimension.defaultMargin,
        left: context.resources.dimension.bigMargin,
        right: context.resources.dimension.defaultMargin,
      ),
      height: context.resources.dimension.mediaQueryHeight / 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextIconDialog(
            onTap: () {},
            title: CHANGE_AVATER,
            check: 1,
            icon: Icons.account_circle_rounded,
          ),
          gapH2,
          TextIconDialog(
            onTap: () {},
            title: CHANGE_BG,
            check: 1,
            icon: Icons.image,
          ),
          gapH2,
          TextIconDialog(
            onTap: () {
              Utils.showDialogLogout(context, LOGOUT, LOGOUT_2, NO, YES);
            },
            title: LOGOUT,
            check: 2,
            time: time,
            icon: Icons.logout,
          ),
        ],
      ),
    );
  }
}
