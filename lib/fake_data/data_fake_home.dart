import 'package:smart_banking/screens/transfer/models/list_bank_model.dart';
import 'package:smart_banking/screens/user/model/list_available_balances_model.dart';

import '../screens/history_transfer/model/history_transfer_model.dart';
import '../screens/home/model/list_service_model.dart';
import '../screens/notification/model/description_model.dart';
import '../screens/notification/model/notification_model.dart';
import '../screens/promotion/model/promotion_model.dart';
import '../screens/service_manager/components/services/service_name.dart';
import '../screens/service_manager/model/service_favorite_model.dart';
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

List<String> images = [
  "assets/images/list_images/image_3.jpg",
  "assets/images/list_images/image_2.jpg",
  "assets/images/list_images/image_1.jpg",
];

final listService = [
  ListServiceModel(
      'assets/svg/icon_gradient/210201.svg',
      'Dịch vụ ngân hàng',
      '- Dịch vụ ngân hàng: Ngân hàng số 24/7 đáp ứng mọi nhu cầu: Chuyển tiền - Thanh toán - Tiền gửi - Tiền vay - Thẻ ...',
      5),
  ListServiceModel('assets/svg/icon_gradient/210423.svg', 'Đăng ký dịch vụ',
      '- Đăng ký dịch vụ: Đăng ký dịch vụ mong muốn chỉ trong vài phút và dễ dàng kết nối bạn bè ...', 5),
  ListServiceModel(
      'assets/svg/icon_gradient/220102.svg',
      'Hỗ trợ khách hàng',
      '- Hỗ trợ khách hàng: Dễ dàng tra cứu thông tin tài khoản và thông tin Ngân hàng hữu ích khác, hỗ trợ tra soát giao dịch và tài chính cá nhân ...',
      5),
  ListServiceModel('assets/svg/icon_gradient/2202.svg', 'Cài đặt',
      '- Cài đặt: Cài đặt các mẫu chuyển tiền, mẫu thanh toán tiện lợi nhanh chóng, đổi mật khẩu ...', 5),
];

final listContacts = [
  ListContactsModel(
    image: 'assets/images/vrbank.png',
    name: 'VU XUAN BIEN',
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


final listContacts2 = [
  ListContactsModel(
    image: 'assets/images/icons_bank/icon_agribank.webp',
    name: 'VU XUAN BIEN',
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
          'https://play-lh.googleusercontent.com/Hf7XwXAW9ringub6PP_scB6sN8n6yrR1Q-8p9fa_iTTQhskZCg6tvwJhpPx1pSmcZ8at=w526-h296-rw',
      title: 'Nạp tiền điện thoại mệnh giá 10.000 VNĐ',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image: 'https://media.vneconomy.vn/images/upload/2022/03/01/ngan-hang-viet-nga.jpeg',
      title: 'Nạp tiền điện thoại mệnh giá 10.000 VNĐ',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image: 'https://image.mekongasean.vn/1200x630/Uploaded/2023/mrwqwqdwp/2022_03_02/viet-nga-5013.jpeg',
      title: 'Nạp tiền điện thoại mệnh giá 10.000 VNĐ',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image: 'https://cdn1.nhatrangtoday.vn/images/photos/Ngan-hang-Viet-Nga-VRB-3.jpg',
      title: 'Nạp tiền điện thoại mệnh giá 10.000 VNĐ',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image:
          'https://play-lh.googleusercontent.com/Hf7XwXAW9ringub6PP_scB6sN8n6yrR1Q-8p9fa_iTTQhskZCg6tvwJhpPx1pSmcZ8at=w526-h296-rw',
      title: 'Nạp tiền điện thoại mệnh giá 10.000 VNĐ',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image: 'https://cdn1.nhatrangtoday.vn/images/photos/Ngan-hang-Viet-Nga-VRB-5.jpg',
      title: 'Nạp tiền điện thoại mệnh giá 10.000 VNĐ',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image:
          'https://i1-kinhdoanh.vnecdn.net/2021/12/10/vrb-anh-k-text-2498-1639108454.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=RdZ1tnbf7FCSmdpRjMnW8w',
      title: 'Nạp tiền điện thoại mệnh giá 10.000 VNĐ',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image: 'https://cashgo.vn/wp-content/uploads/2021/06/vrb-la-ngan-hang-gi.jpg',
      title: 'Nạp tiền điện thoại mệnh giá 10.000 VNĐ',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image: 'https://image.mekongasean.vn/1200x630/Uploaded/2023/mrwqwqdwp/2022_03_02/viet-nga-5013.jpeg',
      title: 'Nạp tiền điện thoại mệnh giá 10.000 VNĐ',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
  PromotionModel(
      image: 'https://vtv1.mediacdn.vn/thumb_w/650/2019/9/12/1-1568263433284635129991.jpg',
      title: 'Nạp tiền điện thoại mệnh giá 10.000 VNĐ',
      subTitle: '31/12/2023',
      point: '50.000',
      like: 5360),
];

final listNoti = [
  NotificationModel(
      date: '22/03/2023',
      time: '14:55',
      image:
          'https://cdn.vietnambiz.vn/1881912202208555/images/2023/02/21/ngan-hang-viet-nga-20230221171222723.jpeg?width=700',
      description: [
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/1933/1933691.png',
            description: 'Đổi quà miễn phí - Đừng bỏ phí! Đổi quà miễn phí'),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/2584/2584606.png',
            description: 'VRB Membership Reward tặng bạn: '),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png',
            description:
                'Danh mục giao dịch được tích điểm được mở rộng với chuyển tiền quốc tế, đăng ký BRV Smart Kids,...'),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png',
            description: 'Tích điểm bao la khi mở tài khoản chọn tên, chi tiêu thẻ, Thanh toán Online, Tiết kiệm,...'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Giao dịch ngay hôm nay để tích điểm B-Point và tận hưởng miễn phí kho ưu đã bất ngờ từ Member Rewards bạn nhé!'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description: 'Chi tiết thể lệ (Cập nhật ngày 15/03/2023).'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Miễn phí thường niên thẻ thẻ Platinum khi phát sinh tổng doanh số giao dịch từ 2 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Miễn phí thường niên thẻ Classic/Gold khi phát sinh tổng doanh số giao dịch từ 1 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
      ]),
  NotificationModel(
      date: '22/03/2023',
      time: '14:55',
      image:
          'https://vrbank.com.vn/Uploads/%E1%BA%A2nh%20b%C3%A0i%20vi%E1%BA%BFt/Poster%20Mobile%20app_A4-02%20(2).jpg',
      description: [
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/1933/1933691.png',
            description: 'Đổi quà miễn phí - Đừng bỏ phí! Đổi quà miễn phí'),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/2584/2584606.png',
            description: 'VRB Membership Reward tặng bạn: '),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png',
            description:
                'Danh mục giao dịch được tích điểm được mở rộng với chuyển tiền quốc tế, đăng ký BRV Smart Kids,...'),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png',
            description: 'Tích điểm bao la khi mở tài khoản chọn tên, chi tiêu thẻ, Thanh toán Online, Tiết kiệm,...'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Giao dịch ngay hôm nay để tích điểm B-Point và tận hưởng miễn phí kho ưu đã bất ngờ từ Member Rewards bạn nhé!'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description: 'Chi tiết thể lệ (Cập nhật ngày 15/03/2023).'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Miễn phí thường niên thẻ thẻ Platinum khi phát sinh tổng doanh số giao dịch từ 2 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Miễn phí thường niên thẻ Classic/Gold khi phát sinh tổng doanh số giao dịch từ 1 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
      ]),
  NotificationModel(
      date: '22/03/2023',
      time: '14:55',
      image:
          'https://haymora.com/upload/images/tai_chinh_ngan_hang/ngan_hang_lien_doanh_viet_-_nga_-_vrb/vrb-doi-ngu-nhan-su-source-dantri.jpg',
      description: [
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/1933/1933691.png',
            description: 'Đổi quà miễn phí - Đừng bỏ phí! Đổi quà miễn phí'),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/2584/2584606.png',
            description: 'VRB Membership Reward tặng bạn: '),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png',
            description:
                'Danh mục giao dịch được tích điểm được mở rộng với chuyển tiền quốc tế, đăng ký BRV Smart Kids,...'),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png',
            description: 'Tích điểm bao la khi mở tài khoản chọn tên, chi tiêu thẻ, Thanh toán Online, Tiết kiệm,...'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Giao dịch ngay hôm nay để tích điểm B-Point và tận hưởng miễn phí kho ưu đã bất ngờ từ Member Rewards bạn nhé!'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description: 'Chi tiết thể lệ (Cập nhật ngày 15/03/2023).'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Miễn phí thường niên thẻ thẻ Platinum khi phát sinh tổng doanh số giao dịch từ 2 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Miễn phí thường niên thẻ Classic/Gold khi phát sinh tổng doanh số giao dịch từ 1 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
      ]),
  NotificationModel(
      date: '22/03/2023',
      time: '14:55',
      image:
          'https://cdn.vietnambiz.vn/1881912202208555/images/2023/02/21/ngan-hang-viet-nga-20230221171222723.jpeg?width=700',
      description: [
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/1933/1933691.png',
            description: 'Đổi quà miễn phí - Đừng bỏ phí! Đổi quà miễn phí'),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/2584/2584606.png',
            description: 'VRB Membership Reward tặng bạn: '),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png',
            description:
                'Danh mục giao dịch được tích điểm được mở rộng với chuyển tiền quốc tế, đăng ký BRV Smart Kids,...'),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png',
            description: 'Tích điểm bao la khi mở tài khoản chọn tên, chi tiêu thẻ, Thanh toán Online, Tiết kiệm,...'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Giao dịch ngay hôm nay để tích điểm B-Point và tận hưởng miễn phí kho ưu đã bất ngờ từ Member Rewards bạn nhé!'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description: 'Chi tiết thể lệ (Cập nhật ngày 15/03/2023).'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Miễn phí thường niên thẻ thẻ Platinum khi phát sinh tổng doanh số giao dịch từ 2 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Miễn phí thường niên thẻ Classic/Gold khi phát sinh tổng doanh số giao dịch từ 1 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
      ]),
  NotificationModel(
      date: '22/03/2023',
      time: '14:55',
      image:
          'https://vrbank.com.vn/Uploads/%E1%BA%A2nh%20b%C3%A0i%20vi%E1%BA%BFt/Poster%20Mobile%20app_A4-02%20(2).jpg',
      description: [
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/1933/1933691.png',
            description: 'Đổi quà miễn phí - Đừng bỏ phí! Đổi quà miễn phí'),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/2584/2584606.png',
            description: 'VRB Membership Reward tặng bạn: '),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png',
            description:
                'Danh mục giao dịch được tích điểm được mở rộng với chuyển tiền quốc tế, đăng ký BRV Smart Kids,...'),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png',
            description: 'Tích điểm bao la khi mở tài khoản chọn tên, chi tiêu thẻ, Thanh toán Online, Tiết kiệm,...'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Giao dịch ngay hôm nay để tích điểm B-Point và tận hưởng miễn phí kho ưu đã bất ngờ từ Member Rewards bạn nhé!'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description: 'Chi tiết thể lệ (Cập nhật ngày 15/03/2023).'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Miễn phí thường niên thẻ thẻ Platinum khi phát sinh tổng doanh số giao dịch từ 2 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Miễn phí thường niên thẻ Classic/Gold khi phát sinh tổng doanh số giao dịch từ 1 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
      ]),
  NotificationModel(
      date: '22/03/2023',
      time: '14:55',
      image:
          'https://haymora.com/upload/images/tai_chinh_ngan_hang/ngan_hang_lien_doanh_viet_-_nga_-_vrb/vrb-doi-ngu-nhan-su-source-dantri.jpg',
      description: [
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/1933/1933691.png',
            description: 'Đổi quà miễn phí - Đừng bỏ phí! Đổi quà miễn phí'),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/2584/2584606.png',
            description: 'VRB Membership Reward tặng bạn: '),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png',
            description:
                'Danh mục giao dịch được tích điểm được mở rộng với chuyển tiền quốc tế, đăng ký BRV Smart Kids,...'),
        DescriptionModel(
            image: 'https://cdn-icons-png.flaticon.com/512/4160/4160724.png',
            description: 'Tích điểm bao la khi mở tài khoản chọn tên, chi tiêu thẻ, Thanh toán Online, Tiết kiệm,...'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Giao dịch ngay hôm nay để tích điểm B-Point và tận hưởng miễn phí kho ưu đã bất ngờ từ Member Rewards bạn nhé!'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description: 'Chi tiết thể lệ (Cập nhật ngày 15/03/2023).'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
            description:
                'Miễn phí thường niên thẻ thẻ Platinum khi phát sinh tổng doanh số giao dịch từ 2 triệu đồng trong vòng 30 ngày kể từ ngày phát hành thẻ.'),
        DescriptionModel(
            image: 'https://www.emojimeaning.com/img/img-messenger-64/1f449.png',
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
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210901.svg', title: 'Báo cáo giao dịch'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210902.svg', title: 'quản lý tài chính cá nhân'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/210904.svg', title: 'Tìm kiếm ATM/CN'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/211001.svg', title: 'Lãi suất'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/211002.svg', title: 'Tỷ giá'),
  ServiceFavoriteModel(image: 'assets/svg/icon_gradient/211003.svg', title: 'Hỗ trợ'),
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
