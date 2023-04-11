import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/button/back_icon_button.dart';
import '../../transfer/view/tabs/components/search_contacts.dart';
import '../components/history_trasnfer_bottom_navigator_bar.dart';

class HistoryTransferPage extends StatelessWidget {
  const HistoryTransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 140.h,
            elevation: 0,
            centerTitle: true,
            title: Text(
              NUMBER_TEST,
              style: TextStyle(
                color: clr_white,
                fontFamily: 'open_sans',
                fontSize: fontSize_12,
                fontWeight: FontWeight.w600,
              ),
            ),
            backgroundColor: PRIMARY_COLOR,
            leading: BackIconButton(
              callback: () => Navigator.pop(context),
              color: Colors.white,
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: width_8),
                child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.home_filled,
                      color: Colors.white,
                      size: fontSize_16,
                    )),
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(290.h),
              child: Column(
                children: [
                  Text(
                    DEFAULT_USER,
                    style: TextStyle(
                      color: clr_white,
                      fontFamily: 'open_sans',
                      fontSize: fontSize_8,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: height_8,
                  ),
                  Text(
                    AVAILABLE_BALANCES,
                    style: TextStyle(
                      color: clr_white,
                      fontFamily: 'open_sans',
                      fontSize: fontSize_8,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '0 VND',
                    style: TextStyle(
                      color: clr_white,
                      fontFamily: 'open_sans',
                      fontSize: fontSize_14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: height_4,
                      bottom: height_12,
                    ),
                    padding: EdgeInsets.only(
                      left: width_10,
                      right: width_10,
                      top: height_1,
                      bottom: height_1,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(border_8),
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        )),
                    child: Text(
                      DETAIL,
                      style: TextStyle(
                        color: clr_white,
                        fontFamily: 'open_sans',
                        fontSize: fontSize_8,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(height_16),
                      topLeft: Radius.circular(height_16),
                    )),
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
                            color: Colors.grey[200],
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
                                  ALL,
                                  style: TextStyle(
                                    fontSize: fontSize_10,
                                    fontFamily: 'open_sans',
                                    color: PRIMARY_COLOR,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  IN_MONEY,
                                  style: TextStyle(
                                    fontSize: fontSize_10,
                                    fontFamily: 'open_sans',
                                    color: PRIMARY_COLOR,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  OUT_MONEY,
                                  style: TextStyle(
                                    fontSize: fontSize_10,
                                    fontFamily: 'open_sans',
                                    color: PRIMARY_COLOR,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height_8),
                          padding: EdgeInsets.only(
                            left: width_16,
                            right: width_16,
                          ),
                          height: height_28,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(border_24),
                              border: Border.all(width: 1, color: clr_black12,)
                            ),
                            child: TextField(
                              maxLines: 1,
                              style: TextStyle(fontSize: fontSize_12),
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                filled: true,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: clr_black12,
                                  size: fontSize_20,
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(Radius.circular(
                                      border_16,
                                    ))),
                                fillColor: clr_white,
                                contentPadding: EdgeInsets.zero,
                                hintText: '$SEARCH',
                                hintStyle: TextStyle(
                                  fontSize: fontSize_12,
                                  fontFamily: 'open_sans',
                                  fontWeight: FontWeight.w500,
                                  color: clr_black12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Center(child: Text('Text1')),
            Center(child: Text('Text2')),
            Center(child: Text('Text3')),
          ],
        ),
        bottomNavigationBar: HistoryTransferBottomNavigatorBar(),
      ),
    );
  }
}
