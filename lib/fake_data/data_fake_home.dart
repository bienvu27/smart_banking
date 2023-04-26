import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_banking/screens/transfer/models/list_bank_model.dart';
import 'package:smart_banking/screens/user/model/list_available_balances_model.dart';

import '../screens/card_service/model/card_model.dart';
import '../screens/history_transfer/model/history_transfer_model.dart';
import '../screens/home/model/list_service_model.dart';
import '../screens/notification/model/description_model.dart';
import '../screens/notification/model/notification_model.dart';
import '../screens/notification/model/notification_model2.dart';
import '../screens/promotion/model/promotion_model.dart';
import '../screens/service_manager/components/services/service_name.dart';
import '../screens/service_manager/model/service_favorite_model.dart';
import '../screens/transfer/models/BeneficiaryAccount.dart';
import '../screens/transfer/models/list_contacts_model.dart';
import '../screens/transfer/view/tabs/tab2/model/icon_bank_model.dart';

final list = [
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210201.svg', title: 'Chuyển khoản nội bộ'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210202.svg', title: 'Chuyển khoản liên ngân hàng'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210210.svg', title: 'Chuyển khoản nhanh Napas 247'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210102.svg', title: 'Thanh toán hoá đơn'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210502.svg', title: 'Nạp tiền điện thoại'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/220107.svg', title: 'Thông báo ngân hàng')
];

final listCardService = [
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210405.svg', title: 'Phát hành thẻ Online'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210501.svg', title: 'Thanh toán sao kê'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210208.svg', title: 'Chuyển đổi thẻ từ sang thẻ chip'),
];

final listCardService2 = [
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210405.svg', title: 'Phát hành thẻ Online'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210501.svg', title: 'Thanh toán sao kê'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210208.svg', title: 'Chuyển đổi thẻ từ sang thẻ chip'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210102.svg', title: 'Thanh toán viện phí'),
];

final imagesCard = [
  CardModel(image:  "assets/images/card.png", numberCard: "5119 xxxxxxxx 7103", name: "VU XUAN BIEN"),
];


List<String> images = [
  "assets/images/list_images/image_3.jpg",
  "assets/images/list_images/image_2.jpg",
  "assets/images/list_images/image_1.jpg",
];

List<String> imagesCardService = [
  "assets/images/list_images/image_7.jpg",
  "assets/images/list_images/image_8.png",
];

final listService = [
  ListServiceModel(
      2,
      'assets/svg/icon_gradient/210201.svg',
      'Dịch vụ ngân hàng',
      '- Dịch vụ ngân hàng: Ngân hàng số 24/7 đáp ứng mọi nhu cầu: Chuyển tiền - Thanh toán - Tiền gửi - Tiền vay - Thẻ ...',
      5),
  ListServiceModel(5,'assets/svg/icon_gradient/210423.svg', 'Đăng ký dịch vụ',
      '- Đăng ký dịch vụ: Đăng ký dịch vụ mong muốn chỉ trong vài phút và dễ dàng kết nối bạn bè ...', 5),
  ListServiceModel(
    8,
      'assets/svg/icon_gradient/220102.svg',
      'Hỗ trợ',
      '- Hỗ trợ khách hàng: Dễ dàng tra cứu thông tin tài khoản và thông tin Ngân hàng hữu ích khác, hỗ trợ tra soát giao dịch và tài chính cá nhân ...',
      5),
  ListServiceModel(3,'assets/svg/icon_gradient/211004.svg', 'Dịch vụ bảo hiểm',
      'Kiến tạo tương lai vững chắc về sức khoẻ và tài chính với bảo hiểm nhân thọ và phi nhân thọ', 5),
];

final listContacts = [
  ListContactsModel(
    image: 'assets/images/vrbank.png',
    name: 'NGUYEN DUC VUONG',
    numberAccount: '27910000492884',
    nameBank: 'VRBANK',
    money: '500.000',
  ),
  ListContactsModel(
    image: 'assets/images/vrbank.png',
    name: 'NGUYEN MANH HAI',
    numberAccount: '2791000049444',
    nameBank: 'VRBANK',
    money: '4.000.000',
  ),
  ListContactsModel(
    image: 'assets/images/vrbank.png',
    name: 'TAO VAN TRUONG',
    numberAccount: '27910000492994',
    nameBank: 'VRBANK',
    money: '600.000',
  ),
  ListContactsModel(
    image: 'assets/images/vrbank.png',
    name: 'HOANG XUAN MANH',
    numberAccount: '27910000492889',
    nameBank: 'VRBANK',
    money: '100.000',
  ),
  ListContactsModel(
    image: 'assets/images/vrbank.png',
    name: 'NGUYEN QUANG HAI',
    numberAccount: '27910000422884',
    nameBank: 'VRBANK',
    money: '4.000.000',
  ),
  ListContactsModel(
    image: 'assets/images/vrbank.png',
    name: 'BUI XUAN HUAN',
    numberAccount: '27910000251484',
    nameBank: 'VRBANK',
    money: '8.000.000',
  ),
  ListContactsModel(
    image: 'assets/images/vrbank.png',
    name: 'VU MANH HIEN',
    numberAccount: '27910000492884',
    nameBank: 'VRBANK',
    money: '10.000.000',
  ),
];

final listContactsSameOwner = [
  ListContactsModel(
    image: 'assets/images/vrbank.png',
    name: 'VU XUAN BIEN',
    numberAccount: '22210004128293',
    nameBank: 'VRBANK',
    money: '500.000',
  ),
  ListContactsModel(
    image: 'assets/images/vrbank.png',
    name: 'VU XUAN BIEN',
    numberAccount: '22210004125524',
    nameBank: 'VRBANK',
    money: '4.000.000',
  ),
];

final listContacts2 = [
  ListContactsModel(
    image: 'assets/images/icons_bank/icon_agribank.webp',
    name: 'NGUYEN DUC VUONG',
    numberAccount: '27910000492884',
    nameBank: 'Agribank',
    money: '',
  ),
  ListContactsModel(
    image: 'assets/images/icons_bank/icon_bidv.webp',
    name: 'HA HONG HIEU',
    numberAccount: '27910000492884',
    nameBank: 'BIDV',
    money: '',
  ),
  ListContactsModel(
    image: 'assets/images/icons_bank/icon_mbbank.webp',
    name: 'DUONG VAN TIN',
    numberAccount: '27910000492884',
    nameBank: 'MBBANK',
    money: '',
  ),
  ListContactsModel(
    image: 'assets/images/icons_bank/icon_tpbank.webp',
    name: 'BUI ANH TUAN',
    numberAccount: '27910000492884',
    nameBank: 'TPBANK',
    money: '',
  ),
  ListContactsModel(
    image: 'assets/images/icons_bank/icon_vietcombank.webp',
    name: 'NGUYEN THI THU HA',
    numberAccount: '27910000492884',
    nameBank: 'VIETCOMBANK',
    money: '',
  ),
  ListContactsModel(
    image: 'assets/images/icons_bank/icon_vpbank.webp',
    name: 'BUI LONG VU',
    numberAccount: '27910000492884',
    nameBank: 'VPBANK',
    money: '',
  ),
  ListContactsModel(
    image: 'assets/images/icons_bank/icon_vpbank.webp',
    name: 'BUI LONG VU',
    numberAccount: '27910000492884',
    nameBank: 'VPBANK',
    money: '',
  ),
];

final listImageBank = [
  IconBankModel(image: 'assets/images/icons_bank/icon_agribank.webp'),
  IconBankModel(image: 'assets/images/icons_bank/icon_bidv.webp'),
  IconBankModel(image: 'assets/images/icons_bank/icon_mbbank.webp'),
  IconBankModel(image: 'assets/images/icons_bank/icon_tpbank.webp'),
  IconBankModel(image: 'assets/images/icons_bank/icon_vietcombank.webp'),
  IconBankModel(image: 'assets/images/icons_bank/icon_vpbank.webp'),
];

final listPromotion = [
  PromotionModel(
      image:
          'assets/images/list_images/image_9.jpg',
      title: 'Nạp tiền điện thoại mệnh giá 10.000 VNĐ',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image: 'assets/images/list_images/image_11.jpg',
      title: 'Hoàn tiền',
      subTitle: '31/12/2024',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image: 'assets/images/list_images/image_10.png',
      title: 'Nạp tiền tài khoản giao thông',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image: 'assets/images/list_images/image_12.jpg',
      title: 'Thẻ quà tặng Phuc Long',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image:
          'assets/images/list_images/image_13.png',
      title: 'Quà tặng Highlands Coffe',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image: 'assets/images/list_images/image_14.jpg',
      title: 'Mã giảm giá 15.000 VND khi đặt Vé xem phim',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image:
          'assets/images/list_images/image_15.jpg',
      title: 'Thẻ quà tặng GoGi House',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image: 'assets/images/list_images/image_16.png',
      title: 'Quà tặng Ding Tea',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image: 'assets/images/list_images/image_9.jpg',
      title: 'Nạp tiền điện thoại mệnh giá 50.000 VNĐ',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image: 'assets/images/list_images/image_9.jpg',
      title: 'Nạp tiền điện thoại mệnh giá 100.000 VNĐ',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
];

final listNoti = [
  NotificationModel(
      date: '22/03/2023',
      time: '14:55',
      image:
          'assets/images/list_images/image_16.jpg',
      description: [
        DescriptionModel(
            image: 'assets/images/emoji/emoji_1.png',
            description: 'ORDER THẢ GA TRÊN BEAMIN - NHẬN 175K TỪ THẺ ATM CỦA VRB!'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_2.png',
            description: 'Gió mùa đã về, gấu có thể không có, nhưng nhất định phải order trên Beamin để nhận ưu đãi 175K với thẻ ATM của VRB!'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_3.png',
            description:
                'Cụ thể với mỗi đơn đặt đồ ăn từ 100k tại BAEMIN, nhập ngay mã voucher “NAPAS35” để được giảm 35K khi thanh toán bằng thẻ ATM của VRB qua cổng thanh toán NAPAS'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_3.png',
            description: 'ĐẶC BIỆT: x 5 lần sử dụng voucher trong suốt thời gian áp dụng chương trình từ nay đến hết 15/12/2021.'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_4.png',
            description:
                'Còn chờ chi mà không order đồ ăn thả ga trên Beamin ngay hôm nay!'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_4.png',
            description: 'Ghé ngay chi nhánh VRB gần nhất để mở thẻ và đón chờ các “cơn mưa ưu đãi" nhé!'),
      ]),
  NotificationModel(
      date: '22/03/2023',
      time: '14:55',
      image:
          'assets/images/list_images/image_17.jpg',
      description: [
        DescriptionModel(
            image: 'assets/images/emoji/emoji_1.png',
            description: 'VRB - NGƯỜI BẠN ĐỒNG HÀNH QUA NĂM THÁNG'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_1.png',
            description: 'Đi qua hành trình 15 năm với những bước chân kiên định trong phương châm “lấy khách hàng làm trọng tâm”, VRB đã dành trọn tâm huyết, khát vọng để tạo ra những sản phẩm, giải pháp vượt trội về tính năng, chất lượng, đồng thời để lại nhiều dấu ấn đối với khách hàng:'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_3.png',
            description:
                'Đạt được nhiều giải thưởng uy tín trong nước và quốc tế: Danh hiệu “Top 500 Doanh nghiệp triển vọng xuất sắc nhất Việt Nam” (2016); Giải thưởng “Ngân hàng có sản phẩm/ dịch vụ sáng tạo tiêu biểu” (2019); Danh hiệu “Nhãn hiệu hàng đầu Việt Nam - Sản phẩm vàng, Dịch vụ vàng” (2020); “Xếp hạng ở mức B2 BCA triển vọng ổn định” theo đánh giá của Moody’s về tiền gửi dài hạn và nhà phát hành dài hạn (2021)...'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_3.png',
            description: 'Cung cấp các sản phẩm, dịch vụ đa dạng, cam kết mang đến những giải pháp hỗ trợ tốt nhất về mặt tài chính cho khách hàng.'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_3.png',
            description:
                'Tích cực tổ chức và tham gia các phong trào thiện nguyện, góp phần vào lợi ích chung của toàn xã hội.'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_3.png',
            description: 'Vượt qua bao khó khăn kể từ ngày đầu thành lập, trên con đường thực hiện sứ mệnh của mình, VRB đã luôn song hành cùng khách hàng với vai trò là một người bạn tận tâm, thân thiết.'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_3.png',
            description:
                '15 năm lắng nghe, thấu hiểu và hành động của VRB - 15 năm đồng hành cùng hàng vạn cá nhân, doanh nghiệp để mang đến một tương lai tốt đẹp hơn.'),
      ]),
  NotificationModel(
      date: '22/03/2023',
      time: '14:55',
      image:
          'assets/images/list_images/image_18.jpg',
      description: [
        DescriptionModel(
            image: 'assets/images/emoji/emoji_1.png',
            description: 'Đổi quà miễn phí - Đừng bỏ phí! Đổi quà miễn phí'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_1.png',
            description: 'VRB Membership Reward tặng bạn: '),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_3.png',
            description:
                'Danh mục giao dịch được tích điểm được mở rộng với chuyển tiền quốc tế, đăng ký BRV Smart Kids,...'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_3.png',
            description: 'Tích điểm bao la khi mở tài khoản chọn tên, chi tiêu thẻ, Thanh toán Online, Tiết kiệm,...'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_3.png',
            description:
                'Giao dịch ngay hôm nay để tích điểm B-Point và tận hưởng miễn phí kho ưu đã bất ngờ từ Member Rewards bạn nhé!'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_3.png',
            description: 'Chi tiết thể lệ (Cập nhật ngày 15/03/2023).'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_3.png',
            description:
                'Miễn phí thường niên thẻ thẻ Platinum khi phát sinh tổng doanh số giao dịch từ 2 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
        DescriptionModel(
            image: 'assets/images/emoji/emoji_3.png',
            description:
                'Miễn phí thường niên thẻ Classic/Gold khi phát sinh tổng doanh số giao dịch từ 1 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
      ]),
];

final listBank = [
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/2102.svg', title: 'Chuyển tiền'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/2108.svg', title: 'Thanh toán'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210405.svg', title: 'Dịch vụ thẻ'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/2106.svg', title: 'Tiết kiệm Online'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210608.svg', title: 'Rút tiền mặt tại ATM'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210614.svg', title: 'Tiền vay'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210804.svg', title: 'Nạp tiền điện thoại'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210102.svg', title: 'Bán ngoại tệ'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210902.svg', title: 'Tặng quà'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210502.svg', title: 'Smart OTP'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210208.svg', title: 'Chuyển tiền quốc tế')
];

final listInsurance = [
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/211009.svg', title: 'Bảo hiểm BIC'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/211004.svg', title: 'Thanh toán phí bảo hiểm'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/211003.svg', title: 'Bảo hiểm nhân thọ VRB MetLife'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/211001.svg', title: 'Bồi thường'),
];
final listStock = [
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/2113.svg', title: 'Mở tài khoản chứng khoán'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/211301.svg', title: 'Giao dịch chứng khoán'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/211303.svg', title: 'Nộp tiền chứng khoán'),
];

final listRegisterService = [
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210201.svg', title: 'Mở tài khoản như ý'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210901.svg', title: 'Thanh toán định kỳ'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210607.svg', title: 'Chuyển tiền định kỳ'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/220108.svg', title: 'Đăng ký email thông báo'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210501.svg', title: 'Đăng ký gói dịch vụ'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210502.svg', title: 'Đổi hạn mức giao dịch'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210423.svg', title: 'Biến động số dư'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210902.svg', title: 'Giới thiệu bạn Thưởng vô hạn'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210201.svg', title: 'TK Chọn tên Như ý'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/2109.svg', title: 'Smart Kids'),
];

final listShopping = [
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210102.svg', title: 'Vé máy bay'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210212.svg', title: 'Khách sạn'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210201.svg', title: 'Vé xe'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210202.svg', title: 'Vé tàu'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210203.svg', title: 'Mua sắm VnShop'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210204.svg', title: 'Vé xem phim'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210206.svg', title: 'Đặt hoa'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210208.svg', title: 'Giao hàng'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210210.svg', title: 'Taxi'),
];
final listCharity = [
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210804.svg', title: 'Ủng hộ quỹ vac-xin'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210608.svg', title: 'Chuyển tiền từ thiện'),
];
final listSupport = [
  ServiceFavoriteModel(id: 1, image: 'assets/svg/icon_gradient/210901.svg', title: 'Báo cáo giao dịch'),
  ServiceFavoriteModel(id: 2, image: 'assets/svg/icon_gradient/210902.svg', title: 'quản lý tài chính cá nhân'),
  ServiceFavoriteModel(id: 3, image: 'assets/svg/icon_gradient/210904.svg', title: 'Tìm kiếm ATM/CN'),
  ServiceFavoriteModel(id: 4, image: 'assets/svg/icon_gradient/211001.svg', title: 'Lãi suất'),
  ServiceFavoriteModel(id: 5, image: 'assets/svg/icon_gradient/211002.svg', title: 'Tỷ giá'),
  ServiceFavoriteModel(id: 6, image: 'assets/svg/icon_gradient/211003.svg', title: 'Hỗ trợ'),
];

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

final listBanks = [
  ListBankModel(
    image: 'assets/images/icons_bank/icon_agribank.webp',
    title: 'Agribank',
    subTitle: 'NH Nông nghiệp và Phát triển nông thôn VN',
  ),
  ListBankModel(
    image: 'assets/images/icons_bank/icon_bidv.webp',
    title: 'BIDV',
    subTitle: 'NHTMCP Đầu tư và phát triển VN',
  ),
  ListBankModel(
    image: 'assets/images/icons_bank/icon_mbbank.webp',
    title: 'MBbank',
    subTitle: 'NHTMCP Quân đội',
  ),
  ListBankModel(
    image: 'assets/images/icons_bank/icon_tpbank.webp',
    title: 'TPBank',
    subTitle: 'NHTMCP Tiền Phong',
  ),
  ListBankModel(
    image: 'assets/images/icons_bank/icon_vietcombank.webp',
    title: 'Vietcombank',
    subTitle: 'NHTMCP Ngoại thương',
  ),
  ListBankModel(
    image: 'assets/images/icons_bank/icon_vpbank.webp',
    title: 'VPBank',
    subTitle: 'NHTMCP Việt Nam Thịnh vượng',
  ),
];

List<BeneficiaryAccount> beneficiaryList = [
  BeneficiaryAccount(
    account: "22210004128293",
    surplus: "25.000"
  ),
  BeneficiaryAccount(
      account: "22210004125524",
      surplus: "30.000"
  ),
];



List listAvailableBalances = [
  AvailableBalancesModel(number: 48010001079251, defaultCode: true, money: '50000000'),
  AvailableBalancesModel(number: 48010001079252, defaultCode: false, money: '150000000'),
];
List listAvailableBalances2 = [
  AvailableBalancesModel(number: 1801000666888, defaultCode: true, money: '20000'),
];

List historyTransfer = [
  HistoryTransferModel(
    cardNumber: '18000526585215',
    dateTime: '08/04/2023 10:20:41',
    money: 70000000,
    tradingCode: 847103566,
    plus: true,
  ),
  HistoryTransferModel(
    cardNumber: '18000526585237',
    dateTime: '08/04/2023 12:20:41',
    money: 50000000,
    tradingCode: 847107636,
    plus: false,
  ),
  HistoryTransferModel(
    cardNumber: '18000526585215',
    dateTime: '08/04/2023 17:20:41',
    money: 30000000,
    tradingCode: 847233567,
    plus: true,
  ),

];

List historyTransferIn = [
  HistoryTransferModel(
    cardNumber: '18000526585215',
    dateTime: '08/04/2023 10:20:41',
    money: 70000000,
    tradingCode: 847103566,
    plus: true,
  ),
  HistoryTransferModel(
    cardNumber: '18000526585215',
    dateTime: '08/04/2023 17:20:41',
    money: 30000000,
    tradingCode: 847233567,
    plus: false,
  ),

];

List historyTransferOut = [
  HistoryTransferModel(
    cardNumber: '18000526585237',
    dateTime: '08/04/2023 12:20:41',
    money: 50000000,
    tradingCode: 847107636,
    plus: false,
  ),


];

final listNotification2 = [
  NotificationModel2(
      dateTime: '15:04 10/04/2023',
      numberUser: 21610000542522,
      money: '5,000',
      nameFriends: 'NGUYEN CAO CUONG',
      numberUser2: 21610000541111),

  NotificationModel2(
      dateTime: '17:04 01/04/2023',
      numberUser: 21610000542522,
      money: '100,000',
      nameFriends: 'CAO THI CHAM',
      numberUser2: 21610000542222),
];


class SearchHomeTestModel {
  int? id;
  IconData? icon;
  String? title;

  SearchHomeTestModel({this.id, this.icon, this.title});

}

final listSearchHomeTest = [
  SearchHomeTestModel(icon: Icons.settings, title: 'Các chức năng, dịch vụ trong ứng dụng SmartBanking'),
  SearchHomeTestModel(icon: Icons.account_box_rounded, title: 'Danh bạ thụ hưởng chuyển tiền'),
  SearchHomeTestModel(icon: Icons.sticky_note_2_outlined, title: 'Mẫu thanh toán hóa đơn'),
  SearchHomeTestModel(icon: Icons.monetization_on, title: 'Ngân hàng chuyển tiền ngoài BIDV'),
];


class UserManualModel {
  int? id;
  IconData? icon;
  String? title;
  String? content;

  UserManualModel({this.id, this.icon, this.title, this.content});

}

final listUserManual = [
  UserManualModel(icon: Icons.person_outline, title: 'Chuyển đổi user', content: "Hướng dẫn chuyển đổi cho khách hàng có user SmartBanking cũ"),
  UserManualModel(icon: Icons.login, title: 'Đăng nhập', content: "Đăng nhập trên App SmartBanking"),
  UserManualModel(icon: Icons.monetization_on_outlined, title: 'Dịch vụ tài chính', content: "Bao gồm những chức năng tài chính: tài khoản, chuyển tiền, QR Pay, Nạp tiền..."),
  UserManualModel(icon: Icons.credit_card_outlined, title: 'Dịch vụ thẻ', content: "Đăng nhập trên App SmartBanking"),
  UserManualModel(icon: Icons.shopping_cart_outlined, title: 'Dịch vụ tiện ích tiêu dùng', content: "Cung cấp tiện ích đặt vé xem phim, vé máy bay, đặt phòng khách sạn..."),
  UserManualModel(icon: Icons.keyboard_alt_outlined, title: 'BIDV Smartkeyboard', content: "Dùng trên thiết bị dùng hệ điều hành IOS, thực hiện giao dịch ngay trên ứng dụng chat..."),
  UserManualModel(icon: Icons.watch_outlined, title: 'Smartbanking trên Apple Watch', content: "Dùng Apple Watch thực hiện các tính năng chuyển tiền. nạp tiền điện thoại, thanh toán hóa đơn..."),
  UserManualModel(icon: Icons.settings, title: 'Các chức năng cài đặt', content: "Cung cấp các chức năng hỗ trợ về thay đổi mật khẩu, cài đặt vân tay, thay đổi..."),
];






