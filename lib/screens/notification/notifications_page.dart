import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_banking/screens/notification/model/notification_model.dart';
import '../../core/resources/strings.dart';
import '../../core/style/colors.dart';
import 'components/notification_list.dart';
import 'model/description_model.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = [
      NotificationModel(date: '22/03/2023', time: '14:55', image: 'https://cdn.vietnambiz.vn/1881912202208555/images/2023/02/21/ngan-hang-viet-nga-20230221171222723.jpeg?width=700', description: [
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/1933/1933691.png', description: 'Đổi quà miễn phí - Đừng bỏ phí! Đổi quà miễn phí'),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/2584/2584606.png', description: 'VRB Membership Reward tặng bạn: '),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png', description: 'Danh mục giao dịch được tích điểm được mở rộng với chuyển tiền quốc tế, đăng ký BRV Smart Kids,...'),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png', description: 'Tích điểm bao la khi mở tài khoản chọn tên, chi tiêu thẻ, Thanh toán Online, Tiết kiệm,...'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Giao dịch ngay hôm nay để tích điểm B-Point và tận hưởng miễn phí kho ưu đã bất ngờ từ Member Rewards bạn nhé!'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Chi tiết thể lệ (Cập nhật ngày 15/03/2023).'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Miễn phí thường niên thẻ thẻ Platinum khi phát sinh tổng doanh số giao dịch từ 2 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Miễn phí thường niên thẻ Classic/Gold khi phát sinh tổng doanh số giao dịch từ 1 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),

      ]),
      NotificationModel(date: '22/03/2023', time: '14:55', image: 'https://vrbank.com.vn/Uploads/%E1%BA%A2nh%20b%C3%A0i%20vi%E1%BA%BFt/Poster%20Mobile%20app_A4-02%20(2).jpg', description: [
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/1933/1933691.png', description: 'Đổi quà miễn phí - Đừng bỏ phí! Đổi quà miễn phí'),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/2584/2584606.png', description: 'VRB Membership Reward tặng bạn: '),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png', description: 'Danh mục giao dịch được tích điểm được mở rộng với chuyển tiền quốc tế, đăng ký BRV Smart Kids,...'),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png', description: 'Tích điểm bao la khi mở tài khoản chọn tên, chi tiêu thẻ, Thanh toán Online, Tiết kiệm,...'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Giao dịch ngay hôm nay để tích điểm B-Point và tận hưởng miễn phí kho ưu đã bất ngờ từ Member Rewards bạn nhé!'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Chi tiết thể lệ (Cập nhật ngày 15/03/2023).'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Miễn phí thường niên thẻ thẻ Platinum khi phát sinh tổng doanh số giao dịch từ 2 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Miễn phí thường niên thẻ Classic/Gold khi phát sinh tổng doanh số giao dịch từ 1 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),]),
      NotificationModel(date: '22/03/2023', time: '14:55', image: 'https://haymora.com/upload/images/tai_chinh_ngan_hang/ngan_hang_lien_doanh_viet_-_nga_-_vrb/vrb-doi-ngu-nhan-su-source-dantri.jpg', description: [
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/1933/1933691.png', description: 'Đổi quà miễn phí - Đừng bỏ phí! Đổi quà miễn phí'),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/2584/2584606.png', description: 'VRB Membership Reward tặng bạn: '),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png', description: 'Danh mục giao dịch được tích điểm được mở rộng với chuyển tiền quốc tế, đăng ký BRV Smart Kids,...'),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png', description: 'Tích điểm bao la khi mở tài khoản chọn tên, chi tiêu thẻ, Thanh toán Online, Tiết kiệm,...'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Giao dịch ngay hôm nay để tích điểm B-Point và tận hưởng miễn phí kho ưu đã bất ngờ từ Member Rewards bạn nhé!'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Chi tiết thể lệ (Cập nhật ngày 15/03/2023).'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Miễn phí thường niên thẻ thẻ Platinum khi phát sinh tổng doanh số giao dịch từ 2 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Miễn phí thường niên thẻ Classic/Gold khi phát sinh tổng doanh số giao dịch từ 1 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
      ]),
      NotificationModel(date: '22/03/2023', time: '14:55', image: 'https://cdn.vietnambiz.vn/1881912202208555/images/2023/02/21/ngan-hang-viet-nga-20230221171222723.jpeg?width=700', description: [
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/1933/1933691.png', description: 'Đổi quà miễn phí - Đừng bỏ phí! Đổi quà miễn phí'),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/2584/2584606.png', description: 'VRB Membership Reward tặng bạn: '),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png', description: 'Danh mục giao dịch được tích điểm được mở rộng với chuyển tiền quốc tế, đăng ký BRV Smart Kids,...'),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png', description: 'Tích điểm bao la khi mở tài khoản chọn tên, chi tiêu thẻ, Thanh toán Online, Tiết kiệm,...'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Giao dịch ngay hôm nay để tích điểm B-Point và tận hưởng miễn phí kho ưu đã bất ngờ từ Member Rewards bạn nhé!'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Chi tiết thể lệ (Cập nhật ngày 15/03/2023).'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Miễn phí thường niên thẻ thẻ Platinum khi phát sinh tổng doanh số giao dịch từ 2 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Miễn phí thường niên thẻ Classic/Gold khi phát sinh tổng doanh số giao dịch từ 1 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),      ]),
      NotificationModel(date: '22/03/2023', time: '14:55', image: 'https://vrbank.com.vn/Uploads/%E1%BA%A2nh%20b%C3%A0i%20vi%E1%BA%BFt/Poster%20Mobile%20app_A4-02%20(2).jpg',  description: [
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/1933/1933691.png', description: 'Đổi quà miễn phí - Đừng bỏ phí! Đổi quà miễn phí'),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/2584/2584606.png', description: 'VRB Membership Reward tặng bạn: '),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png', description: 'Danh mục giao dịch được tích điểm được mở rộng với chuyển tiền quốc tế, đăng ký BRV Smart Kids,...'),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png', description: 'Tích điểm bao la khi mở tài khoản chọn tên, chi tiêu thẻ, Thanh toán Online, Tiết kiệm,...'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Giao dịch ngay hôm nay để tích điểm B-Point và tận hưởng miễn phí kho ưu đã bất ngờ từ Member Rewards bạn nhé!'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Chi tiết thể lệ (Cập nhật ngày 15/03/2023).'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Miễn phí thường niên thẻ thẻ Platinum khi phát sinh tổng doanh số giao dịch từ 2 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Miễn phí thường niên thẻ Classic/Gold khi phát sinh tổng doanh số giao dịch từ 1 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),      ]),
      NotificationModel(date: '22/03/2023', time: '14:55', image: 'https://haymora.com/upload/images/tai_chinh_ngan_hang/ngan_hang_lien_doanh_viet_-_nga_-_vrb/vrb-doi-ngu-nhan-su-source-dantri.jpg', description: [
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/1933/1933691.png', description: 'Đổi quà miễn phí - Đừng bỏ phí! Đổi quà miễn phí'),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/2584/2584606.png', description: 'VRB Membership Reward tặng bạn: '),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png', description: 'Danh mục giao dịch được tích điểm được mở rộng với chuyển tiền quốc tế, đăng ký BRV Smart Kids,...'),
        DescriptionModel(image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png', description: 'Tích điểm bao la khi mở tài khoản chọn tên, chi tiêu thẻ, Thanh toán Online, Tiết kiệm,...'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Giao dịch ngay hôm nay để tích điểm B-Point và tận hưởng miễn phí kho ưu đã bất ngờ từ Member Rewards bạn nhé!'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Chi tiết thể lệ (Cập nhật ngày 15/03/2023).'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Miễn phí thường niên thẻ thẻ Platinum khi phát sinh tổng doanh số giao dịch từ 2 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
        DescriptionModel(image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png', description: 'Miễn phí thường niên thẻ Classic/Gold khi phát sinh tổng doanh số giao dịch từ 1 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),      ]),
    ];

    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text(
                  NOTIFICATION,
                style: TextStyle(
                    color: clr_black,
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
                        color: clr_black,
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
                      height: 35.w,
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
                              PROMOTIN_1,
                              style: TextStyle(
                                  fontSize: 13.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Tab(
                            child: Text(
                              VOLATILITY,
                              style: TextStyle(
                                  fontSize: 13.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Tab(
                            child: Text(
                              NOTIFI,
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

          body: TabBarView(
            children: [
              NotificationList(list: list, visibleImage: true, visibleIcon: true),
              NotificationList(list: list, visibleImage: false,  visibleIcon: false),
              NotificationList(list: list, visibleImage: false,  visibleIcon: false),
            ],
          ),
        ));
  }

}

