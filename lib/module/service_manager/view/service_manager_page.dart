import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../components/app_bar/app_bar_component.dart';
import '../components/services/service_list.dart';
import '../components/services/service_name.dart';
import '../model/service_favorite_model.dart';

class ServiceManager extends StatefulWidget {
  const ServiceManager({Key? key}) : super(key: key);

  @override
  State<ServiceManager> createState() => _ServiceManagerState();
}

class _ServiceManagerState extends State<ServiceManager> {
  List<ServiceName> listItems = [
    ServiceName(id: 1, name: 'Tất cả các dịch vụ'),
    ServiceName(id: 2, name: 'Dịch vụ ngân hàng'),
    ServiceName(id: 3, name: 'Dịch vụ bảo hiểm'),
    ServiceName(id: 4, name: 'Dịch vụ chứng khoán'),
    ServiceName(id: 5, name: 'Đăng ký dịch vụ'),
    ServiceName(id: 6, name: 'Mua sắm'),
    ServiceName(id: 7, name: 'Từ thiện'),
    ServiceName(id: 8, name: 'Hỗ trợ'),
  ];
  String selectVal = "Tất cả các dịch vụ";
  int id = 1;

  @override
  Widget build(BuildContext context) {
    final listBank = [
      ServiceFavoriteModel(
          image:
              'https://e7.pngegg.com/pngimages/15/364/png-clipart-computer-icons-person-user-group-icon-auto-part-rim-thumbnail.png',
          title: 'Smart Kids'),
      ServiceFavoriteModel(image: 'https://cdn-icons-png.flaticon.com/512/3702/3702999.png', title: 'Tặng quà'),
      ServiceFavoriteModel(
          image: 'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png',
          title: 'Mở tài khoản chọn tên như ý'),
      ServiceFavoriteModel(
          image: 'https://icons.veryicon.com/png/o/business/a-set-of-commercial-icons/money-transfer.png',
          title: 'Chuyển tiền ngoài BIDV đến số tài khoản'),
      ServiceFavoriteModel(
          image: 'https://cdn4.iconfinder.com/data/icons/smart-phones-technologies/512/android-phone.png',
          title: 'Nạp tiền điện thoại'),
      ServiceFavoriteModel(
          image: 'https://icon-library.com/images/save-money-icon-png/save-money-icon-png-9.jpg',
          title: 'Gửi tiết kiệm Online'),
      ServiceFavoriteModel(
          image: 'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png',
          title: 'Mở tài khoản chọn tên như ý'),
      ServiceFavoriteModel(
          image: 'https://icons.veryicon.com/png/o/business/a-set-of-commercial-icons/money-transfer.png',
          title: 'Chuyển tiền ngoài BIDV đến số tài khoản'),
      ServiceFavoriteModel(
          image: 'https://cdn4.iconfinder.com/data/icons/smart-phones-technologies/512/android-phone.png',
          title: 'Nạp tiền điện thoại'),
      ServiceFavoriteModel(
          image: 'https://icon-library.com/images/save-money-icon-png/save-money-icon-png-9.jpg',
          title: 'Gửi tiết kiệm Online'),
      ServiceFavoriteModel(
          image: 'https://icon-library.com/images/save-money-icon-png/save-money-icon-png-9.jpg',
          title: 'Gửi tiết kiệm Online')
    ];
    final listInsurance = [
      ServiceFavoriteModel(
          image:
              'https://e7.pngegg.com/pngimages/15/364/png-clipart-computer-icons-person-user-group-icon-auto-part-rim-thumbnail.png',
          title: 'Smart Kids'),
      ServiceFavoriteModel(image: 'https://cdn-icons-png.flaticon.com/512/3702/3702999.png', title: 'Tặng quà'),
      ServiceFavoriteModel(
          image: 'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png',
          title: 'Mở tài khoản chọn tên như ý'),
      ServiceFavoriteModel(
          image: 'https://icons.veryicon.com/png/o/business/a-set-of-commercial-icons/money-transfer.png',
          title: 'Chuyển tiền ngoài BIDV đến số tài khoản'),
    ];
    final listStock = [
      ServiceFavoriteModel(
          image:
              'https://e7.pngegg.com/pngimages/15/364/png-clipart-computer-icons-person-user-group-icon-auto-part-rim-thumbnail.png',
          title: 'Smart Kids'),
      ServiceFavoriteModel(image: 'https://cdn-icons-png.flaticon.com/512/3702/3702999.png', title: 'Tặng quà'),
      ServiceFavoriteModel(
          image: 'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png',
          title: 'Mở tài khoản chọn tên như ý'),
    ];
    final listRegisterService = [
      ServiceFavoriteModel(
          image:
              'https://e7.pngegg.com/pngimages/15/364/png-clipart-computer-icons-person-user-group-icon-auto-part-rim-thumbnail.png',
          title: 'Smart Kids'),
      ServiceFavoriteModel(image: 'https://cdn-icons-png.flaticon.com/512/3702/3702999.png', title: 'Tặng quà'),
      ServiceFavoriteModel(
          image: 'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png',
          title: 'Mở tài khoản chọn tên như ý'),
      ServiceFavoriteModel(
          image:
              'https://e7.pngegg.com/pngimages/15/364/png-clipart-computer-icons-person-user-group-icon-auto-part-rim-thumbnail.png',
          title: 'Smart Kids'),
      ServiceFavoriteModel(image: 'https://cdn-icons-png.flaticon.com/512/3702/3702999.png', title: 'Tặng quà'),
      ServiceFavoriteModel(
          image: 'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png',
          title: 'Mở tài khoản chọn tên như ý'),
      ServiceFavoriteModel(
          image:
              'https://e7.pngegg.com/pngimages/15/364/png-clipart-computer-icons-person-user-group-icon-auto-part-rim-thumbnail.png',
          title: 'Smart Kids'),
      ServiceFavoriteModel(image: 'https://cdn-icons-png.flaticon.com/512/3702/3702999.png', title: 'Tặng quà'),
      ServiceFavoriteModel(
          image: 'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png',
          title: 'Mở tài khoản chọn tên như ý'),
      ServiceFavoriteModel(
          image: 'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png',
          title: 'Mở tài khoản chọn tên như ý'),
    ];
    final listShopping = [
      ServiceFavoriteModel(
          image:
              'https://e7.pngegg.com/pngimages/15/364/png-clipart-computer-icons-person-user-group-icon-auto-part-rim-thumbnail.png',
          title: 'Smart Kids'),
      ServiceFavoriteModel(image: 'https://cdn-icons-png.flaticon.com/512/3702/3702999.png', title: 'Tặng quà'),
      ServiceFavoriteModel(
          image: 'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png',
          title: 'Mở tài khoản chọn tên như ý'),
      ServiceFavoriteModel(
          image:
              'https://e7.pngegg.com/pngimages/15/364/png-clipart-computer-icons-person-user-group-icon-auto-part-rim-thumbnail.png',
          title: 'Smart Kids'),
      ServiceFavoriteModel(image: 'https://cdn-icons-png.flaticon.com/512/3702/3702999.png', title: 'Tặng quà'),
      ServiceFavoriteModel(
          image: 'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png',
          title: 'Mở tài khoản chọn tên như ý'),
      ServiceFavoriteModel(
          image:
              'https://e7.pngegg.com/pngimages/15/364/png-clipart-computer-icons-person-user-group-icon-auto-part-rim-thumbnail.png',
          title: 'Smart Kids'),
      ServiceFavoriteModel(image: 'https://cdn-icons-png.flaticon.com/512/3702/3702999.png', title: 'Tặng quà'),
      ServiceFavoriteModel(
          image: 'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png',
          title: 'Mở tài khoản chọn tên như ý'),
    ];
    final listCharity = [
      ServiceFavoriteModel(
          image:
              'https://e7.pngegg.com/pngimages/15/364/png-clipart-computer-icons-person-user-group-icon-auto-part-rim-thumbnail.png',
          title: 'Smart Kids'),
      ServiceFavoriteModel(image: 'https://cdn-icons-png.flaticon.com/512/3702/3702999.png', title: 'Tặng quà'),
    ];
    final listSupport = [
      ServiceFavoriteModel(
          image:
              'https://e7.pngegg.com/pngimages/15/364/png-clipart-computer-icons-person-user-group-icon-auto-part-rim-thumbnail.png',
          title: 'Smart Kids'),
      ServiceFavoriteModel(image: 'https://cdn-icons-png.flaticon.com/512/3702/3702999.png', title: 'Tặng quà'),
      ServiceFavoriteModel(
          image: 'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png',
          title: 'Mở tài khoản chọn tên như ý'),
      ServiceFavoriteModel(
          image:
              'https://e7.pngegg.com/pngimages/15/364/png-clipart-computer-icons-person-user-group-icon-auto-part-rim-thumbnail.png',
          title: 'Smart Kids'),
      ServiceFavoriteModel(image: 'https://cdn-icons-png.flaticon.com/512/3702/3702999.png', title: 'Tặng quà'),
      ServiceFavoriteModel(
          image: 'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png',
          title: 'Mở tài khoản chọn tên như ý'),
    ];

    return Scaffold(
      appBar: AppBarComponent(
        title: 'Quản lý dịch vụ',
        callback: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (id == 1) ...[
              ServiceList(title: 'Dịch vụ ngân hàng', list: listBank),
              ServiceList(title: 'Dịch vụ bảo hiểm', list: listInsurance),
              ServiceList(title: 'Dịch vụ chứng khoán', list: listStock),
              ServiceList(title: 'Đăng ký dịch vụ', list: listRegisterService),
              ServiceList(title: 'Mua sắm', list: listShopping),
              ServiceList(title: 'Từ thiện', list: listCharity),
              ServiceList(title: 'Hỗ trợ', list: listSupport),
              Container(
                color: Colors.white,
                height: 100.h,
              ),
            ] else if (id == 2) ...[
              ServiceList(title: 'Dịch vụ ngân hàng', list: listBank),
              Container(
                color: Colors.white,
                height: Get.size.height,
              ),
            ] else if (id == 3) ...[
              ServiceList(title: 'Dịch vụ bảo hiểm', list: listInsurance),
              Container(
                color: Colors.white,
                height: Get.size.height,
              ),
            ] else if (id == 4) ...[
              ServiceList(title: 'Dịch vụ chứng khoán', list: listStock),
              Container(
                color: Colors.white,
                height: Get.size.height,
              ),
            ] else if (id == 5) ...[
              ServiceList(title: 'Đăng ký dịch vụ', list: listRegisterService),
              Container(
                color: Colors.white,
                height: Get.size.height,
              ),
            ] else if (id == 6) ...[
              ServiceList(title: 'Mua sắm', list: listShopping),
              Container(
                color: Colors.white,
                height: Get.size.height,
              ),
            ] else if (id == 7) ...[
              ServiceList(title: 'Từ thiện', list: listCharity),
              Container(
                color: Colors.white,
                height: Get.size.height,
              ),
            ] else if (id == 8) ...[
              ServiceList(title: 'Hỗ trợ', list: listSupport),
              Container(
                color: Colors.white,
                height: Get.size.height,
              ),
            ]
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 20.h),
        width: Get.size.width / 2,
        height: 35.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20.r)),
        child: Container(
          alignment: Alignment.center,
          child: DropdownButton(
            underline: const SizedBox(),
            value: selectVal,
            onChanged: (value) {
              setState(() {
                selectVal = value.toString();
                print('Test: $id');
              });
            },
            alignment: Alignment.center,
            dropdownColor: Colors.redAccent,
            borderRadius: BorderRadius.circular(20.r),
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
              size: 30.spMin,
            ),
            items: listItems.map((item) {
              return DropdownMenuItem(
                  onTap: () {
                    id = item.id!;
                  },
                  value: item.name,
                  child: Center(
                    child: Text(
                      item.name ?? '',
                      // '${item.id}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ));
            }).toList(),
          ),
        ),
      ),
    );
  }
}
