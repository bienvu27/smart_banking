import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/strings.dart';
import '../../../../core/style.dart';
import '../../models/list_contacts_model.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  ScrollController? _scrollController;
  bool lastStatus = true;
  double height = 200;

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
          nameBank: 'VRBAMK'),
      ListContactsModel(
          image: 'assets/images/vrbank.png',
          name: 'VU XUAN BIEN',
          numberAccount: '27910000492884',
          nameBank: 'VRBAMK'),
      ListContactsModel(
          image: 'assets/images/vrbank.png',
          name: 'VU XUAN BIEN',
          numberAccount: '27910000492884',
          nameBank: 'VRBAMK'),
      ListContactsModel(
          image: 'assets/images/vrbank.png',
          name: 'VU XUAN BIEN',
          numberAccount: '27910000492884',
          nameBank: 'VRBAMK'),
      ListContactsModel(
          image: 'assets/images/vrbank.png',
          name: 'VU XUAN BIEN',
          numberAccount: '27910000492884',
          nameBank: 'VRBAMK'),
      ListContactsModel(
          image: 'assets/images/vrbank.png',
          name: 'VU XUAN BIEN',
          numberAccount: '27910000492884',
          nameBank: 'VRBAMK'),
      ListContactsModel(
          image: 'assets/images/vrbank.png',
          name: 'VU XUAN BIEN',
          numberAccount: '27910000492884',
          nameBank: 'VRBAMK'),
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
                backgroundColor: Colors.white,
                pinned: true,
                expandedHeight: MediaQuery.of(context).size.height * 0.33,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(60.h),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                     children: [
                       Container(
                         margin:
                         EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
                         child: TabBar(
                           labelColor: clr_black,
                           unselectedLabelColor: clr_black54,
                           indicatorColor: PRIMARY_COLOR,
                           tabs: [
                             Tab(
                               child: Text(
                                 CONTACT,
                                 textAlign: TextAlign.center,
                                 style: TextStyle(
                                     fontSize: 13.sp,
                                     fontWeight: FontWeight.w600,
                                     height: 1.2.h),
                               ),
                             ),
                             Tab(
                               child: Text(
                                 RECENTLY,
                                 textAlign: TextAlign.center,
                                 style: TextStyle(
                                     fontSize: 13.sp,
                                     fontWeight: FontWeight.w600,
                                     height: 1.2.h),
                               ),
                             ),
                             Tab(
                               child: Text(
                                 SAVED_TEMPLATES,
                                 textAlign: TextAlign.center,
                                 style: TextStyle(
                                     fontSize: 13.sp,
                                     fontWeight: FontWeight.w600,
                                     height: 1.2.h),
                               ),
                             ),
                           ],
                         ),
                       ),
                       Container(
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
                               hintText: SEARCH_2,
                               hintStyle: TextStyle(
                                 fontSize: 15.sp,
                                 fontWeight: FontWeight.w500,
                                 color: clr_black26,
                               ),
                             ),
                           ),
                         ),
                       )
                     ],
                    ),
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  title: _isShrink
                      ? const Text(
                    "Profile",
                  )
                      : null,
                  background: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                              labelText: TITLE_33,
                              suffixIcon: Icon(
                                Icons.account_box_outlined,
                                size: 20.spMax,
                                color: clr_black54,
                              ),
                              suffixIconColor: clr_black54,
                              labelStyle: TextStyle(
                                  fontSize: 16.sp,
                                  color: clr_black54,
                                  fontWeight: FontWeight.w500),
                              disabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: clr_black),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: PRIMARY_COLOR),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          color: clr_f5f5f5,
                          height: 50.h,
                          margin: EdgeInsets.only(top: 20.h),
                          padding:
                          EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                TITLE_34,
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                  color: clr_a6a8a9,
                                ),
                              ),
                              Text(
                                TITLE_35,
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                  color: PRIMARY_COLOR,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                color: clr_white,
                child: ListView(
                  children: list.map((e) {
                    return Container(
                      margin: EdgeInsets.only(top: 20.h,),
                      color: clr_white,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: clr_f6f5f7,
                            radius: 20.r,
                            child: Image.asset(
                              e.image ?? '',
                              width: 30.w,
                              height: 30.h,
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.name?.toUpperCase() ?? ''.toUpperCase(),
                                style: TextStyle(
                                    color: clr_black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.sp),
                              ),
                              SizedBox(height: 5.h,),
                              Text(
                                e.numberAccount?.toUpperCase() ?? ''.toUpperCase(),
                                style: TextStyle(
                                    color: clr_black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.sp),
                              ),
                              SizedBox(height: 5.h,),
                              Text(
                                e.nameBank?.toUpperCase() ?? ''.toUpperCase(),
                                style: TextStyle(
                                    color: clr_black87,
                                    fontSize: 13.sp),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              Center(child: Text('Tab2')),
              Center(child: Text('Tab3')),
            ],
          ),
        ),
      ),
    );
  }
}
