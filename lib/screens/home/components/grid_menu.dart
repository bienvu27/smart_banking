import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_banking/screens/components/dialog/custom_dialog.dart';

import '../../../core/style.dart';
import '../../../res/my_color .dart';
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
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) => CustomDialog(
                                title:
                                    'Quý khách cần kích hoạt ứng dụng trước để sử dụng chức năng này.',
                                cancel: 'Huỷ bỏ',
                                submit: 'Đăng nhập',
                                clickCallback: () {},
                              ));
                    },
                    title: 'Chuyển tiền',
                    icon: Icons.compare_arrows_outlined,
                    topLeft: 15,
                    topRight: 15,
                    bottomLeft: 15,
                    bottomRight: 0,
                    color: MyColor.PRIMARY_COLOR_RED,
                    color1: Color(0xff0e51a2),
                    color2: Color(0xff2869b3),
                    color3: Color(0xff2d69b0),
                    color4: Color(0xff4a81c1),
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
                                    'Quý khách cần kích hoạt ứng dụng trước để sử dụng chức năng này.',
                                cancel: 'Huỷ bỏ',
                                submit: 'Đăng nhập',
                                clickCallback: () {},
                              ));
                    },
                    title: 'Dịch vụ thẻ',
                    icon: Icons.wallet,
                    topLeft: 15,
                    topRight: 15,
                    bottomLeft: 0,
                    bottomRight: 15,
                    color: MyColor.PRIMARY_COLOR_RED,
                    color1: Color(0xff4a81c1),
                    color2: Color(0xff2d69b0),
                    color3: Color(0xff2869b3),
                    color4: Color(0xff0e51a2),
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
                                    'Quý khách cần kích hoạt ứng dụng trước để sử dụng chức năng này.',
                                cancel: 'Huỷ bỏ',
                                submit: 'Đăng nhập',
                                clickCallback: () {},
                              ));
                    },
                    title: 'Tiết kiệm',
                    icon: Icons.account_balance_wallet,
                    topLeft: 15,
                    topRight: 0,
                    bottomLeft: 15,
                    bottomRight: 15,
                    color: MyColor.PRIMARY_COLOR_BLUE,
                    color1: Color(0xff009691),
                    color2: Color(0xff00918c),
                    color3: Color(0xff02a099),
                    color4: Color(0xff02b3ad),
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
                                    'Quý khách cần kích hoạt ứng dụng trước để sử dụng chức năng này.',
                                cancel: 'Huỷ bỏ',
                                submit: 'Đăng nhập',
                                clickCallback: () {},
                              ));
                    },
                    title: 'Mua sắm',
                    icon: Icons.shopping_cart_outlined,
                    topLeft: 0,
                    topRight: 15,
                    bottomLeft: 15,
                    bottomRight: 15,
                    color: MyColor.PRIMARY_COLOR_BLUE,
                    color1: Color(0xff02b3ad),
                    color2: Color(0xff02a099),
                    color3: Color(0xff00918c),
                    color4: Color(0xff009691),
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
