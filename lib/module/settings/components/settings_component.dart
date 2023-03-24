import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingComponent extends StatelessWidget {
  const SettingComponent({
    super.key, required this.title, required this.icon, required this.callback,
  });
  final String title;
  final IconData icon;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> callback,
      child: Container(
        margin: EdgeInsets.only(bottom: 30.h,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            Icon(icon, size: 25.spMin,)
          ],
        ),
      ),
    );
  }
}