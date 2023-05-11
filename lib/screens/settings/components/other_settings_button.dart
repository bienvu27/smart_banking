import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class OtherSettingButton extends StatelessWidget {
  const OtherSettingButton({
    super.key, required this.onTap, required this.icon, required this.title,
  });
  final VoidCallback onTap;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        width: Get.size.width,
        color: Colors.white,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(
          top: height_8,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: fontSize_16_5,
            ),
            SizedBox(
              width: width_8,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: fontSize_12,
                fontWeight: FontWeight.w300,
                color: clr_black,
              ),
            )
          ],
        ),
      ),
    );
  }
}