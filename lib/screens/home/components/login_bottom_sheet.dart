import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/components/text_field/text_field_icon_subtile_component.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/button/button_component.dart';
import '../../components/text_field/text_field_icon_component.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
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
                    height: height_24,
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
                  Container(
                    margin: EdgeInsets.only(top: height_16),
                    child: Column(
                      children: [
                        TextFieldIconComponent(
                            labelText: PHONE_NUMBER, icon: Icons.phone, textInputType: TextInputType.number),
                        Container(
                            margin: EdgeInsets.only(top: height_16),
                            child: const TextFieldIconSubTitleComponent(
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
                    child: ButtonComponent(title: LOGIN, bgColor: button_color_home, callback: () {}),
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
      },
      child: Text(
        LOGIN,
        style: TextStyle(fontSize: fontSize_12, fontWeight: FontWeight.w500, color: PRIMARY_COLOR_BLUE),
      ),
    );
  }
}
