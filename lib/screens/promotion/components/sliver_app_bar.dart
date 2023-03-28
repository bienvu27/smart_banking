import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        color: _isSliverAppBarExpanded
            ? Colors.black
            : Colors.transparent,
      ),
      expandedHeight: kExpandedHeight,
      pinned: true,
      centerTitle: true,
      snap: false,
      title: Text('Quà tặng',
          style: TextStyle(
              color: _isSliverAppBarExpanded
                  ? Colors.black
                  : Colors.transparent,
              fontWeight: FontWeight.w500)),
      backgroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          'https://ibanking.vrbank.com.vn/Image/Promotion/Banner%20Xuan%20Binh%20Than%20IB%20896%20TV.jpg?1.2',
          fit: BoxFit.fill,
        ),
        titlePadding: EdgeInsets.only(left: 10.w, bottom: 5.h),
        title: _isSliverAppBarExpanded ? null : Container(
          height: 15.h,
          width: 50.w,
          decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(10.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.account_circle_rounded,
                color: Colors.white,
                size: 15.spMin,
              ),
              Text(
                'Hỗ trợ',
                style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}