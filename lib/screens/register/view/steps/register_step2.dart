import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/register/view/steps/register_step3.dart';

import '../../../../core/resources/asset.dart';
import '../../../../core/resources/strings.dart';
import '../../../../core/style/colors.dart';

import '../../../../core/style/size.dart';
import '../../../components/app_bar/app_bar_component.dart';
import '../../../components/button/button_component.dart';

class RegisterStep2Page extends StatelessWidget {
  const RegisterStep2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarComponent(
          bgColor: clr_white,
          colorTitle: clr_black,
          colorIcon: clr_black,
          title: '',
          callback: () => Get.back(),
        ),
        body: Container(
          color: clr_white,
          height: Get.size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: height_16),
                  alignment: Alignment.center,
                  width: Get.size.width,
                  child: SizedBox(
                    width: Get.size.width / 1.4,
                    child: Text(
                      TITLE_5,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: fontSize_14,
                        fontWeight: FontWeight.w500,
                        color: clr_black,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  image_register,
                  width: width_200,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: width_8,
                    top: height_16,
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: height_16),
                          width: Get.size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.av_timer, size: fontSize_20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: Get.size.width / 1.3,
                                    child: Text(
                                      TITLE_6,
                                      style: TextStyle(fontSize: fontSize_12),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: height_8),
                                    width: Get.size.width / 1.2,
                                    height: 1, // Thickness
                                    color: clr_black12,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: height_16),
                          width: Get.size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon((Icons.phone_iphone), size: fontSize_20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: Get.size.width / 1.3,
                                    child: Text(
                                      TITLE_7,
                                      style: TextStyle(fontSize: fontSize_12),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: height_8),
                                    width: Get.size.width / 1.2,
                                    height: 1, // Thickness
                                    color: clr_black12,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: height_16),
                          width: Get.size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.change_circle_outlined, size: fontSize_20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: Get.size.width / 1.3,
                                    child: Text(
                                      TITLE_8,
                                      style: TextStyle(fontSize: fontSize_12),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: height_8),
                                    width: Get.size.width / 1.2,
                                    height: 1, // Thickness
                                    color: clr_black12,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: height_80,
          padding: EdgeInsets.only(top: height_12),
          decoration: BoxDecoration(
            color: clr_white,
            boxShadow: [bottomNavigationBar],
          ), // Get.to(const RegisterStep3Page()
          child: ButtonComponent(
            title: REGISTER_NOW,
            bgColor: button_color_home,
            callback: () => Get.to(
              const RegisterStep3Page(),
            ),
          ),
        ));
  }
}
