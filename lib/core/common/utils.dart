import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_banking/router/app_routers.dart';
import 'package:smart_banking/screens/dashboard/controller/dashboard_controller.dart';
import 'package:smart_banking/screens/home/controller/home_controller.dart';
import '../../screens/components/button/button_component.dart';
import '../../screens/components/dialog/custom_dialog.dart';
import '../../screens/components/text_field/text_field_icon_component.dart';
import '../../screens/components/text_field/text_field_icon_subtile_component.dart';
import '../resources/strings.dart';
import '../style/colors.dart';
import '../style/size.dart';
import '../widgets/warning_dialog.dart';

class Utils {

  static void showAuthenticationDialog(BuildContext context) {

    TextEditingController phoneController = new TextEditingController();
    TextEditingController passwordController = new TextEditingController();

    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.r),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          margin: EdgeInsets.only(left: width_8, right: width_8, top: height_8),
          height: Get.size.height / 1.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: width_20,
                      height: height_20,
                      decoration: const BoxDecoration(
                        color: clr_black12,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.close,
                        size: fontSize_12,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: height_2,
                      bottom: height_2,
                      right: width_2,
                      left: width_2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(border_16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'EN',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: fontSize_12),
                        ),
                        SizedBox(
                          width: width_4,
                        ),
                        Image.asset(
                          'assets/images/english_icon.png',
                          width: width_12,
                          height: height_12,
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height_12,
              ),
              CircleAvatar(
                backgroundColor: clr_black12,
                radius: border_50,
                child: Icon(
                  Icons.person,
                  size: fontSize_20,
                  color: clr_white,
                ),
              ),
              // SizedBox(
              //   height: height_10,
              // ),
              // Text("NGUYEN DUC VUONG", style: TextStyle(
              //   fontSize: fontSize_12,
              //   color: PRIMARY_COLOR,
              //   fontWeight: FontWeight.w600,
              // ),),
              Container(
                margin: EdgeInsets.only(top: height_16),
                child: Column(
                  children: [
                    TextFieldIconComponent(
                      textController: phoneController,
                        labelText: PHONE_NUMBER, icon: Icons.phone, textInputType: TextInputType.number),
                    Container(
                        margin: EdgeInsets.only(top: height_16),
                        child: TextFieldIconSubTitleComponent(
                          textController: passwordController,
                          label: PASSWORD,
                          textInputType: TextInputType.text,
                          subTitle: FORGOT_PASSWORD,
                          obscureText: true,
                          icon: Icons.lock,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height_16),
                child: ButtonComponent(title: LOGIN, bgColor: button_color_home, callback: () async {
                  FocusScope.of(context).unfocus();
                  if(phoneController.text.isEmpty) {
                    showWarningDialog(context, "Vui lòng điền số điện thoại");
                  } else if(passwordController.text.isEmpty) {
                    showWarningDialog(context, "Vui lòng điền mật khẩu");
                  } else {
                    SharedPreferences pref = await SharedPreferences.getInstance();
                    await pref.setString("username", phoneController.text);
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamedAndRemoveUntil(AppRouters.DASHBOARD, (route) => false);
                    Get.put(DashboardController());
                  }
                }),
              ),
              Container(
                margin: EdgeInsets.only(top: height_24),
                child: Column(
                  children: [
                    Text(
                      CONVERSION_GUIDE,
                      style: TextStyle(
                        fontSize: fontSize_12,
                        fontWeight: FontWeight.w500,
                        color: PRIMARY_COLOR,
                      ),
                    ),
                    SizedBox(
                      height: height_16,
                    ),
                    Text(
                      SIGN_IN,
                      style: TextStyle(
                        fontSize: fontSize_12,
                        fontWeight: FontWeight.w500,
                        color: PRIMARY_COLOR,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  static void showWarningDialog(BuildContext context, String title) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) => WarningDialog(
          title: title,
          cancel: CANCEL,
          clickCallback: () {
            Navigator.of(context).pop();
          },
        ));
  }

}