import 'package:flutter/material.dart';

import '../../../../../core/resources/strings.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/style/size.dart';

class UserTab1 extends StatefulWidget {
  const UserTab1({Key? key}) : super(key: key);

  @override
  State<UserTab1> createState() => _UserTab1State();
}

class _UserTab1State extends State<UserTab1> {
  bool showHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Visibility(
              visible: showHide,
              child: Container(
                margin: EdgeInsets.only(
                  top: height_8,
                  left: width_16,
                  right: width_16,
                ),
                padding: EdgeInsets.only(
                  left: width_8,
                  right: width_8,
                  bottom: height_8,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(fontSize_12),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: height_48),
                      padding: EdgeInsets.only(
                        top: height_8,
                        left: width_8,
                        bottom: height_8,
                      ),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(fontSize_12),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    NUMBER_TEST,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'open_sans',
                                      fontSize: fontSize_12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width_8,
                                  ),
                                  Icon(
                                    Icons.copy,
                                    size: border_30,
                                    color: clr_black26,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: height_4,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  top: height_1,
                                  bottom: height_1,
                                  left: width_8,
                                  right: width_8,
                                ),
                                decoration: BoxDecoration(
                                  color: clr_67748E,
                                  borderRadius: BorderRadius.circular(width_10),
                                ),
                                child: Text(DEFAULT,
                                    style: TextStyle(
                                      fontSize: fontSize_7,
                                      fontFamily: 'open_sans',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                              SizedBox(
                                height: height_4,
                              ),
                              Text(AVAILABLE_BALANCES,
                                  style: TextStyle(
                                    fontSize: fontSize_10,
                                    fontFamily: 'open_sans',
                                    color: clr_black54,
                                    fontWeight: FontWeight.w500,
                                  )),
                              SizedBox(
                                height: height_4,
                              ),
                              Text(
                                '500,000 VND',
                                style: TextStyle(
                                  color: PRIMARY_COLOR,
                                  fontFamily: 'open_sans',
                                  fontSize: fontSize_12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            right: width_8,
                            child: Icon(
                              Icons.qr_code,
                              size: fontSize_16_5,
                            ),
                          ),
                          Positioned(
                            right: width_8,
                            bottom: 0,
                            child: Container(
                              padding: EdgeInsets.only(
                                top: height_2,
                                bottom: height_2,
                                left: width_12,
                                right: width_12,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(width_10),
                              ),
                              child: Icon(
                                Icons.arrow_forward_outlined,
                                size: fontSize_14,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: height_8,
                left: width_16,
                right: width_16,
              ),
              padding: EdgeInsets.only(
                left: width_8,
                right: width_8,
                top: height_6,
                bottom: height_6,
              ),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(fontSize_12),
                gradient: linearGradient1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tổng số dư (VND)',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'open_sans',
                          fontSize: fontSize_10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: height_4,
                      ),
                      Text(
                        '500,000',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'open_sans',
                          fontSize: fontSize_10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        showHide = !showHide;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        top: height_2,
                        bottom: height_2,
                        left: width_4,
                        right: width_4,
                      ),
                      decoration: BoxDecoration(
                        color: clr_67748E,
                        borderRadius: BorderRadius.circular(width_10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('2',
                              style: TextStyle(
                                fontSize: fontSize_9,
                                fontFamily: 'open_sans',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              )),
                          SizedBox(width: width_2),
                          Text(USER,
                              style: TextStyle(
                                fontSize: fontSize_9,
                                fontFamily: 'open_sans',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              )),
                          SizedBox(width: width_2),
                          showHide ? Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: fontSize_12,
                            color: Colors.white,
                          ) : Icon(
                            Icons.keyboard_arrow_up,
                            size: fontSize_12,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
