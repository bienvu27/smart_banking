import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/resources/name_icon.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class SliverAppBarCustom extends StatelessWidget {
  const SliverAppBarCustom({
    super.key,
    required bool isSliverAppBarExpanded,
    required this.kExpandedHeight,
  }) : _isSliverAppBarExpanded = isSliverAppBarExpanded;

  final bool _isSliverAppBarExpanded;
  final double kExpandedHeight;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Icon(
        Icons.lightbulb_circle_outlined,
        color: _isSliverAppBarExpanded ? clr_black : clr_transparent,
      ),
      expandedHeight: kExpandedHeight,
      pinned: true,
      centerTitle: true,
      snap: false,
      title: Text(PROMOTION_SCREEN,
          style:
              TextStyle(color: _isSliverAppBarExpanded ? clr_black : Colors.transparent, fontWeight: FontWeight.w500)),
      backgroundColor: clr_white,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          image_cover_promotion,
          fit: BoxFit.fill,
        ),
        titlePadding: EdgeInsets.only(left: width_8, bottom: height_4),
        title: _isSliverAppBarExpanded
            ? null
            : Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: height_2,
                      left: width_4,
                      right: width_2,
                      bottom: width_4,
                    ),
                    decoration: BoxDecoration(color: clr_black54, borderRadius: BorderRadius.circular(border_8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle_rounded,
                          color: Colors.white,
                          size: fontSize_10,
                        ),
                        SizedBox(width: height_2,),
                        Text(
                          SUPPORT,
                          style: TextStyle(fontSize: fontSize_8, color: clr_white, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
