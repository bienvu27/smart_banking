import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../res/colors/app_colors.dart';
import '../../../res/text_style/app_text_style.dart';
import '../../../view_model/dashboard_view_model/dashboard_view_model.dart';

class IconsDashBoard extends StatelessWidget {
  const IconsDashBoard({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
    required this.c,
    required this.number,
  });

  final VoidCallback onTap;
  final String title;
  final String icon;
  final DashboardViewModel c;
  final int number;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            width: 20,
            color: c.currentTab == number
                ? AppColors().colorPrimary
                : AppColors().colorUnActiveButton,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: AppTextStyle().verySmallTextStyle.copyWith(
                  color: c.currentTab == number
                      ? AppColors().colorPrimary
                      : AppColors().colorUnActiveButton,
                  fontSize: 14,
                ),
          )
        ],
      ),
    );
  }
}
