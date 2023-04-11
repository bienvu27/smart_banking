import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../../../core/resources/name_icon.dart';
import '../../../../../core/resources/strings.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/style/size.dart';
import '../../../../../fake_data/data_fake_home.dart';

class UserTab1 extends StatefulWidget {
  const UserTab1({Key? key}) : super(key: key);

  @override
  State<UserTab1> createState() => _UserTab1State();
}

class _UserTab1State extends State<UserTab1> {
  bool showHide = true;
  bool showHide2 = true;

  @override
  Widget build(BuildContext context) {
    int total = 0;
    int total2 = 0;
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
                    SizedBox(
                      height: height_48,
                    ),
                    Column(
                      children: listAvailableBalances.map((e) {
                        total = total + int.parse(e.money);
                        var numberParse = int.parse(e.money);
                        var money = NumberFormat.decimalPattern().format(numberParse);
                        print('money1: $total');
                        return Container(
                          margin: EdgeInsets.only(bottom: height_8),
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
                                        '${e.number}',
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
                                  e.defaultCode == true
                                      ? SizedBox(
                                          height: height_4,
                                        )
                                      : SizedBox(),
                                  e.defaultCode == true
                                      ? Container(
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
                                        )
                                      : SizedBox(),
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
                                    '${money} VND',
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
                                child: InkWell(
                                  onTap: () {
                                    showModalBottomSheet<void>(
                                      backgroundColor: Colors.white,
                                      context: context,
                                      isScrollControlled: true,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(25.r),
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
                                          height: MediaQuery.of(context).size.height / 1.1,
                                          child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(
                                                      MY_QR,
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
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: height_28,
                                                    left: width_12,
                                                    right: width_12,
                                                    bottom: height_12,
                                                  ),
                                                  child: RichText(
                                                    textAlign: TextAlign.center,
                                                    text: TextSpan(
                                                      text: 'Sử dụng mã QR để chuyển khoản nội bộ ',
                                                      style: TextStyle(
                                                        fontSize: fontSize_10,
                                                        color: clr_black54,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text: 'VRBank',
                                                          style: TextStyle(
                                                            fontFamily: 'open_sans',
                                                            fontSize: fontSize_10,
                                                            color: PRIMARY_COLOR,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ', ngoài ',
                                                          style: TextStyle(
                                                            fontFamily: 'open_sans',
                                                            fontSize: fontSize_10,
                                                            color: clr_black54,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: 'VRBank',
                                                          style: TextStyle(
                                                            fontFamily: 'open_sans',
                                                            fontSize: fontSize_10,
                                                            color: PRIMARY_COLOR,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' (song phương, ',
                                                          style: TextStyle(
                                                            fontFamily: 'open_sans',
                                                            fontSize: fontSize_10,
                                                            color: clr_black54,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                        WidgetSpan(
                                                          child: Container(
                                                            height: height_11,
                                                            width: width_40,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                              image: AssetImage(image_napas),
                                                            )),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ')',
                                                          style: TextStyle(
                                                            fontFamily: 'open_sans',
                                                            fontSize: fontSize_10,
                                                            color: clr_black54,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5),
                                                          border: Border.all(width: 1, color: clr_black12)),
                                                      child: Image.asset(
                                                        icon_vrb,
                                                        height: height_20,
                                                        width: width_56,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: width_8,
                                                    ),
                                                    Container(
                                                      height: height_20,
                                                      width: width_56,
                                                      padding: EdgeInsets.only(
                                                        left: width_2,
                                                        right: width_2,
                                                        top: height_2,
                                                        bottom: height_2,
                                                      ),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5),
                                                          border: Border.all(width: 1, color: clr_black12)),
                                                      child: Image.asset(
                                                        image_vietqr,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    top: height_8,
                                                    bottom: height_8,
                                                  ),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      border: Border.all(width: 1, color: clr_black12)),
                                                  child: Image.asset(
                                                    image_qr,
                                                    width: width_150,
                                                  ),
                                                ),
                                                Text(
                                                  NAME_TEST,
                                                  style: TextStyle(
                                                    fontFamily: 'open_sans',
                                                    fontSize: fontSize_12,
                                                    color: clr_black,
                                                    fontWeight: FontWeight.w600,
                                                    height: 2,
                                                  ),
                                                ),
                                                Text(
                                                  NUMBER_TEST,
                                                  style: TextStyle(
                                                    fontFamily: 'open_sans',
                                                    fontSize: fontSize_12,
                                                    color: clr_black,
                                                    fontWeight: FontWeight.w500,
                                                    height: 2,
                                                  ),
                                                ),
                                                Text(
                                                  'VRB - Hoàn Kiếm HN',
                                                  style: TextStyle(
                                                    fontFamily: 'open_sans',
                                                    fontSize: fontSize_12,
                                                    color: clr_black54,
                                                    fontWeight: FontWeight.w600,
                                                    height: 2,
                                                  ),
                                                ),
                                                Spacer(),
                                                Padding(
                                                  padding: EdgeInsets.only(bottom: height_8),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                          right: width_2_5,
                                                        ),
                                                        height: height_32,
                                                        width: width_128,
                                                        alignment: Alignment.center,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(border_8),
                                                          color: button_color_home,
                                                        ),
                                                        child: Text(
                                                          SAVE_QR,
                                                          style: TextStyle(
                                                              fontSize: fontSize_12,
                                                              fontFamily: 'open_sans',
                                                              fontWeight: FontWeight.w600,
                                                              color: PRIMARY_COLOR),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                          left: width_2_5,
                                                        ),
                                                        height: height_32,
                                                        width: width_128,
                                                        alignment: Alignment.center,
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(border_8),
                                                            gradient: linearGradientButtom),
                                                        child: Text(
                                                          SHARE,
                                                          style: TextStyle(
                                                              fontSize: fontSize_12,
                                                              fontFamily: 'open_sans',
                                                              fontWeight: FontWeight.w600,
                                                              color: clr_white),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ]),
                                        );
                                      },
                                    );
                                  },
                                  child: Icon(
                                    Icons.qr_code,
                                    size: fontSize_16_5,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: width_8,
                                bottom: 0,
                                child: InkWell(
                                  onTap: ()=> Get.toNamed("/history_transfer", arguments: ''),
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
                                ),
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    )
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
                        '${NumberFormat.decimalPattern().format(total)} VND',
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
                          showHide
                              ? Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: fontSize_12,
                                  color: Colors.white,
                                )
                              : Icon(
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
        Stack(
          children: [
            Visibility(
              visible: showHide2,
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
                    SizedBox(
                      height: height_48,
                    ),
                    Column(
                      children: listAvailableBalances2.map((e) {
                        total2 = total2 + int.parse(e.money);
                        var numberParse = int.parse(e.money);
                        var money = NumberFormat.decimalPattern().format(numberParse);
                        print('money: $money');
                        return Container(
                          margin: EdgeInsets.only(bottom: height_8),
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
                                        '${e.number}',
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
                                  e.defaultCode == true
                                      ? SizedBox(
                                          height: height_4,
                                        )
                                      : SizedBox(),
                                  e.defaultCode == true
                                      ? Container(
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
                                        )
                                      : SizedBox(),
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
                                    '${money} USD',
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
                                child: InkWell(
                                  onTap: () {
                                    showModalBottomSheet<void>(
                                      backgroundColor: Colors.white,
                                      context: context,
                                      isScrollControlled: true,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(25.r),
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
                                          height: MediaQuery.of(context).size.height / 1.1,
                                          child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(
                                                      MY_QR,
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
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: height_28,
                                                    left: width_12,
                                                    right: width_12,
                                                    bottom: height_12,
                                                  ),
                                                  child: RichText(
                                                    textAlign: TextAlign.center,
                                                    text: TextSpan(
                                                      text: 'Sử dụng mã QR để chuyển khoản nội bộ ',
                                                      style: TextStyle(
                                                        fontSize: fontSize_10,
                                                        color: clr_black54,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text: 'VRBank',
                                                          style: TextStyle(
                                                            fontFamily: 'open_sans',
                                                            fontSize: fontSize_10,
                                                            color: PRIMARY_COLOR,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ', ngoài ',
                                                          style: TextStyle(
                                                            fontFamily: 'open_sans',
                                                            fontSize: fontSize_10,
                                                            color: clr_black54,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: 'VRBank',
                                                          style: TextStyle(
                                                            fontFamily: 'open_sans',
                                                            fontSize: fontSize_10,
                                                            color: PRIMARY_COLOR,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ' (song phương, ',
                                                          style: TextStyle(
                                                            fontFamily: 'open_sans',
                                                            fontSize: fontSize_10,
                                                            color: clr_black54,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                        WidgetSpan(
                                                          child: Container(
                                                            height: height_11,
                                                            width: width_40,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                              image: AssetImage(image_napas),
                                                            )),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: ')',
                                                          style: TextStyle(
                                                            fontFamily: 'open_sans',
                                                            fontSize: fontSize_10,
                                                            color: clr_black54,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5),
                                                          border: Border.all(width: 1, color: clr_black12)),
                                                      child: Image.asset(
                                                        icon_vrb,
                                                        height: height_20,
                                                        width: width_56,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: width_8,
                                                    ),
                                                    Container(
                                                      height: height_20,
                                                      width: width_56,
                                                      padding: EdgeInsets.only(
                                                        left: width_2,
                                                        right: width_2,
                                                        top: height_2,
                                                        bottom: height_2,
                                                      ),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5),
                                                          border: Border.all(width: 1, color: clr_black12)),
                                                      child: Image.asset(
                                                        image_vietqr,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    top: height_8,
                                                    bottom: height_8,
                                                  ),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      border: Border.all(width: 1, color: clr_black12)),
                                                  child: Image.asset(
                                                    image_qr,
                                                    width: width_150,
                                                  ),
                                                ),
                                                Text(
                                                  NAME_TEST,
                                                  style: TextStyle(
                                                    fontFamily: 'open_sans',
                                                    fontSize: fontSize_12,
                                                    color: clr_black,
                                                    fontWeight: FontWeight.w600,
                                                    height: 2,
                                                  ),
                                                ),
                                                Text(
                                                  NUMBER_TEST,
                                                  style: TextStyle(
                                                    fontFamily: 'open_sans',
                                                    fontSize: fontSize_12,
                                                    color: clr_black,
                                                    fontWeight: FontWeight.w500,
                                                    height: 2,
                                                  ),
                                                ),
                                                Text(
                                                  'VRB - Hoàn Kiếm HN',
                                                  style: TextStyle(
                                                    fontFamily: 'open_sans',
                                                    fontSize: fontSize_12,
                                                    color: clr_black54,
                                                    fontWeight: FontWeight.w600,
                                                    height: 2,
                                                  ),
                                                ),
                                                Spacer(),
                                                Padding(
                                                  padding: EdgeInsets.only(bottom: height_8),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                          right: width_2_5,
                                                        ),
                                                        height: height_32,
                                                        width: width_128,
                                                        alignment: Alignment.center,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(border_8),
                                                          color: button_color_home,
                                                        ),
                                                        child: Text(
                                                          SAVE_QR,
                                                          style: TextStyle(
                                                              fontSize: fontSize_12,
                                                              fontFamily: 'open_sans',
                                                              fontWeight: FontWeight.w600,
                                                              color: PRIMARY_COLOR),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                          left: width_2_5,
                                                        ),
                                                        height: height_32,
                                                        width: width_128,
                                                        alignment: Alignment.center,
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(border_8),
                                                            gradient: linearGradientButtom),
                                                        child: Text(
                                                          SHARE,
                                                          style: TextStyle(
                                                              fontSize: fontSize_12,
                                                              fontFamily: 'open_sans',
                                                              fontWeight: FontWeight.w600,
                                                              color: clr_white),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ]),
                                        );
                                      },
                                    );
                                  },
                                  child: Icon(
                                    Icons.qr_code,
                                    size: fontSize_16_5,
                                  ),
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
                        );
                      }).toList(),
                    )
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
                        'Tổng số dư (USD)',
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
                        '${NumberFormat.decimalPattern().format(total2)} USD',
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
                        showHide2 = !showHide2;
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
                          Text('1',
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
                          showHide2
                              ? Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: fontSize_12,
                                  color: Colors.white,
                                )
                              : Icon(
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
