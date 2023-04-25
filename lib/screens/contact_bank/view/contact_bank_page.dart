import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/resources/name_icon.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/app_bar/app_bar_component.dart';
import '../controller/contact_bank_controller.dart';
import 'dashedl_ine_vertical_painter.dart';

class ContactBankPage extends StatelessWidget {
  ContactBankPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        bgColor: clr_white,
        colorTitle: clr_black,
        colorIcon: clr_black,
        title: TITLE_81,
        callback: () => Get.back(),
      ),
      body: GetBuilder<ContactBankController>(
        init: ContactBankController(),
        builder: (controller){
          return Container(
            margin: EdgeInsets.only(
              top: height_8,
            ),
            color: Colors.white,
            padding: EdgeInsets.only(
              left: width_8,
              right: width_8,
            ),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    icon_vrb,
                    width: width_200,
                    height: height_80,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.apartment_outlined,
                      size: fontSize_20,
                      color: Colors.black45,
                    ),
                    SizedBox(
                      width: width_8,
                    ),
                    CustomPaint(
                      size: Size(1.5, height_40),
                      painter: DashedLineVerticalPainter(),
                    ),
                    SizedBox(
                      width: width_8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TITLE_82,
                          style: TextStyle(
                            fontFamily: 'open_sans',
                            fontSize: fontSize_8,
                            color: Colors.black45,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: Get.size.width / 1.3,
                          child: Text(
                            TITLE_83,
                            style: TextStyle(
                              fontFamily: 'open_sans',
                              fontSize: fontSize_10,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height_16,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: fontSize_20,
                      color: Colors.black45,
                    ),
                    SizedBox(
                      width: width_8,
                    ),
                    CustomPaint(
                      size: Size(1.5, height_28),
                      painter: DashedLineVerticalPainter(),
                    ),
                    SizedBox(
                      width: width_8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          HOTLINE,
                          style: TextStyle(
                            fontFamily: 'open_sans',
                            fontSize: fontSize_8,
                            color: Colors.black45,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          HOTLINE_BANK,
                          style: TextStyle(
                            fontFamily: 'open_sans',
                            fontSize: fontSize_10,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height_16,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      size: fontSize_20,
                      color: Colors.black45,
                    ),
                    SizedBox(
                      width: width_8,
                    ),
                    CustomPaint(
                      size: Size(1.5, height_28),
                      painter: DashedLineVerticalPainter(),
                    ),
                    SizedBox(
                      width: width_8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          EMAIL,
                          style: TextStyle(
                            fontFamily: 'open_sans',
                            fontSize: fontSize_8,
                            color: Colors.black45,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          EMAIL_BANK,
                          style: TextStyle(
                            fontFamily: 'open_sans',
                            fontSize: fontSize_10,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height_16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          size: fontSize_20,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: width_8,
                        ),
                        CustomPaint(size: Size(1.5, height_28), painter: DashedLineVerticalPainter()),
                        SizedBox(
                          width: width_8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              INFOR_APP,
                              style: TextStyle(
                                fontFamily: 'open_sans',
                                fontSize: fontSize_8,
                                color: Colors.black45,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              INFOR_APP_1,
                              style: TextStyle(
                                fontFamily: 'open_sans',
                                fontSize: fontSize_10,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: (){
                        controller.visibility();
                      },
                      child: Icon(
                        controller.showHide ? Icons.keyboard_arrow_down_sharp : Icons.keyboard_arrow_up,
                        size: fontSize_20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Visibility(
                  visible: controller.showHide,
                  child: Container(
                    width: Get.size.width,
                    margin: EdgeInsets.only(top: height_12),
                    padding: EdgeInsets.only(
                      top: height_8,
                      bottom: height_8,
                      left: width_8,
                      right: width_8,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          border_8,
                        ),
                        color: clr_f1faff),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              VERSION,
                              style: TextStyle(
                                fontFamily: 'open_sans',
                                fontSize: fontSize_10,
                                color: Colors.black45,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              VERSION_APP,
                              style: TextStyle(
                                fontFamily: 'open_sans',
                                fontSize: fontSize_10,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height_12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              UPDATE,
                              style: TextStyle(
                                fontFamily: 'open_sans',
                                fontSize: fontSize_10,
                                color: Colors.black45,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "09/03/2023",
                              style: TextStyle(
                                fontFamily: 'open_sans',
                                fontSize: fontSize_10,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height_12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              TITLE_84,
                              style: TextStyle(
                                fontFamily: 'open_sans',
                                fontSize: fontSize_10,
                                color: Colors.black45,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '63 MB',
                              style: TextStyle(
                                fontFamily: 'open_sans',
                                fontSize: fontSize_10,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height_12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              LANGUAGE,
                              style: TextStyle(
                                fontFamily: 'open_sans',
                                fontSize: fontSize_10,
                                color: Colors.black45,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Tiếng Việt, Tiếng Anh, Tiếng Nga",
                              style: TextStyle(
                                fontFamily: 'open_sans',
                                fontSize: fontSize_10,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      )
    );
  }
}
