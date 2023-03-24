import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_banking/screens/notification/model/notification_model.dart';
import '../../res/my_color .dart';
import 'components/notification_list.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = [
      NotificationModel(date: '22/03/2023', time: '14:55', image: 'https://cdn.vietnambiz.vn/1881912202208555/images/2023/02/21/ngan-hang-viet-nga-20230221171222723.jpeg?width=700', description: ''),
      NotificationModel(date: '22/03/2023', time: '14:55', image: 'https://vrbank.com.vn/Uploads/%E1%BA%A2nh%20b%C3%A0i%20vi%E1%BA%BFt/Poster%20Mobile%20app_A4-02%20(2).jpg', description: ''),
      NotificationModel(date: '22/03/2023', time: '14:55', image: 'https://haymora.com/upload/images/tai_chinh_ngan_hang/ngan_hang_lien_doanh_viet_-_nga_-_vrb/vrb-doi-ngu-nhan-su-source-dantri.jpg', description: ''),
      NotificationModel(date: '22/03/2023', time: '14:55', image: 'https://cdn.vietnambiz.vn/1881912202208555/images/2023/02/21/ngan-hang-viet-nga-20230221171222723.jpeg?width=700', description: ''),
      NotificationModel(date: '22/03/2023', time: '14:55', image: 'https://vrbank.com.vn/Uploads/%E1%BA%A2nh%20b%C3%A0i%20vi%E1%BA%BFt/Poster%20Mobile%20app_A4-02%20(2).jpg', description: ''),
      NotificationModel(date: '22/03/2023', time: '14:55', image: 'https://haymora.com/upload/images/tai_chinh_ngan_hang/ngan_hang_lien_doanh_viet_-_nga_-_vrb/vrb-doi-ngu-nhan-su-source-dantri.jpg', description: ''),
    ];

    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text(
                'Thông báo',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600),
              ),
              backgroundColor: Colors.white,
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.settings,
                        color: Colors.black,
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
                      height: 35.h,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(
                          25.r,
                        ),
                      ),
                      child: TabBar(
                        padding: const EdgeInsets.all(5),
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            25.r,
                          ),
                          color: Colors.white,
                        ),
                        labelColor: MyColor.PRIMARY_COLOR_BLUE,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(
                            child: Text(
                              'Khuyến mãi',
                              style: TextStyle(
                                  fontSize: 13.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Biến động',
                              style: TextStyle(
                                  fontSize: 13.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Tin khác',
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
                            BoxShadow(blurRadius: 2.r, color: Colors.black12),
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
                              color: Colors.black54,
                              size: 30.spMin,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.r))),
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.zero,
                            hintText: 'Tìm kiếm',
                            hintStyle: TextStyle(fontSize: 15.sp),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),

          body: TabBarView(
            children: [
              NotificationList(list: list, visible: true),
              NotificationList(list: list, visible: false),
              NotificationList(list: list, visible: false),
            ],
          ),
        ));
  }

}

