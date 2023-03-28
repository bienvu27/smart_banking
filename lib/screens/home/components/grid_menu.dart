import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_banking/screens/components/dialog/custom_dialog.dart';
import 'package:get/get.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style.dart';
import 'grid_menu_component.dart';

class GridMenu extends StatelessWidget {
  const GridMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: clr_white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 5.w),
                  child: GridMenuComponent(
                    callback: () {
                      // showDialog(
                      //     barrierDismissible: false,
                      //     context: context,
                      //     builder: (BuildContext context) => CustomDialog(
                      //           title:
                      //           TITLE_31,
                      //           cancel: CANCEL2,
                      //           submit: LOGIN,
                      //           clickCallback: () {},
                      //         ));
                      Get.toNamed("/transfer", arguments: '');
                    },
                    title: TRANSFER,
                    icon: Icons.compare_arrows_outlined,
                    topLeft: 15,
                    topRight: 15,
                    bottomLeft: 15,
                    bottomRight: 0,
                    color: PRIMARY_COLOR_RED,
                    color1: clr_gradient_1,
                    color2: clr_gradient_2,
                    color3: clr_gradient_3,
                    color4: clr_gradient_4,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w, right: 10.w),
                  child: GridMenuComponent(
                    callback: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) => CustomDialog(
                                title:
                                TITLE_31,
                                cancel: CANCEL2,
                                submit: LOGIN,
                                clickCallback: () {},
                              ));
                    },
                    title: SERVICE_CARD,
                    icon: Icons.wallet,
                    topLeft: 15,
                    topRight: 15,
                    bottomLeft: 0,
                    bottomRight: 15,
                    color: PRIMARY_COLOR_RED,
                    color1: clr_gradient_4,
                    color2: clr_gradient_3,
                    color3: clr_gradient_2,
                    color4: clr_gradient_1,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 5.w),
                  child: GridMenuComponent(
                    callback: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) => CustomDialog(
                                title:
                                TITLE_31,
                                cancel: CANCEL2,
                                submit: LOGIN,
                                clickCallback: () {},
                              ));
                    },
                    title: SAVE,
                    icon: Icons.account_balance_wallet,
                    topLeft: 15,
                    topRight: 0,
                    bottomLeft: 15,
                    bottomRight: 15,
                    color: PRIMARY_COLOR_RED,
                    color1: clr_gradient_1_1,
                    color2: clr_gradient_2_2,
                    color3: clr_gradient_3_3,
                    color4: clr_gradient_4_4,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w, right: 10.w),
                  child: GridMenuComponent(
                    callback: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) => CustomDialog(
                                title:
                                TITLE_31,
                                cancel: CANCEL2,
                                submit: LOGIN,
                                clickCallback: () {},
                              ));
                    },
                    title: SHOPPING,
                    icon: Icons.shopping_cart_outlined,
                    topLeft: 0,
                    topRight: 15,
                    bottomLeft: 15,
                    bottomRight: 15,
                    color: PRIMARY_COLOR,
                    color1: clr_gradient_4_4,
                    color2: clr_gradient_3_3,
                    color3: clr_gradient_2_2,
                    color4: clr_gradient_1_1,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
