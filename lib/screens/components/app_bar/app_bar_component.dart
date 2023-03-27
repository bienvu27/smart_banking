import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style.dart';
import '../../../res/my_color .dart';


class AppBarComponent extends StatelessWidget with PreferredSizeWidget {
  const AppBarComponent({
    super.key, required this.title, required this.callback, required this.bgColor, required this.colorTitle, required this.colorIcon,
  });
  final String title;
  final VoidCallback callback;
  final Color bgColor, colorTitle, colorIcon ;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 15.sp, color: colorTitle),
      ),
      leading: InkWell(
        onTap: () => callback(),
        child: Icon(
          Icons.arrow_back_ios_new_outlined,
          size: 20.spMax,
          color: colorIcon,
        ),
      ),
      elevation: 0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
