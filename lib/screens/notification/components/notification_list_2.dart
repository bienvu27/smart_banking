import 'package:flutter/material.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../model/notification_model.dart';
import '../model/notification_model2.dart';

class NotificationList2 extends StatelessWidget {
  const NotificationList2({
    super.key,
    required this.list,
  });

  final List<NotificationModel2> list;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: clr_white,
      child: ListView(
        children: list.map((e) {
          return Container(
            padding: EdgeInsets.only(bottom: height_16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: height_8,
                    left: width_8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hôm qua, ${e.dateTime}',
                        style: TextStyle(
                            fontSize: fontSize_10, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: height_8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.verified_outlined,
                                size: fontSize_12,
                                color: Colors.black54,
                              ),
                              SizedBox(
                                width: width_4,
                              ),
                              Text(
                                '14:55',
                                style: TextStyle(
                                    fontSize: fontSize_10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width_16),
                            child: Icon(
                              Icons.more_vert,
                              size: fontSize_12,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: height_8, right: width_8, left: width_8),
                    padding: EdgeInsets.only(
                        top: height_8, bottom: height_8, right: width_8, left: width_8),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(border_16),
                        color: Colors.grey[100]),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width/1.2,
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: 'VRB xin thông báo tới Quý khách \n',
                                  style: TextStyle(
                                      fontSize: fontSize_12,
                                      height: lineHeight_1_2,
                                      fontFamily: 'open_sans',
                                      fontWeight: FontWeight.w500,
                                      color: clr_black),
                                ),
                                TextSpan(
                                  text: 'Thời gian GD: ',
                                  style: TextStyle(
                                      fontSize: fontSize_12,
                                      height: lineHeight_1_2,
                                      fontFamily: 'open_sans',
                                      fontWeight: FontWeight.w500,
                                      color: clr_black),
                                ),
                                TextSpan(
                                  text: '${e.dateTime} \n',
                                  style: TextStyle(
                                      fontSize: fontSize_12,
                                      height: lineHeight_1_2,
                                      fontFamily: 'open_sans',
                                      fontWeight: FontWeight.w600,
                                      color: clr_black),
                                ),
                                TextSpan(
                                  text: 'Tài khoản thanh toán: \n',
                                  style: TextStyle(
                                      fontSize: fontSize_12,
                                      height: lineHeight_1_2,
                                      fontFamily: 'open_sans',
                                      fontWeight: FontWeight.w500,
                                      color: clr_black),
                                ),
                                TextSpan(
                                  text: '${e.numberUser} \n',
                                  style: TextStyle(
                                      fontSize: fontSize_12,
                                      height: lineHeight_1_2,
                                      fontFamily: 'open_sans',
                                      fontWeight: FontWeight.w600,
                                      color: clr_black),
                                ),
                                TextSpan(
                                  text: 'Số tiền GD: ',
                                  style: TextStyle(
                                      fontSize: fontSize_12,
                                      height: lineHeight_1_2,
                                      fontFamily: 'open_sans',
                                      fontWeight: FontWeight.w500,
                                      color: clr_black),
                                ),
                                TextSpan(
                                  text: '+${e.money} VND \n',
                                  style: TextStyle(
                                      fontSize: fontSize_12,
                                      height: lineHeight_1_2,
                                      fontFamily: 'open_sans',
                                      fontWeight: FontWeight.w600,
                                      color: PRIMARY_COLOR),
                                ),
                                TextSpan(
                                  text: 'Nội dung giao dịch: Số tài khoản nguồn: ${e.numberUser2} ${e.nameFriends} Chuyen tien',
                                  style: TextStyle(
                                      fontSize: fontSize_12,
                                      height: lineHeight_1_2,
                                      fontFamily: 'open_sans',
                                      fontWeight: FontWeight.w500,
                                      color: clr_black),
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
