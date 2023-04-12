import 'package:flutter/material.dart';
import '../../../core/style/size.dart';

class AppBarComponent extends StatelessWidget with PreferredSizeWidget {
  AppBarComponent({
    super.key,
    required this.title,
    required this.callback,
    required this.bgColor,
    required this.colorTitle,
    required this.colorIcon,
    this.iconAction,
  });

  final String title;
  final VoidCallback callback;
  final Color bgColor, colorTitle, colorIcon;

  IconData? iconAction;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: fontSize_11,
          color: colorTitle,
          fontFamily: 'open_sans',
        ),
      ),
      leading: InkWell(
        onTap: () => callback(),
        child: Icon(
          Icons.arrow_back_ios_new_outlined,
          size: fontSize_15,
          color: colorIcon,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: width_8),
          child: InkWell(
            onTap: () => callback(),
            child: Icon(
              iconAction,
              size: fontSize_15,
              color: colorIcon,
            ),
          ),
        ),
      ],
      elevation: 0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
