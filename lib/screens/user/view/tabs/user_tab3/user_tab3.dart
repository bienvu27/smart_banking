import 'package:flutter/material.dart';

import '../../../../../core/resources/strings.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/style/size.dart';

class UserTab3 extends StatelessWidget {
  const UserTab3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height_40,),
            Text(
              TITLE_53,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: fontSize_9,
                color: clr_black54,
                fontFamily: 'open_sans',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: height_8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: height_2,
                    bottom: height_2,
                    left: width_8,
                    right: width_8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(width_10),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        size: fontSize_12,
                        color: PRIMARY_COLOR,
                      ),
                      SizedBox(width: width_4,),
                      Text(TITLE_52,
                          style: TextStyle(
                            fontSize: fontSize_10,
                            fontFamily: 'open_sans',
                            color: PRIMARY_COLOR,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
