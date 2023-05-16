import 'package:flutter/material.dart';

import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class SettingComponent extends StatelessWidget {
  const SettingComponent({
    super.key,
    required this.title,
    required this.icon,
    required this.callback,
  });

  final String title;
  final IconData icon;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback(),
      child: Container(
        margin: EdgeInsets.only(
          bottom: height_16,
        ),
        padding: EdgeInsets.only(bottom: height_16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.1,
              color: Colors.black26,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: fontSize_12,
                fontWeight: FontWeight.w300,
                color: clr_black,
              ),
            ),
            Icon(
              icon,
              size: fontSize_16_5,
            )
          ],
        ),
      ),
    );
  }
}
