import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/style.dart';
import '../../transfer/models/list_contacts_model.dart';
import '../../transfer/view/tabs/tab1/components/list_contacts.dart';
import 'my_contacts.dart';

class ContactsManagerPage extends StatelessWidget {
  const ContactsManagerPage({Key? key}) : super(key: key);

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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text(
              CONTACTS_MANAGER,
              style: TextStyle(
                  color: clr_black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600),
            ),
            leading: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: clr_black,
                  size:20.spMax,
                )),
            backgroundColor: Colors.white,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.home_outlined,
                      color: clr_black,
                      size: 30.spMax,
                    )),
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(100.h),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 20.w, right: 20.w, top: 15.h, bottom: 10.h),
                    height: 40.w,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(
                        25.r,
                      ),
                    ),
                    child: TabBar(
                      padding: EdgeInsets.only(top: 5.h, right: 5.w, left: 5.w, bottom: 5.h),
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          25.r,
                        ),
                        color: clr_white,
                      ),
                      labelColor: PRIMARY_COLOR,
                      unselectedLabelColor: clr_black,
                      tabs: [
                        Tab(
                          child: Text(
                            TAB_CONTACTS_1,
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          child: Text(
                            TAB_CONTACTS_2,
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],

                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.h),
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
                        decoration: InputDecoration(
                          filled: true,
                          prefixIcon: Icon(
                            Icons.search,
                            color: clr_black54,
                            size: 30.spMin,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                              BorderRadius.all(Radius.circular(25.r))),
                          fillColor: clr_white,
                          contentPadding: EdgeInsets.zero,
                          hintText: SEARCH,
                          hintStyle: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
        body:  TabBarView(
          children: [
            ListContacts(list: list, callBack: ()=> Get.toNamed("/transaction_infor", arguments: '')),
            const MyContacts(),
          ],
        ),
      ),
    );
  }
}
