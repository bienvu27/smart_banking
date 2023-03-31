import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class AppBarTransfer extends StatelessWidget with PreferredSizeWidget{
  const AppBarTransfer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          CHOOSE_PEOPLE,
          style: TextStyle(color: clr_black, fontSize: fontSize_12, fontWeight: FontWeight.w600),
        ),
        backgroundColor: clr_white,
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: clr_black,
              size: fontSize_14,
            )),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80.h),
          child: Container(
            margin: EdgeInsets.only(
              left: width_16,
              right: width_16,
              top: height_8,
            ),
            height: height_44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                border_10,
              ),
              boxShadow: [boxShadowTab],
              gradient: linearGradientTab,
            ),
            child: TabBar(
              padding: EdgeInsets.only(
                top: height_4,
                left: width_4,
                right: width_4,
                bottom: height_4,
              ),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  border_10,
                ),
                color: clr_66cacef,
              ),
              labelColor: clr_white,
              unselectedLabelColor: clr_white,
              tabs: [
                Tab(
                  child: Text(
                    TAB_1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: fontSize_10,
                      fontWeight: FontWeight.w500,
                      height: lineHeight,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    TAB_2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: fontSize_10,
                      fontWeight: FontWeight.w500,
                      height: lineHeight,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    TAB_3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: fontSize_10,
                      fontWeight: FontWeight.w500,
                      height: lineHeight,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
