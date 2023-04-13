import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/resources/name_icon.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import 'authentication.dart';
import 'infor_user.dart';

class CoverWidget extends StatelessWidget {
  bool? isLogin;

  CoverWidget({
    super.key,
    bool? isLogin
  });

  @override
  Widget build(BuildContext context) {
    int number = 2;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height / 1.34,
      child: Stack(
        children: [
          Container(
            height: height / 1.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(vrb_banner),
                fit: BoxFit.fill,
                // colorFilter: ColorFilter.mode(
                //   Colors.black.withOpacity(1.0),
                //   BlendMode.softLight,
                // ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: width_12,
              right: width_12,
              top: height_4,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      icon_vrb,
                      width: width_80,
                      height: height_48,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width_8),
                      height: height_22,
                      width: Get.size.width / 1.6,
                      child: TextField(
                        enabled: false,
                        maxLines: 1,
                        style: TextStyle(fontSize: fontSize_10),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          filled: true,
                          prefixIcon: Icon(
                            Icons.search,
                            color: clr_white70,
                            size: fontSize_20,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(border_16),
                              )),
                          fillColor: clr_black54,
                          contentPadding: EdgeInsets.zero,
                          hintText: SEARCH,
                          hintStyle: TextStyle(
                            fontFamily: 'open_sans',
                            fontSize: fontSize_11,
                            color: clr_white70,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: clr_white60,
                          radius: fontSize_16,
                          child: Icon(
                            Icons.person,
                            color: clr_white,
                            size: fontSize_20,
                          ),
                        ),
                        Positioned(
                            right: width_0,
                            bottom: size_0,
                            child: Container(
                              width: width_10,
                              height: height_10,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: clr_black12),
                                color: clr_white,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.menu, size: fontSize_7),
                            ))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width_8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            GOOD_MORNING,
                            style: TextStyle(
                                fontFamily: 'open_sans',
                                fontSize: fontSize_10,
                                fontWeight: FontWeight.w600,
                                color: clr_white70),
                          ),
                          isLogin != null && isLogin! ? Text(
                            NAME_TEST.toUpperCase(),
                            style: TextStyle(
                              fontSize: fontSize_12,
                              fontFamily: 'open_sans',
                              fontWeight: FontWeight.w700,
                              color: clr_white,
                            ),
                          ) : SizedBox(),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          if (number == 1) ...[
            const Authentication(),
          ] else ...[
            const InforUser(),
          ]
        ],
      ),
    );
  }
}
