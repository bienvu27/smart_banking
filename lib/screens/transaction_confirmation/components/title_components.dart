import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class TitleComponents extends StatelessWidget {
  const TitleComponents({
    super.key, required this.title, required this.subTitle, required this.color,
  });

  final String title;
  final String subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: width_8, right: width_8, top: height_8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: width_105,
            child: Text(
              title,
              style: TextStyle(
                color: clr_black38,
                fontSize: fontSize_10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Flexible(
            child: Text(
              subTitle,
              style: TextStyle(
                color: color,
                fontSize: fontSize_10,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}