import 'package:flutter/material.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class GridMenuComponent extends StatelessWidget {
  const GridMenuComponent({
    super.key,
    required this.bottomLeft,
    required this.topLeft,
    required this.topRight,
    required this.bottomRight,
    required this.title,
    required this.icon,
    required this.callback,
    required this.color,
    required this.gradient,
  });

  final double bottomLeft;
  final double topLeft;
  final double topRight;
  final double bottomRight;
  final String title;
  final IconData icon;
  final VoidCallback callback;
  final Color color;

  final LinearGradient gradient;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback(),
      child: Container(
        padding: EdgeInsets.only(
          top: height_16,
          bottom: height_16,
        ),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(bottomLeft),
              topLeft: Radius.circular(topLeft),
              topRight: Radius.circular(topRight),
              bottomRight: Radius.circular(bottomRight),
            ),
            gradient: gradient),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: fontSize_26,
              color: clr_white,
            ),
            SizedBox(
              height: height_4,
            ),
            Text(
              title,
              style: TextStyle(fontSize: fontSize_10, color: clr_white, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
