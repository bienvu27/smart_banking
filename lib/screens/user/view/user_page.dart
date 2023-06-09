import 'package:flutter/material.dart';
import 'package:smart_banking/screens/user/view/tabs/user_tab1/user_tab1.dart';
import 'package:smart_banking/screens/user/view/tabs/user_tab2/user_tab2.dart';
import 'package:smart_banking/screens/user/view/tabs/user_tab3/user_tab3.dart';

import '../../../res/strings/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/button/back_icon_button.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text(
              USER,
              style: TextStyle(
                color: clr_black,
                fontSize: fontSize_12,
                fontFamily: 'open_sans',
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: BackIconButton(
              callback: () => Navigator.pop(context),
              color: Colors.black,
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: width_12),
                child: CircleAvatar(
                  radius: border_10,
                  backgroundColor: Colors.grey[200],
                  child: Icon(
                    Icons.change_circle_sharp,
                    color: Colors.black,
                    size: fontSize_14,
                  ),
                ),
              )
            ],
            backgroundColor: clr_white,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(height_40),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: width_16,
                      right: width_16,
                      top: height_8,
                      bottom: height_6,
                    ),
                    height: height_26,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(
                        border_16,
                      ),
                    ),
                    child: TabBar(
                      padding: EdgeInsets.only(
                        top: height_3,
                        right: width_2_5,
                        left: width_2_5,
                        bottom: height_3,
                      ),
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          border_16,
                        ),
                        color: clr_white,
                      ),
                      labelColor: PRIMARY_COLOR,
                      unselectedLabelColor: clr_black,
                      tabs: [
                        Tab(
                          child: Text(
                            PAYMENT,
                            style: TextStyle(
                              fontSize: fontSize_9,
                              fontFamily: 'open_sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            DEPOSITS,
                            style: TextStyle(
                              fontSize: fontSize_9,
                              fontFamily: 'open_sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            LOAN,
                            style: TextStyle(
                              fontSize: fontSize_9,
                              fontFamily: 'open_sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            UserTab1(),
            UserTab2(),
            UserTab3(),
          ],
        ),
      ),
    );
  }
}
