import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/style.dart';


class CustomDialog extends StatelessWidget {
  const CustomDialog(
      {super.key, required this.clickCallback, required this.title, required this.cancel, required this.submit});

  final VoidCallback clickCallback;
  final String title;
  final String cancel;
  final String submit;

  @override
  Widget build(BuildContext context) {

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 0.0,
      backgroundColor: Colors.white,
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0.0, right: 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.sp, color: clr_black, fontWeight: FontWeight.w400, height: 1.4)),
          ),
          SizedBox(height: 10.h),

          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 130.w,
                      height: 40.h,
                      margin: EdgeInsets.only(right: 5.w),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: button_color_bg_dialog,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Text(
                        cancel,
                        style: TextStyle(color: PRIMARY_COLOR, fontSize: 15.sp, fontWeight: FontWeight.w800),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: 5.w),
                      width: 130.w,
                      height: 40.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                          gradient: const LinearGradient(
                              colors: [
                                Color(0xff01bbae),
                                Color(0xff00a2ae),
                                Color(0xff0181ad),
                              ])
                      ),
                      child: Text(
                        submit,
                        style: TextStyle(color: clr_white, fontSize: 15.sp, fontWeight: FontWeight.w800),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onTap: () => clickCallback(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
