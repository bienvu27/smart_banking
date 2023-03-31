import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({
    super.key, required this.title, required this.callback, required this.bgColor,
  });
  final String title;
  final VoidCallback callback;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback(),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: width_16, right: width_16,),
            height: height_32,
            width: Get.size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(border_8),
                gradient: linearGradientButtom
            ),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: fontSize_12,
                  fontWeight: FontWeight.w500,
                  color: clr_white),
            ),
          ),
        ],
      ),
    );
  }
}