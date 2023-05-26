import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_banking/res/app_context_extention.dart';
import 'dialog_home_view/dialog_avatar_home_view.dart';

class DialogBottomSheet {
  static void showBottomDialogHomeAvatar(BuildContext context) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? time = "${pref.get("timeCode")}";
    showModalBottomSheet<void>(
      backgroundColor: context.resources.color.colorWhite,
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            context.resources.dimension.defaultBorderRadius,
          ),
        ),
      ),
      builder: (BuildContext context) {
        return DialogAvatarHomeView(
          time: time,
        );
      },
    );
  }
}
