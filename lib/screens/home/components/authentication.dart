import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../res/strings/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import 'login_bottom_sheet.dart';

class Authentication extends StatelessWidget {
  const Authentication({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Positioned(
        bottom: 1,
        child: SizedBox(
          width: width,
          child: Container(
            margin: EdgeInsets.only(left: width_10, right: width_10),
            alignment: Alignment.center,
            width: Get.size.width,
            height: height_50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(border_10),
              color: clr_white,
              boxShadow: [
                boxShadow
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const LoginBottomSheet(),
                InkWell(
                  onTap: () {
                    Get.toNamed("/register", arguments: '');
                  },
                  child: Text(
                    SIGN_IN,
                    style: TextStyle(
                        fontSize: fontSize_12,
                        fontWeight: FontWeight.w500,
                        color: clr_black54),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}