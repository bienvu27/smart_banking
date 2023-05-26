import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/size.dart';
import '../../../../res/strings/strings.dart';
import '../../../../utils/utils.dart';

class ContainerLogged extends StatelessWidget {
  const ContainerLogged({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: width_10,
        right: width_10,
        bottom: height_12,
        top: height_12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                PAYMENT_ACCOUNT,
                style: TextStyle(
                  fontFamily: 'open_sans',
                  color: Colors.black54,
                  fontSize: fontSize_12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: height_4,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    backgroundColor: Colors.white,
                    context: context,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(border_10),
                      ),
                    ),
                    builder: (BuildContext context) {
                      return Container(
                        margin: EdgeInsets.only(
                          top: height_8,
                        ),
                        color: Colors.white,
                        padding: EdgeInsets.only(
                          top: height_12,
                          left: width_12,
                          right: width_12,
                        ),
                        height: MediaQuery.of(context).size.height / 3,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    INFOR_USER,
                                    style: TextStyle(
                                      fontFamily: 'open_sans',
                                      fontSize: fontSize_12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => Navigator.pop(context),
                                    child: Text(
                                      CANCEL,
                                      style: TextStyle(
                                        fontSize: fontSize_12,
                                        color: PRIMARY_COLOR,
                                        fontFamily: 'open_sans',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height_16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        INFOR_USER,
                                        style: TextStyle(
                                          fontFamily: 'open_sans',
                                          fontSize: fontSize_10,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        NUMBER_TEST,
                                        style: TextStyle(
                                          fontFamily: 'open_sans',
                                          fontSize: fontSize_12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: clr_f6f5f7,
                                          radius: border_30,
                                          child: Icon(
                                            Icons.copy,
                                            color: Colors.black,
                                            size: border_30,
                                          )),
                                      SizedBox(
                                        width: width_8,
                                      ),
                                      InkWell(
                                        onTap: () => Utils.showQRDialog(context),
                                        child: CircleAvatar(
                                            backgroundColor: clr_f6f5f7,
                                            radius: border_30,
                                            child: Icon(
                                              Icons.qr_code,
                                              color: Colors.black,
                                              size: border_30,
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height_16,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        AVAILABLE_BALANCES,
                                        style: TextStyle(
                                          fontFamily: 'open_sans',
                                          fontSize: fontSize_10,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        '500,000 VND',
                                        style: TextStyle(
                                          fontFamily: 'open_sans',
                                          fontSize: fontSize_12,
                                          color: PRIMARY_COLOR_BLUE,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height_16,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: height_8,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        width: width_128,
                                        height: height_28,
                                        // margin: EdgeInsets.only(right: width_8),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: button_color_bg_dialog,
                                          borderRadius: BorderRadius.circular(border_5),
                                        ),
                                        child: Text(
                                          TITLE_73,
                                          style: TextStyle(
                                            color: PRIMARY_COLOR,
                                            fontSize: fontSize_10,
                                            fontWeight: FontWeight.w800,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      child: Container(
                                        // margin: EdgeInsets.only(left: width_8),
                                        width: width_128,
                                        height: height_28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(border_5),
                                            gradient: linearGradientButtom),
                                        child: Text(
                                          TRANSFER_MONEY,
                                          style: TextStyle(
                                            color: clr_white,
                                            fontSize: fontSize_10,
                                            fontWeight: FontWeight.w800,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      onTap: () {
                                        Get.toNamed("/transfer", arguments: '');
                                      },
                                    ),
                                  ],
                                ),
                              )
                            ]),
                      );
                    },
                  );
                },
                child: Row(
                  children: [
                    Text(
                      NUMBER_TEST,
                      style: TextStyle(
                        color: clr_black,
                        fontFamily: 'open_sans',
                        fontSize: fontSize_14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: fontSize_20,
                    )
                  ],
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () => Get.toNamed("/user_page", arguments: ''),
            child: Container(
              padding: EdgeInsets.only(
                top: height_4,
                bottom: height_4,
                right: width_8,
                left: width_8,
              ),
              decoration: BoxDecoration(
                color: clr_black6,
                borderRadius: BorderRadius.circular(border_16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    TODO_LIST,
                    style: TextStyle(
                      fontSize: fontSize_9,
                      fontFamily: 'open_sans',
                      color: clr_black54,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: fontSize_10,
                    color: clr_black54,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
