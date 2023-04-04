import 'package:flutter/material.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class InforUser extends StatelessWidget {
  const InforUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Positioned(
        bottom: size_0,
        child: SizedBox(
          width: width,
          child: Container(
            margin: EdgeInsets.only(left: width_10, right: width_10),
            padding: EdgeInsets.only(
              left: width_10,
              right: width_10,
              bottom: height_12,
              top: height_12,
            ),
            alignment: Alignment.center,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(border_10),
              color: clr_white,
              boxShadow: [boxShadow],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      PAYMENT_ACCOUNT,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: fontSize_12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: height_4,
                    ),
                    Row(
                      children: [
                        Text(
                          NUMBER_TEST,
                          style: TextStyle(
                            color: clr_black,
                            fontSize: fontSize_14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: fontSize_20,
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: height_4,
                    bottom: height_4,
                    right: width_8,
                    left: width_8,
                  ),
                  decoration: BoxDecoration(
                    color: clr_black12,
                    borderRadius: BorderRadius.circular(border_16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        TODO_LIST,
                        style: TextStyle(
                          fontSize: fontSize_10,
                          color: clr_black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: fontSize_10,
                        color: clr_black54,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
