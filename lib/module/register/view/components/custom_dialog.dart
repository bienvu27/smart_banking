import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key, required this.clickCallback});

  final VoidCallback clickCallback;

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
                "Quý khách vui lòng nhấn lại link giới thiệu để được hưởng khuyến mại theo chương trình KH giới thiệu KH. Trường hợp không có người giới thiệu vui lòng bỏ qua thông báo này",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.sp, color: Colors.black, fontWeight: FontWeight.w400, height: 1.4)),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 130.w,
                    height: 40.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.red, width: 1),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Text(
                      "Đóng",
                      style: TextStyle(color: Colors.red, fontSize: 14.sp, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    width: 130.w,
                    height: 40.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Tiếp tục",
                      style: TextStyle(color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () => clickCallback(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
