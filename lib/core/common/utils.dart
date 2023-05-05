import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_banking/fake_data/data_fake_home.dart';
import 'package:smart_banking/router/app_routers.dart';
import 'package:smart_banking/screens/dashboard/controller/dashboard_controller.dart';
import '../../screens/components/button/button_component.dart';
import '../../screens/components/text_field/text_field_icon_component.dart';
import '../../screens/components/text_field/text_field_icon_subtile_component.dart';
import '../../screens/register/view/components/radio_button_bottom_sheet.dart';
import '../resources/asset.dart';
import '../resources/strings.dart';
import '../style/colors.dart';
import '../style/size.dart';
import '../widgets/dialog_logout.dart';
import '../widgets/warning_dialog.dart';

class Utils {
  static void showAuthenticationDialog(BuildContext context) {
    final timeNow = DateFormat('dd/MM/yyyy HH:mm:ss').format(DateTime.now());
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    showModalBottomSheet<void>(
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
            left: width_8,
            right: width_8,
            top: height_8,
          ),
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
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: fontSize_12),
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
                        labelText: PHONE_NUMBER,
                        icon: Icons.phone,
                        textInputType: TextInputType.number),
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
                child: ButtonComponent(
                    title: LOGIN,
                    bgColor: button_color_home,
                    callback: () async {
                      FocusScope.of(context).unfocus();
                      if (phoneController.text.isEmpty) {
                        showWarningDialog(
                            context, "Vui lòng điền số điện thoại");
                      } else if (passwordController.text.isEmpty) {
                        showWarningDialog(context, "Vui lòng điền mật khẩu");
                      } else {
                        print(timeNow);
                        SharedPreferences pref =
                            await SharedPreferences.getInstance();
                        await pref.setString("username", phoneController.text);
                        await pref.setString("timeCode", timeNow);
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            AppRouters.DASHBOARD, (route) => false);
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
                    InkWell(
                      onTap: () => Get.toNamed("/register", arguments: ''),
                      child: Text(
                        SIGN_IN,
                        style: TextStyle(
                          fontSize: fontSize_12,
                          fontWeight: FontWeight.w500,
                          color: PRIMARY_COLOR,
                        ),
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

  static showDialogLogout(BuildContext context, String title, String subTitle,
      String buttonCancel, String buttonSubmit) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) => DialogLogout(
              title: title,
              subTitle: subTitle,
              buttonCancel: CANCEL,
              buttonSubmit: buttonSubmit,
              clickCallback: () {
                Navigator.of(context).pop();
              },
              clickSubmit: () async {
                SharedPreferences pref = await SharedPreferences.getInstance();
                pref.remove("username");
                Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRouters.DASHBOARD, (route) => false);
                Get.put(DashboardController());
                Utils.showWarningDialog(context, "Đăng xuất thành công");
              },
            ));
  }

  static void showSelectService(BuildContext context) {
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
              margin: EdgeInsets.only(
                left: width_8,
                right: width_8,
                top: height_8,
              ),
              height: Get.size.height / 1.2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          CHOSE_SERVICES,
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
                    RadioButtonBottomSheet(),
                  ],
                ),
              ));
        });
  }

  static void showSearchDialog(BuildContext context) {
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
            margin:
                EdgeInsets.only(left: width_8, right: width_8, top: height_8),
            height: Get.size.height / 1.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: height_22,
                      width: Get.size.width / 1.3,
                      child: TextField(
                        maxLines: 1,
                        style: TextStyle(fontSize: fontSize_12),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: clr_black38.withOpacity(.3),
                            size: fontSize_20,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: PRIMARY_COLOR),
                              borderRadius: BorderRadius.all(Radius.circular(
                                border_16,
                              ))),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: clr_grey),
                              borderRadius: BorderRadius.all(Radius.circular(
                                border_16,
                              ))),
                          fillColor: clr_white,
                          contentPadding: EdgeInsets.zero,
                          hintText: SEARCH,
                          hintStyle: TextStyle(
                            fontSize: fontSize_11,
                            fontFamily: 'open_sans',
                            fontWeight: FontWeight.w500,
                            color: clr_black38,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        CANCEL,
                        style: TextStyle(
                          fontSize: fontSize_12,
                          fontWeight: FontWeight.w500,
                          color: PRIMARY_COLOR,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height_12,
                ),
                Text(
                  "Quý khách có thể tìm kiếm",
                  style: TextStyle(
                    fontSize: fontSize_10,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height_6),
                  child: ListView.builder(
                      itemCount: listSearchHomeTest.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(top: height_10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                listSearchHomeTest[index].icon!,
                                color: PRIMARY_COLOR,
                              ),
                              SizedBox(
                                width: width_10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      listSearchHomeTest[index].title!,
                                      style: TextStyle(
                                          fontSize: fontSize_11,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: height_6,
                                    ),
                                    Divider(
                                      color: clr_black6,
                                      thickness: 1,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          );
        });
  }

  static formatDecimalCurrency(String valueStr, bool isAllowZero) {
    try {
      String val = valueStr;
      String firstVal;
      String secordVal;
      if (val.toString().indexOf('.') > 0) {
        firstVal =
            valueStr.substring(0, val.indexOf('.')).replaceAll('/\D/g', '');
        secordVal =
            val.substring(val.indexOf('.'), val.length).replaceAll('/\D/g', '');
        if (secordVal.length > 2) {
          if (secordVal.length >= 3) {
            secordVal = secordVal.substring(0, 3);
          } else {
            secordVal = secordVal.substring(0, 2);
          }
        }
        if (isAllowZero && secordVal.length == 2 && secordVal.contains('0')) {
          secordVal = '';
        }
        val = formatCurrency(firstVal) + secordVal;
      } else {
        val = formatCurrency(valueStr.toString().replaceAll('/\D/g', ''));
      }
      return val;
    } catch (e) {
      throw e;
    }
  }

  static String formatCurrency(String text) {
    /// Check xem có dấu trừ ở trươc không để trả về cả dấu "-"
    if (text.isEmpty) return '';
    bool hasSub = text[0] == "-";
    if (text.contains(".")) {
      text = text.substring(0, text.indexOf("."));
    }
    if (text.length > 2) {
      if (text[0] == "0") {
        text = text.substring(1, text.length);
      }
      var value = text;
      value = value.replaceAll(RegExp(r'\D'), '');
      value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');
      if (hasSub) {
        return "- " + value;
      } else {
        return value;
      }
    }
    if (hasSub) {
      return "-" +
          text.replaceAll(
              RegExp(r'\D'), ''); // nhập không phải là số thì xóa hết
    } else {
      return text.replaceAll(
          RegExp(r'\D'), ''); // nhập không phải là số thì xóa hết
    }
  }

  static void showQRDialog(BuildContext context) {
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
                          text: 'VRB',
                          style: TextStyle(
                            fontFamily: 'open_sans',
                            fontSize: fontSize_10,
                            color: PRIMARY_COLOR,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: ',\n ngoài ',
                          style: TextStyle(
                            fontFamily: 'open_sans',
                            fontSize: fontSize_10,
                            color: clr_black54,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: 'VRB',
                          style: TextStyle(
                            fontFamily: 'open_sans',
                            fontSize: fontSize_10,
                            color: PRIMARY_COLOR,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: ' (Liên ngân hàng, ',
                          style: TextStyle(
                            fontFamily: 'open_sans',
                            fontSize: fontSize_10,
                            color: clr_black54,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        WidgetSpan(
                            child: Image.asset(
                          image_napas247,
                          width: width_125,
                          fit: BoxFit.fill,
                        )),
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
  }
}
