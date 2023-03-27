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
    required this.icon, required this.callback, required this.color, required this.color1, required this.color2, required this.color3, required this.color4,
  });

  final double bottomLeft;
  final double topLeft;
  final double topRight;
  final double bottomRight;
  final String title;
  final IconData icon;
  final VoidCallback callback;
  final Color color ;
  final Color color1 ;
  final Color color2 ;
  final Color color3 ;
  final Color color4 ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> callback(),
      child: Container(
        height: 78.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(bottomLeft.r),
            topLeft: Radius.circular(topLeft.r),
            topRight: Radius.circular(topRight.r),
            bottomRight: Radius.circular(bottomRight.r),
          ),
          gradient: LinearGradient(
              colors: [
                color1,
                color2,
                color3,
                color4,
              ])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30.spMin,
              color: Colors.white,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
