
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/size.dart';

class DropViewSupport<T> extends StatefulWidget {
  final String title;
  final String description;
  DropViewSupport({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  _DropViewSupportState createState() => _DropViewSupportState();
}

class _DropViewSupportState extends State<DropViewSupport> {
  bool _isShowAnswer = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  onTabShow() {
    setState(() {
      _isShowAnswer = !_isShowAnswer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12.w, right: 12.w),
      margin: EdgeInsets.only(top: 50.h),
      child: Column(
        children: [
          new InkWell(
            onTap: onTabShow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Text(
                  "",

                )),
                // Public.iconCustom(
                //   icon: dropdown,
                //   context: context,
                //   size: 60.sp,
                //   color: colorRedBlack,
                // ),
              ],
            ),
          ),
          _isShowAnswer
              ? Container(
            margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                      color: Color(0xA1C6C6C6),
                    )
                )
            ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}

TextStyle textStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: fontSize_40,
    // color: HexColor.fromHex("#80807f")
  color: Colors.black,
);
