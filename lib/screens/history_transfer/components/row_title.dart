import 'package:flutter/material.dart';

import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class RowTitle extends StatelessWidget {
  const RowTitle({
    super.key, required this.title, required this.subTitle,
  });

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: clr_black54,
            fontFamily: 'open_sans',
            fontSize: fontSize_11,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          subTitle,
          style: TextStyle(
            color: clr_black,
            fontFamily: 'open_sans',
            fontSize: fontSize_11,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}