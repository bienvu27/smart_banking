import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/my_color .dart';

class DashBoardFloatingActionButton extends StatelessWidget {
  const DashBoardFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MyColor.PRIMARY_COLOR_BLUE,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.r)),
      shadowColor: MyColor.PRIMARY_COLOR_BLUE,
      child: SizedBox(
        height: 40.h,
        width: 45.w,
        child: FloatingActionButton(
          backgroundColor: MyColor.PRIMARY_COLOR_BLUE,
          onPressed: () {},
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 3.w, color: Colors.white), borderRadius: BorderRadius.circular(100.r)),
          child: const Icon(Icons.qr_code_scanner_sharp),
        ),
      ),
    );
  }
}