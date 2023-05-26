import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/style/size.dart';
import '../../../res/strings/strings.dart';
import '../../../utils/utils.dart';

class DialogBottomSheet {
  static void showBottomDialogHomeAvatar(BuildContext context) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.account_circle_rounded,
                      color: Colors.black26,
                      size: fontSize_20,
                    ),
                    SizedBox(
                      width: width_12,
                    ),
                    Container(
                      width: Get.size.width / 1.23,
                      padding: EdgeInsets.only(bottom: height_12),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                width: 1.5,
                                color: Colors.black12,
                              ))),
                      child: Text(
                        CHANGE_AVATER,
                        style: TextStyle(
                          fontFamily: 'open_sans',
                          fontSize: fontSize_12,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.image,
                      color: Colors.black26,
                      size: fontSize_20,
                    ),
                    SizedBox(
                      width: width_12,
                    ),
                    Container(
                      width: Get.size.width / 1.23,
                      padding: EdgeInsets.only(bottom: height_12),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                width: 1.5,
                                color: Colors.black12,
                              ))),
                      child: Text(
                        CHANGE_BG,
                        style: TextStyle(
                          fontFamily: 'open_sans',
                          fontSize: fontSize_12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height_16,
                ),
                InkWell(
                  onTap: () async {
                    Utils.showDialogLogout(context, LOGOUT, LOGOUT_2, NO, YES);
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.redAccent,
                        size: fontSize_20,
                      ),
                      SizedBox(
                        width: width_12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LOGOUT,
                            style: TextStyle(
                              fontFamily: 'open_sans',
                              fontSize: fontSize_12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: height_4,
                          ),
                          Text(
                            'Lần đăng nhập gần nhất \n'
                                '${pref.get("timeCode")}',
                            style: TextStyle(
                              fontFamily: 'open_sans',
                              color: Colors.black38,
                              fontSize: fontSize_10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
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