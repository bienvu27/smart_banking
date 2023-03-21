import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridMenuComponent extends StatelessWidget {
  const GridMenuComponent({
    super.key,
    required this.bottomLeft,
    required this.topLeft,
    required this.topRight,
    required this.bottomRight,
    required this.title,
    required this.icon,
  });

  final double bottomLeft;
  final double topLeft;
  final double topRight;
  final double bottomRight;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78.h,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(bottomLeft.r),
          topLeft: Radius.circular(topLeft.r),
          topRight: Radius.circular(topRight.r),
          bottomRight: Radius.circular(bottomRight.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30.spMin,
            color: Colors.red,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 13.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
