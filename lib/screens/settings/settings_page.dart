import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/settings/view/other_settings.dart';
import '../../core/common/utils.dart';
import '../../core/resources/strings.dart';
import '../../core/style/colors.dart';
import '../../core/style/size.dart';

import 'components/settings_component.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(bottom: height_16),
                    height: height_400,
                    color: Colors.grey[100],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(top: height_24, bottom: height_8),
                          width: height_40,
                          height: width_40,
                          decoration: const BoxDecoration(
                            color: clr_black12,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.person,
                            size: fontSize_20,
                            color: clr_white,
                          ),
                        ),
                        Text(
                          GOOD_MORNING,
                          style: TextStyle(
                            fontSize: fontSize_11,
                            fontWeight: FontWeight.w400,
                            color: clr_black12,
                          ),
                        ),
                        SizedBox(
                          height: height_4,
                        ),
                        Text(
                          NAME_TEST,
                          style: TextStyle(
                            fontSize: fontSize_14,
                            fontWeight: FontWeight.w500,
                            color: clr_black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: height_28,
                      right: width_8,
                      child: GestureDetector(
                        onTap: () async {
                          Utils.showDialogLogout(
                              context, LOGOUT, LOGOUT_2, NO, YES);
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                            top: height_4,
                            bottom: height_4,
                            left: width_8,
                            right: width_8,
                          ),
                          decoration: BoxDecoration(
                            color: clr_yellow100,
                            borderRadius: BorderRadius.circular(border_16),
                          ),
                          child: Row(
                            children: [
                              Text(
                                EXIT,
                                style: TextStyle(
                                  fontSize: fontSize_12,
                                  color: PRIMARY_COLOR_RED,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: width_4,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: fontSize_11,
                                color: PRIMARY_COLOR_RED,
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                  left: width_8,
                  right: width_8,
                  top: height_16,
                ),
                color: clr_white,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      PERSONAL,
                      style: TextStyle(
                        fontSize: fontSize_14,
                        fontWeight: FontWeight.w500,
                        color: clr_black,
                      ),
                    ),
                    SizedBox(
                      height: height_16,
                    ),
                    SettingComponent(
                      title: CHANGE_AVATAR,
                      icon: Icons.account_circle_outlined,
                      callback: () {},
                    ),
                    SettingComponent(
                      title: CHANGE_BG,
                      icon: Icons.broken_image_outlined,
                      callback: () {},
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height_6),
                padding: EdgeInsets.only(
                  left: width_8,
                  right: width_8,
                  top: height_16,
                ),
                color: clr_white,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ADVANCED_SETTINGS,
                      style: TextStyle(
                        fontSize: fontSize_14,
                        fontWeight: FontWeight.w500,
                        color: clr_black,
                      ),
                    ),
                    SizedBox(
                      height: height_16,
                    ),
                    SettingComponent(
                      title: TRANSFER_CONTACTS,
                      icon: Icons.phone_iphone,
                      callback: () {},
                    ),
                    SettingComponent(
                      title: PAYMENT_FORM,
                      icon: Icons.sd_card,
                      callback: () {},
                    ),
                    SettingComponent(
                      title: CHANGE_PASSWORD,
                      icon: Icons.lock,
                      callback: () {},
                    ),
                    SettingComponent(
                      title: LOGIN_SETTING,
                      icon: Icons.vpn_lock,
                      callback: () {},
                    ),
                    SettingComponent(
                      title: OTHER_SETTINGS,
                      icon: Icons.fingerprint,
                      callback: () => Get.to(() => OtherSettings()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
