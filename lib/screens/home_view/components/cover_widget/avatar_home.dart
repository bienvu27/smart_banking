import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/res/app_context_extention.dart';
import 'package:smart_banking/res/text_style/app_text_style.dart';
import '../../../../core/resources/asset.dart';
import '../../../../res/strings/strings.dart';
import '../../../../view_model/home_view_model/dialog_home/dialog_bottom_sheet_home.dart';
import '../../../../view_model/home_view_model/home_view_model.dart';

class AvatarHome extends StatelessWidget {
  const AvatarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HomeController(),
        builder: (c) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () async {
                      if (c.isLogin) DialogBottomSheet.showBottomDialogHomeAvatar(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: context.resources.color.colorWhite.withOpacity(0.5),
                      radius: 20,
                      child: c.isLogin
                          ? Image.asset(
                              logoSeatech,
                              width: 30,
                              fit: BoxFit.fitWidth,
                            )
                          : Icon(
                              Icons.person,
                              color: context.resources.color.colorWhite,
                              size: 25,
                            ),
                    ),
                  ),
                  if (c.isLogin)
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        backgroundColor: context.resources.color.colorWhite,
                        radius: 7,
                        child: Icon(
                          Icons.menu,
                          size: 11,
                          color: context.resources.color.colorBlack,
                        ),
                      ),
                    )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: context.resources.dimension.defaultMargin,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      GOOD_MORNING,
                      style: AppTextStyle().boldDefaultTextStyle.copyWith(
                            color: context.resources.color.colorWhite.withOpacity(0.5),
                          ),
                    ),
                    if (c.isLogin)
                      Text(
                        NAME_TEST.toUpperCase(),
                        style: AppTextStyle().boldDefaultTextStyle.copyWith(
                              color: context.resources.color.colorWhite,
                              fontSize: 17,
                            ),
                      ),
                  ],
                ),
              )
            ],
          );
        });
  }
}
