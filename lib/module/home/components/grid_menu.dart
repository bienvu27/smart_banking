import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'grid_menu_component.dart';

class GridMenu extends StatelessWidget {
  const GridMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 5.w),
                  child: const GridMenuComponent(
                    title: 'Chuyển tiền',
                    icon: Icons.compare_arrows_outlined,
                    topLeft: 15,
                    topRight: 15,
                    bottomLeft: 15,
                    bottomRight: 0,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w, right: 10.w),
                  child: const GridMenuComponent(
                    title: 'Dịch vụ thẻ',
                    icon: Icons.wallet,
                    topLeft: 15,
                    topRight: 15,
                    bottomLeft: 0,
                    bottomRight: 15,
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
                  child: const GridMenuComponent(
                    title: 'Tiết kiệm',
                    icon: Icons.account_balance_wallet,
                    topLeft: 15,
                    topRight: 0,
                    bottomLeft: 15,
                    bottomRight: 15,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child:Padding(
                  padding: EdgeInsets.only(left: 5.w, right: 10.w),
                  child: const GridMenuComponent(
                    title: 'Mua sắm',
                    icon:  Icons.shopping_cart_outlined,
                    topLeft: 0,
                    topRight: 15,
                    bottomLeft: 15,
                    bottomRight: 15,
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
