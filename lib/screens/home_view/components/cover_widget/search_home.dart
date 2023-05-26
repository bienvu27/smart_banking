import 'package:flutter/material.dart';
import 'package:smart_banking/res/app_context_extention.dart';

import '../../../../res/strings/strings.dart';
import '../../../../res/text_style/app_text_style.dart';
import '../../../../utils/utils.dart';

class SearchHome extends StatelessWidget {
  const SearchHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Utils.showSearchDialog(context);
      },
      child: SizedBox(
        height: 40,
        width: context.resources.dimension.mediaQueryWidth / 1.6,
        child: TextField(
          enabled: false,
          maxLines: 1,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            filled: true,
            prefixIcon: Icon(
              Icons.search,
              color: context.resources.color.colorWhite.withOpacity(.5),
              size: context.resources.dimension.defaultIcon,
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(context.resources.dimension.bigBorderRadius),
                )),
            fillColor: context.resources.color.colorBlack.withOpacity(0.3),
            contentPadding: EdgeInsets.zero,
            hintText: SEARCH,
            hintStyle: AppTextStyle().defaultTextStyle.copyWith(
              color: context.resources.color.colorWhite.withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}
