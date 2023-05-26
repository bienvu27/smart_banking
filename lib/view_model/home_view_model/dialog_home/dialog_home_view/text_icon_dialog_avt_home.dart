import 'package:flutter/material.dart';
import 'package:smart_banking/res/app_context_extention.dart';
import '../../../../res/dimentions/gaps.dart';
import '../../../../res/strings/strings.dart';
import '../../../../res/text_style/app_text_style.dart';

class TextIconDialog extends StatelessWidget {
  const TextIconDialog(
      {Key? key, required this.onTap, required this.title, required this.check, this.time, required this.icon})
      : super(key: key);
  final VoidCallback onTap;
  final String? title, time;
  final int check;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: context.resources.color.colorBlack.withOpacity(.3),
            size: context.resources.dimension.defaultIcon,
          ),
          gapW2,
          if (check == 1)
            Container(
              width: context.resources.dimension.mediaQueryWidth / 1.25,
              padding: EdgeInsets.only(
                bottom: context.resources.dimension.gapH2,
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 1.5,
                color: context.resources.color.colorBlack.withOpacity(.1),
              ))),
              child: Text(
                title ?? "",
                style: AppTextStyle().boldDefaultTextStyle,
              ),
            )
          else
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? "",
                  style: AppTextStyle().boldDefaultTextStyle,
                ),
                gapH1,
                Text(
                  '$RECENT_LOGIN \n'
                  '$time',
                  style: AppTextStyle().mediumTextStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        color: context.resources.color.colorBlack.withOpacity(
                          .3,
                        ),
                      ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
