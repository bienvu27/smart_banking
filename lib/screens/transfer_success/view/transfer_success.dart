import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/resources/asset.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

import '../../../router/app_routers.dart';
import '../../register/controller/register_controller.dart';
import '../../transaction_confirmation/view/talk_card_decoration.dart';
import '../../transaction_confirmation/view/ticket_clipper.dart';

class TransferSuccessPage extends StatelessWidget {
  const TransferSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: linearGradientButtom),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: height_28,
              ),
              padding: EdgeInsets.only(
                left: width_12,
                right: width_12,
              ),
              height: height_96,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(border_8),
                    child: Image.asset(
                      image_success,
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: height_12,
                left: width_12,
                right: width_12,
              ),
              child: ClipPath(
                clipper: TicketClipper(true, true),
                child: TalkCardDecoration(
                  child: Container(
                    padding: EdgeInsets.only(top: height_16, bottom: height_16),
                    width: MediaQuery.of(context).size.width,
                    color: clr_white,
                    child: Column(
                      children: [
                        Image.asset(
                          icon_vrb,
                          width: width_80,
                          height: height_48,
                        ),
                        Text(
                          TRANSFER_SUCCESS,
                          style: TextStyle(
                            fontSize: fontSize_14,
                            fontFamily: 'open_sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: height_20,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: TITLE_45,
                            style: TextStyle(
                              fontSize: fontSize_14,
                              color: clr_black,
                              fontWeight: FontWeight.w500,
                              height: lineHeight_1_5,
                            ),
                            children: [
                              TextSpan(
                                text: MONEY_TEST,
                                style: TextStyle(
                                  fontSize: fontSize_14,
                                  fontWeight: FontWeight.w500,
                                  color: PRIMARY_COLOR,
                                ),
                              ),
                              TextSpan(
                                text: TITLE_46,
                                style: TextStyle(
                                  fontSize: fontSize_14,
                                  fontWeight: FontWeight.w400,
                                  color: clr_black,
                                ),
                              ),
                              TextSpan(
                                text: NUMBER_TEST,
                                style: TextStyle(
                                  fontSize: fontSize_14,
                                  fontWeight: FontWeight.w500,
                                  color: PRIMARY_COLOR,
                                ),
                              ),
                              TextSpan(
                                text: SASSY,
                                style: TextStyle(
                                  fontSize: fontSize_14,
                                  fontWeight: FontWeight.w400,
                                  color: clr_black,
                                ),
                              ),
                              TextSpan(
                                text: ' $NAME_TEST'.toUpperCase(),
                                style: TextStyle(
                                  fontSize: fontSize_14,
                                  fontWeight: FontWeight.w500,
                                  color: PRIMARY_COLOR,
                                ),
                              ),
                              TextSpan(
                                text: SASSY,
                                style: TextStyle(
                                  fontSize: fontSize_14,
                                  fontWeight: FontWeight.w400,
                                  color: clr_black,
                                ),
                              ),
                              TextSpan(
                                text: ' $MB'.toUpperCase(),
                                style: TextStyle(
                                  fontSize: fontSize_14,
                                  fontWeight: FontWeight.w500,
                                  color: PRIMARY_COLOR,
                                ),
                              ),
                              TextSpan(
                                text: ' $TITLE_47 ',
                                style: TextStyle(
                                  fontSize: fontSize_14,
                                  fontWeight: FontWeight.w400,
                                  color: clr_black,
                                ),
                              ),
                              TextSpan(
                                text: ' $TITLE_48',
                                style: TextStyle(
                                  fontSize: fontSize_14,
                                  fontWeight: FontWeight.w500,
                                  color: PRIMARY_COLOR,
                                ),
                              ),
                              TextSpan(
                                text: '$dot',
                                style: TextStyle(
                                  fontSize: fontSize_14,
                                  fontWeight: FontWeight.w400,
                                  color: clr_black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height_12,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: REFERENCE_NUMBER,
                            style: TextStyle(
                              fontSize: fontSize_14,
                              color: clr_black54,
                              fontWeight: FontWeight.w400,
                              height: lineHeight_1_5,
                            ),
                            children: [
                              TextSpan(
                                text: ' $TITLE_49',
                                style: TextStyle(
                                  fontSize: fontSize_14,
                                  fontWeight: FontWeight.w500,
                                  color: clr_black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: width_16,
                            right: width_16,
                            top: height_16,
                          ),
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.image,
                                      size: fontSize_16,
                                      color: clr_black54,
                                    ),
                                    SizedBox(
                                      height: height_4,
                                    ),
                                    Text(
                                      SAVE_IMAGE,
                                      style: TextStyle(
                                        fontSize: fontSize_11,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                VerticalDivider(),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.share,
                                      size: fontSize_16,
                                      color: clr_black54,
                                    ),
                                    SizedBox(
                                      height: height_4,
                                    ),
                                    Text(
                                      SHARE,
                                      style: TextStyle(
                                        fontSize: fontSize_11,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                VerticalDivider(),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.home_filled,
                                      size: fontSize_16,
                                      color: clr_black54,
                                    ),
                                    SizedBox(
                                      height: height_4,
                                    ),
                                    Text(
                                      HOME,
                                      style: TextStyle(
                                        fontSize: fontSize_11,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height_12),
              child: Row(
                children: [
                  GetBuilder<RegisterPageController>(
                    init: RegisterPageController(),
                    builder: (controller) {
                      return Checkbox(
                        value: controller.isChecked,
                        onChanged: (value) {
                          controller.toggleCheckbox(controller.isChecked);
                        },
                        activeColor: PRIMARY_COLOR,
                        checkColor: clr_white,
                        tristate: false,
                      );
                    },
                  ),
                  Text(
                    SAVE_TRANSFER,
                    style: TextStyle(
                      fontSize: fontSize_12,
                      fontWeight: FontWeight.w400,
                      color: clr_white,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil(AppRouters.HOME, (route) => false);
                Navigator.of(context).pushNamed(AppRouters.TRANSFER);
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: width_16,
                      right: width_16,
                    ),
                    height: height_38,
                    width: Get.size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(border_8),
                      color: button_color_home,
                    ),
                    child: Text(
                      CREATE_TRANSFER_NEW,
                      style: TextStyle(
                        fontSize: fontSize_12,
                        fontWeight: FontWeight.w500,
                        color: PRIMARY_COLOR,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
