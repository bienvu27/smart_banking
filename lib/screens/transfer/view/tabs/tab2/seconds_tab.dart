import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab1/components/list_contacts.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab1/components/list_contacts_recently.dart';

import '../../../../../core/resources/strings.dart';
import '../../../../../core/style/style.dart';
import '../../../../components/button/button_component.dart';
import '../../../models/list_contacts_model.dart';
import 'model/icon_bank_model.dart';

class SecondsTab extends StatefulWidget {
  const SecondsTab({Key? key}) : super(key: key);

  @override
  State<SecondsTab> createState() => _SecondsTabState();
}

class _SecondsTabState extends State<SecondsTab> {
  ScrollController? _scrollController;
  bool lastStatus = true;
  double height = 342.w;
  double fromHeight = 60.h;
  int index = 1;
  bool statusSearch = true;
  bool visibly = true;

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      setState(() {
        lastStatus = _isShrink;
      });
    }
  }

  bool get _isShrink {
    return _scrollController != null &&
        _scrollController!.hasClients &&
        _scrollController!.offset > (height - kToolbarHeight);
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController?.removeListener(_scrollListener);
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final list = [
      ListContactsModel(
        image: 'assets/images/vrbank.png',
        name: 'VU XUAN BIEN',
        numberAccount: '27910000492884',
        nameBank: 'VRBANK',
        money: '4.000.000',
      ),
      ListContactsModel(
        image: 'assets/images/vrbank.png',
        name: 'VU XUAN BIEN',
        numberAccount: '27910000492884',
        nameBank: 'VRBANK',
        money: '4.000.000',
      ),
      ListContactsModel(
        image: 'assets/images/vrbank.png',
        name: 'VU XUAN BIEN',
        numberAccount: '27910000492884',
        nameBank: 'VRBANK',
        money: '4.000.000',
      ),
      ListContactsModel(
        image: 'assets/images/vrbank.png',
        name: 'VU XUAN BIEN',
        numberAccount: '27910000492884',
        nameBank: 'VRBANK',
        money: '4.000.000',
      ),
      ListContactsModel(
        image: 'assets/images/vrbank.png',
        name: 'VU XUAN BIEN',
        numberAccount: '27910000492884',
        nameBank: 'VRBANK',
        money: '4.000.000',
      ),
      ListContactsModel(
        image: 'assets/images/vrbank.png',
        name: 'VU XUAN BIEN',
        numberAccount: '27910000492884',
        nameBank: 'VRBANK',
        money: '4.000.000',
      ),
      ListContactsModel(
        image: 'assets/images/vrbank.png',
        name: 'VU XUAN BIEN',
        numberAccount: '27910000492884',
        nameBank: 'VRBANK',
        money: '4.000.000',
      ),
    ];
    final listImageBank = [
      IconBankModel(image: 'https://cdn.haitrieu.com/wp-content/uploads/2022/02/Icon-Vietcombank.png'),
      IconBankModel(
          image:
              'https://cdn.haitrieu.com/wp-content/uploads/2022/02/Icon-MB-Bank-MBB.png'),
      IconBankModel(image: 'https://cdn.haitrieu.com/wp-content/uploads/2022/01/Logo-BIDV-Ori.png'),
      IconBankModel(image: 'https://cdn.haitrieu.com/wp-content/uploads/2022/02/Icon-TPBank.png'),
      IconBankModel(image: 'https://cdn.haitrieu.com/wp-content/uploads/2022/01/Icon-Agribank.png'),
      IconBankModel(image: 'https://cdn.haitrieu.com/wp-content/uploads/2022/01/Icon-VPBank.png'),
    ];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  backgroundColor: clr_white,
                  pinned: true,
                  expandedHeight: height,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    background: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                            child: TextField(
                              enabled: false,
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
                              decoration: InputDecoration(
                                labelText: TITLE_43,
                                suffixIcon: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  size: 30.spMax,
                                  color: clr_black54,
                                ),
                                suffixIconColor: clr_black54,
                                labelStyle: TextStyle(fontSize: 16.sp, color: clr_black54, fontWeight: FontWeight.w500),
                                disabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: clr_black12),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: PRIMARY_COLOR),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  SUGGEST,
                                  style: TextStyle(
                                    color: clr_black54,
                                    fontSize: 13.sp,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50.h,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: listImageBank
                                        .map((e) => Container(
                                              margin: EdgeInsets.only(right: 20.w, top: 10.h),
                                              child: CircleAvatar(
                                                  backgroundColor: clr_f6f5f7,
                                                  radius: 20.r,
                                                  child: Image.network(
                                                    e.image ?? '',
                                                    width: 20.w,
                                                    height: 20.h,
                                                    fit: BoxFit.scaleDown,
                                                  )),
                                            ))
                                        .toList(),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            color: clr_f5f5f5,
                            height: 50.h,
                            margin: EdgeInsets.only(top: 20.h),
                            padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 1.6,
                                  child: Text(
                                    TITLE_34,
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w500,
                                      color: clr_a6a8a9,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () => Get.toNamed("/contacts_manager", arguments: ''),
                                  child: SizedBox(
                                    width: 90.w,
                                    child: Text(
                                      TITLE_35,
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.w500,
                                        color: PRIMARY_COLOR,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(fromHeight),
                    child: Container(
                      color: clr_white,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 20.w,
                              right: 20.w,
                            ),
                            child: TabBar(
                              labelColor: clr_black,
                              unselectedLabelColor: clr_black54,
                              indicatorColor: PRIMARY_COLOR,
                              onTap: (index) {
                                setState(() {
                                  if (index == 1) {
                                    visibly = false;
                                    height = 285.w;
                                    fromHeight = 10.h;
                                  } else if (index == 2) {
                                    statusSearch = false;
                                    visibly = true;
                                    height = 342.w;
                                    fromHeight = 60.h;
                                  } else {
                                    statusSearch = true;
                                    visibly = true;
                                    height = 342.w;
                                    fromHeight = 60.h;
                                  }
                                });
                              },
                              tabs: [
                                Tab(
                                  child: Text(
                                    CONTACT,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600, height: 1.2.h),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    RECENTLY,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600, height: 1.2.h),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    SAVED_TEMPLATES,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600, height: 1.2.h),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: visibly,
                            child: Container(
                              margin: EdgeInsets.only(top: 15.h),
                              padding: EdgeInsets.only(
                                left: 20.w,
                                right: 20.w,
                              ),
                              height: 35.h,
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(blurRadius: 2.r, color: clr_black12),
                                  ],
                                  borderRadius: BorderRadius.circular(25.r),
                                ),
                                child: TextField(

                                  maxLines: 1,
                                  style: TextStyle(fontSize: 17.sp),
                                  textAlignVertical: TextAlignVertical.center,
                                  onTap: (){},
                                  decoration: InputDecoration(
                                    filled: true,
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: clr_black54,
                                      size: 30.spMin,
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(Radius.circular(25.r))),
                                    fillColor: clr_white,
                                    contentPadding: EdgeInsets.zero,
                                    hintText: statusSearch ? SEARCH_2 : SEARCH_3,
                                    hintStyle: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                      color: clr_black26,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ListContacts(list: list,callBack: ()=> Get.toNamed("/transaction_infor", arguments: ''), icon: Icons.account_balance_wallet_rounded),
                ListContactsRecently(list: list, callBack: () => Get.toNamed("/transaction_infor", arguments: '')),
                Center(
                    child: Text(
                  TITLE_36,
                  style: TextStyle(color: clr_black26, fontSize: 15.sp),
                )),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            height: 55.h,
            decoration: BoxDecoration(
              color: clr_white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.9),
                  spreadRadius: 3,
                  blurRadius: 1,
                  offset: const Offset(0, 3),
                )
              ],
            ), // Get.to(const RegisterStep3Page()
            child: ButtonComponent(
              title: NEXT,
              bgColor: button_color_home,
              callback: () => Get.toNamed("/transaction_infor", arguments: ''),
            ),
          )),
    );
  }
}
