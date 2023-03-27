import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_banking/screens/home/model/list_service_model.dart';

import '../components/cover_widget.dart';
import '../components/grid_menu.dart';
import '../components/list_service.dart';
import '../components/service_favorite.dart';
import '../../service_manager/model/service_favorite_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final list = [
    ServiceFavoriteModel(
        image:
            'assets/svg/baby_face.svg',
        title: 'Smart Kids'),
    ServiceFavoriteModel(
        image: 'assets/svg/gift.svg',
        title: 'Tặng quà'),
    ServiceFavoriteModel(
        image: 'assets/svg/bank.svg',
        title: 'Mở tài khoản chọn tên như ý'),
    ServiceFavoriteModel(
        image: 'assets/svg/money_transfer.svg',
        title: 'Chuyển tiền ngoài BIDV đến số tài khoản'),
    ServiceFavoriteModel(
        image: 'assets/svg/mobile_package_tracking.svg',
        title: 'Nạp tiền điện thoại'),
    ServiceFavoriteModel(
        image: 'assets/svg/money_box.svg',
        title: 'Gửi tiết kiệm Online')
  ];

  List<String> images = [
    "https://bidv.com.vn/wps/wcm/connect/eaa9baff-9dde-4230-b284-5845ec0cf233/1/img.png?MOD=AJPERES&CVID=",
    "https://media.vneconomy.vn/w800/images/upload/2022/06/28/f576644e-8a90-4b1f-9216-ca0cd68310dd.jpg",
    "https://www.bidv.com.vn/smartbanking/grandsale2023/grandsale/bfb.jpg"
  ];

  final listService = [
    ListServiceModel(
        'assets/svg/bank.svg',
        'Dịch vụ ngân hàng',
        'Ngân hàng số 24/7 đáp ứng mọi nhu cầu: Chuyển tiền - Thanh toán - Tiền gửi - Tiền vay - Thẻ tín dụng',
        11),
    ListServiceModel(
        'assets/svg/sparkling.svg',
        'Đăng ký dịch vụ',
        'Đăng ký bất kỳ dịch vụ mong muốn chỉ trong vòng vài phút và kết nối bạn bè',
        10),
    ListServiceModel(
        'assets/svg/insurance_agent.svg',
        'Dịch vụ bảo hiểm',
        'Kiến tạo tương lai vững chắc về sức khỏe và tài chính với bảo hiểm nhân thọ và phi nhân thọ ',
        4),
    ListServiceModel(
        'assets/svg/futures.svg',
        'Dịch vụ chứng khoán',
        'Đầu từ linh hoạt thông qua mở tài khoản online và chuyển tiền đầu tư nhanh chóng, chính xác',
        3),
    ListServiceModel(
        'assets/svg/headset.svg',
        'Hỗ trợ khách hàng',
        'Dễ dàng tra cứu thông tin tài khoản và tìm kiếm các thông tin Ngâng hàng hữu ích khác; hỗ trợ tra soát giao dịch và quản lý tài chính cá nhân',
        6),
    ListServiceModel(
        'assets/svg/charity.svg',
        'Từ thiện cùng BIDV',
        'Chung tay cùng BIDV đóng góp vào quỹ từ thiện',
        2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CoverWidget(),
            SizedBox(
              height: 20.h,
            ),
            const GridMenu(),
            SizedBox(
              height: 20.h,
            ),
            ServiceFavorite(list: list),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 10.w, right: 10.w),
              height: 120.h,
              child: PageView.builder(
                  itemCount: images.length,
                  pageSnapping: true,
                  itemBuilder: (context, pagePosition) {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: Image.network(
                          images[pagePosition],
                          fit: BoxFit.fill,
                        ));
                  }),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Quý khách quan tâm dịch vụ gì hôm nay?',
              style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
            ),
            ListService(listService: listService)
          ],
        ),
      ),
    );
  }
}
