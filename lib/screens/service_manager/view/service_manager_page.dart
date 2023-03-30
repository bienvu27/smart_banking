import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style.dart';
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
              'assets/svg/money_transfer.svg',
          title: 'Chuyển tiền'),
      ServiceFavoriteModel(
          image: 'assets/svg/card_payment.svg',
          title: 'Thanh toán'),
      ServiceFavoriteModel(
          image:
              'assets/svg/bank_cards.svg',
          title: 'Dịch vụ thẻ'),
      ServiceFavoriteModel(
          image:
          'assets/svg/money_box.svg',
          title: 'Tiết kiệm Online'),
      ServiceFavoriteModel(
          image:
          'assets/svg/atm.svg',
          title: 'Rút tiền mặt tại ATM'),
      ServiceFavoriteModel(
          image:
              'assets/svg/cash_in_hand.svg',
          title: 'Tiền vay'),
      ServiceFavoriteModel(
          image:
          'assets/svg/mobile_package_tracking.svg',
          title: 'Nạp tiền điện thoại'),
      ServiceFavoriteModel(
          image:
          'assets/svg/invoice.svg',
          title: 'Bán ngoại tệ'),
      ServiceFavoriteModel(
          image:
          'assets/svg/gift.svg',
          title: 'Tặng quà'),
      ServiceFavoriteModel(
          image:
          'assets/svg/smartphone_approve.svg',
          title: 'Smart OTP'),
      ServiceFavoriteModel(
          image:
          'assets/svg/bank_card_dollar.svg',
          title: 'Chuyển tiền quốc tế')
    ];

    final listInsurance = [
      ServiceFavoriteModel(
          image:
          'assets/svg/insurance_agent.svg',
          title: 'Bảo hiểm BIC'),
      ServiceFavoriteModel(
          image:
          'assets/svg/medical_expenses_insurance.svg',
          title: 'Thanh toán phí bảo hiểm'),
      ServiceFavoriteModel(
          image:
          'assets/svg/insurance_agent.svg',
          title: 'Bảo hiểm nhân thọ VRB MetLife'),
      ServiceFavoriteModel(
          image:
          'assets/svg/medical_expenses_insurance.svg',
          title: 'Bồi thường'),
    ];
    final listStock = [
      ServiceFavoriteModel(
          image:
          'assets/svg/neutral_trading.svg',
          title: 'Mở tài khoản chứng khoán'),
      ServiceFavoriteModel(
          image:
          'assets/svg/stocks.svg',
          title: 'Giao dịch chứng khoán'),
      ServiceFavoriteModel(
          image:
          'assets/svg/futures.svg',
          title: 'Nộp tiền chứng khoán'),
    ];
    final listRegisterService = [
      ServiceFavoriteModel(
          image: 'assets/svg/bank_account.svg',
          title: 'Mở tài khoản như ý'),
      ServiceFavoriteModel(
          image:
          'assets/svg/year_view.svg',
          title: 'Thanh toán định kỳ'),
      ServiceFavoriteModel(
          image:
          'assets/svg/money_transfer.svg',
          title: 'Chuyển tiền định kỳ'),
      ServiceFavoriteModel(
          image: 'assets/svg/construction_mail_open.svg',
          title: 'Đăng ký email thông báo'),
      ServiceFavoriteModel(
          image:
          'assets/svg/technical_support.svg',
          title: 'Đăng ký gói dịch vụ'),
      ServiceFavoriteModel(
          image:
          'assets/svg/restart.svg',
          title: 'Đổi hạn mức giao dịch'),
      ServiceFavoriteModel(
          image: 'assets/svg/payment_history.svg',
          title: 'Biến động số dư'),
      ServiceFavoriteModel(
          image:
          'assets/svg/add_male_user_group.svg',
          title: 'Giới thiệu bạn Thưởng vô hạn'),
      ServiceFavoriteModel(
          image:
          'assets/svg/badge.svg',
          title: 'TK Chọn tên Như ý'),
      ServiceFavoriteModel(
          image:
          'assets/svg/baby_face.svg',
          title: 'Smart Kids'),
    ];
    final listShopping = [
      ServiceFavoriteModel(
          image:
          'assets/svg/plane.svg',
          title: 'Vé máy bay'),
      ServiceFavoriteModel(
        image:
          'assets/svg/hotel.svg',
          title: 'Khách sạn'),
      ServiceFavoriteModel(
          image:
          'assets/svg/carpool.svg',
          title: 'Vé xe'),
      ServiceFavoriteModel(
          image:
          'assets/svg/subway.svg',
          title: 'Vé tàu'),
      ServiceFavoriteModel(
          image: 'assets/svg/fast_cart.svg',
          title: 'Mua sắm VnShop'),
      ServiceFavoriteModel(
          image:
          'assets/svg/train_ticket.svg',
          title: 'Vé xem phim'),
      ServiceFavoriteModel(
          image:
          'assets/svg/flower_bouquet.svg',
          title: 'Đặt hoa'),
      ServiceFavoriteModel(
          image: 'assets/svg/transit.svg',
          title: 'Giao hàng'),
      ServiceFavoriteModel(
          image:
          'assets/svg/taxi.svg',
          title: 'Taxi'),
    ];
    final listCharity = [
      ServiceFavoriteModel(
          image:
          'assets/svg/pill.svg',
          title: 'Ủng hộ quỹ vac-xin'),
      ServiceFavoriteModel(
          image:  'assets/svg/charity.svg',
          title: 'Chuyển tiền từ thiện'),
    ];
    final listSupport = [
      ServiceFavoriteModel(
          image:
          'assets/svg/chart.svg',
          title: 'Báo cáo giao dịch'),
      ServiceFavoriteModel(
          image: 'assets/svg/finance.svg',
          title: 'quản lý tài chính cá nhân'),
      ServiceFavoriteModel(
          image:
          'assets/svg/atm_machine.svg',
          title: 'Tìm kiếm ATM/CN'),
      ServiceFavoriteModel(
          image:
          'assets/svg/interest_rate.svg',
          title: 'Lãi suất'),
      ServiceFavoriteModel(
          image: 'assets/svg/exchange_rate.svg',
          title: 'Tỷ giá'),
      ServiceFavoriteModel(
          image:
          'assets/svg/headset.svg',
          title: 'Hỗ trợ'),
    ];

    return Scaffold(
      appBar: AppBarComponent(
        bgColor: clr_white,
        colorTitle: clr_black,
        colorIcon: clr_black,
        title: SERVICES_MANAGER,
        callback: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (id == 1) ...[
              ServiceList(title: SERVICES_BANK, list: listBank),
              ServiceList(title: SERVICES_INSURANCE, list: listInsurance),
              ServiceList(title: SERVICES_STOCK, list: listStock),
              ServiceList(title: REGISTER_SERVICES, list: listRegisterService),
              ServiceList(title: SHOPPING, list: listShopping),
              ServiceList(title: SERVICE_CHARITY, list: listCharity),
              ServiceList(title: SUPPORT, list: listSupport),
              Container(
                color: Colors.white,
                height: 100.h,
              ),
            ] else if (id == 2) ...[
              Container(
                  color: clr_white,
                  height: Get.size.height,
                  child: ServiceList(title: SERVICES_BANK, list: listBank)),
            ] else if (id == 3) ...[
              Container(
                  color: clr_white,
                  height: Get.size.height,
                  child: ServiceList(title: SERVICES_INSURANCE, list: listInsurance)),
            ] else if (id == 4) ...[
              Container(
                  color: clr_white,
                  height: Get.size.height,
                  child: ServiceList(title: SERVICES_STOCK, list: listStock)),
            ] else if (id == 5) ...[
              Container(
                  color: clr_white,
                  height: Get.size.height,
                  child: ServiceList(title: REGISTER_SERVICES, list: listRegisterService)),
            ] else if (id == 6) ...[
              Container(
                  color: clr_white,
                  height: Get.size.height,
                  child: ServiceList(title: SHOPPING, list: listShopping)),
            ] else if (id == 7) ...[
              Container(
                  color: clr_white,
                  height: Get.size.height,
                  child: ServiceList(title: SERVICE_CHARITY, list: listCharity)),
            ] else if (id == 8) ...[
              Container(
                  color: clr_white,
                  height: Get.size.height,
                  child: ServiceList(title: SUPPORT, list: listSupport)),
            ]
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 20.h,left: 60.w, right: 60.w),
        height: 35.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: button_dropdown_color_bg,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Container(
          alignment: Alignment.center,
          child: DropdownButton(
            underline: const SizedBox(),
            value: selectVal,
            onChanged: (value) {
              setState(() {
                selectVal = value.toString();
              });
            },
            alignment: Alignment.center,
            dropdownColor: button_dropdown_color_bg,
            borderRadius: BorderRadius.circular(20.r),
            icon: Icon(
              Icons.keyboard_arrow_down_sharp,
              color: clr_white,
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
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: clr_white,
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
