import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/history_transfer/view/tab_history/tab_history_page1.dart';
import 'package:smart_banking/screens/history_transfer/view/tab_history/tab_history_page2.dart';
import 'package:smart_banking/screens/history_transfer/view/tab_history/tab_history_page3.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/button/back_icon_button.dart';
import '../components/history_trasnfer_bottom_navigator_bar.dart';
import '../components/row_title.dart';
import '../controller/history_transfer_controller.dart';

class HistoryTransferPage extends StatefulWidget {
  const HistoryTransferPage({Key? key}) : super(key: key);

  @override
  State<HistoryTransferPage> createState() => _HistoryTransferPageState();
}

class _HistoryTransferPageState extends State<HistoryTransferPage> {
  var isPinned = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: false,
                toolbarHeight: 130.h,
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
                  preferredSize: Size.fromHeight(300.h),
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
                        '50,000,000 VND',
                        style: TextStyle(
                          color: clr_white,
                          fontFamily: 'open_sans',
                          fontSize: fontSize_14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            backgroundColor: Colors.white,
                            context: context,
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(border_30),
                              ),
                            ),
                            builder: (BuildContext context) {
                              return Container(
                                margin: EdgeInsets.only(
                                  top: height_8,
                                ),
                                color: Colors.white,
                                padding: EdgeInsets.only(
                                  top: height_8,
                                  left: width_12,
                                  right: width_12,
                                ),
                                height: MediaQuery.of(context).size.height / 1.1,
                                child: SingleChildScrollView(
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              DETAIL_USER,
                                              style: TextStyle(
                                                fontFamily: 'open_sans',
                                                fontSize: fontSize_11,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () => Navigator.pop(context),
                                              child: Text(
                                                CANCEL,
                                                style: TextStyle(
                                                  fontSize: fontSize_11,
                                                  color: PRIMARY_COLOR,
                                                  fontFamily: 'open_sans',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),

                                        SizedBox(
                                          height: height_16,
                                        ),

                                        Column(
                                          children: [

                                            RowTitle(
                                              title: ACCOUNT_NUMBER,
                                              subTitle: NUMBER_TEST,
                                            ),

                                            SizedBox(
                                              height: height_12,
                                            ),

                                            RowTitle(
                                              title: "Thời điểm truy vấn",
                                              subTitle: "16:00:00 19/04/2023",
                                            ),

                                            SizedBox(
                                              height: height_12,
                                            ),

                                            RowTitle(
                                              title: TITLE_55,
                                              subTitle: NAME_TEST,
                                            ),

                                            SizedBox(
                                              height: height_12,
                                            ),

                                            RowTitle(
                                              title: "Loại sản phẩm",
                                              subTitle: "TK THANH TOAN TRUC TUYEN",
                                            ),

                                            SizedBox(
                                              height: height_12,
                                            ),

                                            RowTitle(
                                              title: TITLE_60,
                                              subTitle: TITLE_61,
                                            ),

                                            SizedBox(
                                              height: height_12,
                                            ),

                                            RowTitle(
                                              title: TITLE_56,
                                              subTitle: DATE_TEST,
                                            ),

                                            SizedBox(
                                              height: height_12,
                                            ),

                                            RowTitle(
                                              title: "Trạng thái",
                                              subTitle: "Hoạt động",
                                            ),

                                            SizedBox(
                                              height: height_12,
                                            ),

                                          ],
                                        ),

                                        SizedBox(
                                          height: height_8,
                                        ),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Chi tiết số dư",
                                              style: TextStyle(
                                                fontFamily: 'open_sans',
                                                fontSize: fontSize_11,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox()
                                          ],
                                        ),

                                        SizedBox(
                                          height: height_16,
                                        ),

                                        Column(
                                          children: [

                                            RowTitle(
                                              title: TITLE_59,
                                              subTitle: VND,
                                            ),

                                            SizedBox(
                                              height: height_12,
                                            ),

                                            RowTitle(
                                              title: AVAILABLE_BALANCES,
                                              subTitle: MONEY_TEST,
                                            ),

                                            SizedBox(
                                              height: height_12,
                                            ),

                                            RowTitle(
                                              title: AVAILABLE,
                                              subTitle: MONEY_TEST,
                                            ),

                                            SizedBox(
                                              height: height_12,
                                            ),

                                            RowTitle(
                                              title: "Số tiền phong tỏa",
                                              subTitle: '0',
                                            ),

                                            SizedBox(
                                              height: height_12,
                                            ),

                                            RowTitle(
                                              title: TITLE_57,
                                              subTitle: TITLE_58,
                                            ),

                                            SizedBox(
                                              height: height_12,
                                            ),

                                            RowTitle(
                                              title: "Lãi cộng dồn",
                                              subTitle: TITLE_58,
                                            ),

                                            SizedBox(
                                              height: height_12,
                                            ),

                                          ]
                                        ),

                                        SizedBox(
                                          height: height_8,
                                        ),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Thấu chi",
                                              style: TextStyle(
                                                fontFamily: 'open_sans',
                                                fontSize: fontSize_11,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox()
                                          ],
                                        ),

                                        SizedBox(
                                          height: height_16,
                                        ),

                                        Column(
                                            children: [

                                              RowTitle(
                                                title: "Hạn mức được cấp",
                                                subTitle: "0",
                                              ),

                                              SizedBox(
                                                height: height_12,
                                              ),

                                              RowTitle(
                                                title: "Hạn mức đã sử dụng",
                                                subTitle: "0",
                                              ),

                                              SizedBox(
                                                height: height_12,
                                              ),

                                              RowTitle(
                                                title: "Hạn mức còn lại",
                                                subTitle: "0",
                                              ),

                                              SizedBox(
                                                height: height_12,
                                              ),

                                              RowTitle(
                                                title: "Lãi",
                                                subTitle: '0%',
                                              ),

                                              SizedBox(
                                                height: height_12,
                                              ),

                                            ]
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(bottom: height_8),
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              right: width_2_5,
                                            ),
                                            padding: EdgeInsets.only(
                                              top: height_2,
                                              bottom: height_2,
                                            ),
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(border_8),
                                              color: button_color_home,
                                            ),
                                            child: Row(
                                              children: [
                                                GetBuilder<HistoryTransferController>(
                                                  init: HistoryTransferController(),
                                                  builder: (controller) {
                                                    return Checkbox(
                                                      value: controller.isChecked,
                                                      onChanged: (value) {
                                                        controller.toggleCheckbox(controller.isChecked);
                                                      },
                                                      activeColor: PRIMARY_COLOR,
                                                      checkColor: clr_white,
                                                      tristate: false,
                                                    );
                                                  },
                                                ),
                                                Text(
                                                  TITLE_62,
                                                  style: TextStyle(
                                                      fontSize: fontSize_10,
                                                      fontFamily: 'open_sans',
                                                      fontWeight: FontWeight.w500,
                                                      color: PRIMARY_COLOR),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ]),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
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
                                    border: Border.all(
                                      width: 1,
                                      color: clr_black12,
                                    )),
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
              )
            ];
          },
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              TabHistoryPage1(),
              TabHistoryPage2(),
              TabHistoryPage3(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HistoryTransferBottomNavigatorBar(),
    );
  }
}
