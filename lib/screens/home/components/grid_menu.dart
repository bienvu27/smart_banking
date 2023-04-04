import 'package:flutter/material.dart';
import 'package:smart_banking/screens/components/dialog/custom_dialog.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/transfer/view/transfer_page.dart';
import '../../../core/resources/name_icon.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import 'grid_menu_component.dart';

class GridMenu extends StatelessWidget {
  const GridMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: clr_white,
      width: width,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: width_10,
                    right: width_4,
                  ),
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
                    icon: 'assets/svg/icon_white/2102.svg',
                    topLeft: border_10,
                    topRight: border_10,
                    bottomLeft: border_10,
                    bottomRight: size_0,
                    color: PRIMARY_COLOR_RED,
                    gradient: linearGradient1,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: width_4, right: width_10),
                  child: GridMenuComponent(
                    callback: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) => CustomDialog(
                                title: TITLE_31,
                                cancel: CANCEL2,
                                submit: LOGIN,
                                clickCallback: () {},
                              ));
                    },
                    title: SERVICE_CARD,
                    icon: image_service_card,
                    topLeft: border_10,
                    topRight: border_10,
                    bottomLeft: size_0,
                    bottomRight: border_10,
                    color: PRIMARY_COLOR_RED,
                    gradient: linearGradient2,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height_8,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: width_10, right: width_4),
                  child: GridMenuComponent(
                    callback: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) => CustomDialog(
                                title: TITLE_31,
                                cancel: CANCEL2,
                                submit: LOGIN,
                                clickCallback: () {},
                              ));
                    },
                    title: SAVE,
                    icon: image_save_money,
                    topLeft: border_10,
                    topRight: size_0,
                    bottomLeft: border_10,
                    bottomRight: border_10,
                    color: PRIMARY_COLOR_RED,
                    gradient: linearGradient3,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: width_4, right: width_10),
                  child: GridMenuComponent(
                    callback: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) => CustomDialog(
                                title: TITLE_31,
                                cancel: CANCEL2,
                                submit: LOGIN,
                                clickCallback: () {},
                              ));
                    },
                    title: SHOPPING,
                    icon: image_shopping,
                    topLeft: size_0,
                    topRight: border_10,
                    bottomLeft: border_10,
                    bottomRight: border_10,
                    color: PRIMARY_COLOR,
                    gradient: linearGradient4,
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
