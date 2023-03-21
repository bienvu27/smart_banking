import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_banking/module/home/model/list_service_model.dart';

import '../components/cover_widget.dart';
import '../components/grid_menu.dart';
import '../components/list_service.dart';
import '../components/service_favorite.dart';
import '../model/service_favorite_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final list = [
    ServiceFavoriteModel(
        image:
            'https://e7.pngegg.com/pngimages/15/364/png-clipart-computer-icons-person-user-group-icon-auto-part-rim-thumbnail.png',
        title: 'Smart Kids'),
    ServiceFavoriteModel(
        image: 'https://cdn-icons-png.flaticon.com/512/3702/3702999.png',
        title: 'Tặng quà'),
    ServiceFavoriteModel(
        image:
            'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png',
        title: 'Mở tài khoản chọn tên như ý'),
    ServiceFavoriteModel(
        image:
            'https://icons.veryicon.com/png/o/business/a-set-of-commercial-icons/money-transfer.png',
        title: 'Chuyển tiền ngoài BIDV đến số tài khoản'),
    ServiceFavoriteModel(
        image:
            'https://cdn4.iconfinder.com/data/icons/smart-phones-technologies/512/android-phone.png',
        title: 'Nạp tiền điện thoại'),
    ServiceFavoriteModel(
        image:
            'https://icon-library.com/images/save-money-icon-png/save-money-icon-png-9.jpg',
        title: 'Gửi tiết kiệm Online')
  ];

  List<String> images = [
    "https://bidv.com.vn/wps/wcm/connect/eaa9baff-9dde-4230-b284-5845ec0cf233/1/img.png?MOD=AJPERES&CVID=",
    "https://media.vneconomy.vn/w800/images/upload/2022/06/28/f576644e-8a90-4b1f-9216-ca0cd68310dd.jpg",
    "https://www.bidv.com.vn/smartbanking/grandsale2023/grandsale/bfb.jpg"
  ];

  final listService = [
    ListServiceModel(
        'https://cdn-icons-png.flaticon.com/512/66/66455.png',
        'Dịch vụ ngân hàng',
        'Ngân hàng số 24/7 đáp ứng mọi nhu cầu: Chuyển tiền - Thanh toán - Tiền gửi - Tiền vay - Thẻ tín dụng',
        11),
    ListServiceModel(
        'https://icon-library.com/images/stars-icon-png/stars-icon-png-1.jpg',
        'Đăng ký dịch vụ',
        'Đăng ký bất kỳ dịch vụ mong muốn chỉ trong vòng vài phút và kết nối bạn bè',
        10),
    ListServiceModel(
        'https://icons.veryicon.com/png/o/miscellaneous/cbxt/rectangle-3.png',
        'Dịch vụ bảo hiểm',
        'Kiến tạo tương lai vững chắc về sức khỏe và tài chính với bảo hiểm nhân thọ và phi nhân thọ ',
        4),
    ListServiceModel(
        'https://www.clipartmax.com/png/middle/360-3605240_stocks-transparent-background-transparent-stock-icon-png.png',
        'Dịch vụ chứng khoán',
        'Đầu từ linh hoạt thông qua mở tài khoản online và chuyển tiền đầu tư nhanh chóng, chính xác',
        3),
    ListServiceModel(
        'https://icon-library.com/images/headset-icon-transparent/headset-icon-transparent-25.jpg',
        'Hỗ trợ khách hàng',
        'Dễ dàng tra cứu thông tin tài khoản và tìm kiếm các thông tin Ngâng hàng hữu ích khác; hỗ trợ tra soát giao dịch và quản lý tài chính cá nhân',
        6),
    ListServiceModel(
        'https://icon-library.com/images/insurance-icon-png/insurance-icon-png-15.jpg',
        'Từ thiện cùng BIDV',
        'Chung tay cùng BIDV đóng góp vào quỹ từ thiện',
        2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
