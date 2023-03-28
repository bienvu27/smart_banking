import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/style.dart';

class DashBoardFloatingActionButton extends StatelessWidget {
  const DashBoardFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: PRIMARY_COLOR,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.r)),
      shadowColor: PRIMARY_COLOR,
      child: SizedBox(
        height: 40.h,
        width: 45.w,
        child: FloatingActionButton(
          backgroundColor: PRIMARY_COLOR,
          onPressed: () {},
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 3.w, color: clr_white), borderRadius: BorderRadius.circular(100.r)),
          child: const Icon(Icons.qr_code_scanner_sharp),
        ),
      ),
    );
  }
}