import '../screens/home/model/list_service_model.dart';
import '../screens/notification/model/description_model.dart';
import '../screens/notification/model/notification_model.dart';
import '../screens/promotion/model/promotion_model.dart';
import '../screens/service_manager/components/services/service_name.dart';
import '../screens/service_manager/model/service_favorite_model.dart';
import '../screens/transfer/models/list_contacts_model.dart';
import '../screens/transfer/view/tabs/tab2/model/icon_bank_model.dart';

final list = [
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/2109.svg',
      title: 'Smart Kids'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210902.svg',
      title: 'Tặng quà'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210201.svg',
      title: 'Mở tài khoản chọn tên như ý'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210202.svg',
      title: 'Chuyển tiền ngoài BIDV đến số tài khoản'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/2108.svg',
      title: 'Nạp tiền điện thoại'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/2106.svg',
      title: 'Gửi tiết kiệm Online')
];

List<String> images = [
  "https://bidv.com.vn/wps/wcm/connect/eaa9baff-9dde-4230-b284-5845ec0cf233/1/img.png?MOD=AJPERES&CVID=",
  "https://media.vneconomy.vn/w800/images/upload/2022/06/28/f576644e-8a90-4b1f-9216-ca0cd68310dd.jpg",
  "https://www.bidv.com.vn/smartbanking/grandsale2023/grandsale/bfb.jpg"
];

final listService = [
  ListServiceModel(
      'assets/svg/icon_gradient/210201.svg',
      'Dịch vụ ngân hàng',
      'Ngân hàng số 24/7 đáp ứng mọi nhu cầu: Chuyển tiền - Thanh toán - Tiền gửi - Tiền vay - Thẻ tín dụng',
      11),
  ListServiceModel(
      'assets/svg/icon_gradient/210904.svg',
      'Đăng ký dịch vụ',
      'Đăng ký bất kỳ dịch vụ mong muốn chỉ trong vòng vài phút và kết nối bạn bè',
      10),
  ListServiceModel(
      'assets/svg/icon_gradient/211001.svg',
      'Dịch vụ bảo hiểm',
      'Kiến tạo tương lai vững chắc về sức khỏe và tài chính với bảo hiểm nhân thọ và phi nhân thọ ',
      4),
  ListServiceModel(
      'assets/svg/icon_gradient/211304.svg',
      'Dịch vụ chứng khoán',
      'Đầu từ linh hoạt thông qua mở tài khoản online và chuyển tiền đầu tư nhanh chóng, chính xác',
      3),
  ListServiceModel(
      'assets/svg/icon_gradient/220115.svg',
      'Hỗ trợ khách hàng',
      'Dễ dàng tra cứu thông tin tài khoản và tìm kiếm các thông tin Ngâng hàng hữu ích khác; hỗ trợ tra soát giao dịch và quản lý tài chính cá nhân',
      6),
  ListServiceModel(
      'assets/svg/icon_gradient/2110.svg',
      'Từ thiện cùng VRB',
      'Chung tay cùng VRB đóng góp vào quỹ từ thiện',
      2),
];

final listContacts = [
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

final listImageBank = [
  IconBankModel(image: 'https://cdn.haitrieu.com/wp-content/uploads/2022/02/Icon-Vietcombank.png'),
  IconBankModel(
      image:
      'https://cdn.haitrieu.com/wp-content/uploads/2022/02/Icon-MB-Bank-MBB.png'),
  IconBankModel(image: 'https://cdn.haitrieu.com/wp-content/uploads/2022/01/Logo-BIDV-Ori.png'),
  IconBankModel(image: 'https://cdn.haitrieu.com/wp-content/uploads/2022/02/Icon-TPBank.png'),
  IconBankModel(image: 'https://cdn.haitrieu.com/wp-content/uploads/2022/01/Icon-Agribank.png'),
  IconBankModel(image: 'https://cdn.haitrieu.com/wp-content/uploads/2022/01/Icon-VPBank.png'),
];

final listPromotion = [
  PromotionModel(
      image: 'https://play-lh.googleusercontent.com/Hf7XwXAW9ringub6PP_scB6sN8n6yrR1Q-8p9fa_iTTQhskZCg6tvwJhpPx1pSmcZ8at=w526-h296-rw',
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
      image: 'https://play-lh.googleusercontent.com/Hf7XwXAW9ringub6PP_scB6sN8n6yrR1Q-8p9fa_iTTQhskZCg6tvwJhpPx1pSmcZ8at=w526-h296-rw',
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
      image: 'https://i1-kinhdoanh.vnecdn.net/2021/12/10/vrb-anh-k-text-2498-1639108454.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=RdZ1tnbf7FCSmdpRjMnW8w',
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

final listBank = [
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/2102.svg',
      title: 'Chuyển tiền'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/2108.svg',
      title: 'Thanh toán'),
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/210405.svg',
      title: 'Dịch vụ thẻ'),
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/2106.svg',
      title: 'Tiết kiệm Online'),
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/210608.svg',
      title: 'Rút tiền mặt tại ATM'),
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/210614.svg',
      title: 'Tiền vay'),
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/210804.svg',
      title: 'Nạp tiền điện thoại'),
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/210102.svg',
      title: 'Bán ngoại tệ'),
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/210902.svg',
      title: 'Tặng quà'),
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/210502.svg',
      title: 'Smart OTP'),
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/210208.svg',
      title: 'Chuyển tiền quốc tế')
];

final listInsurance = [
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/211009.svg',
      title: 'Bảo hiểm BIC'),
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/211004.svg',
      title: 'Thanh toán phí bảo hiểm'),
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/211003.svg',
      title: 'Bảo hiểm nhân thọ VRB MetLife'),
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/211001.svg',
      title: 'Bồi thường'),
];
final listStock = [
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/2113.svg',
      title: 'Mở tài khoản chứng khoán'),
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/211301.svg',
      title: 'Giao dịch chứng khoán'),
  ServiceFavoriteModel(
      image:
      'assets/svg/icon_gradient/211303.svg',
      title: 'Nộp tiền chứng khoán'),
];

final listRegisterService = [
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210201.svg',
      title: 'Mở tài khoản như ý'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210901.svg',
      title: 'Thanh toán định kỳ'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210607.svg',
      title: 'Chuyển tiền định kỳ'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/220108.svg',
      title: 'Đăng ký email thông báo'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210501.svg',
      title: 'Đăng ký gói dịch vụ'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210502.svg',
      title: 'Đổi hạn mức giao dịch'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210423.svg',
      title: 'Biến động số dư'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210902.svg',
      title: 'Giới thiệu bạn Thưởng vô hạn'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210201.svg',
      title: 'TK Chọn tên Như ý'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/2109.svg',
      title: 'Smart Kids'),
];

final listShopping = [
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210102.svg',
      title: 'Vé máy bay'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210212.svg',
      title: 'Khách sạn'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210201.svg',
      title: 'Vé xe'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210202.svg',
      title: 'Vé tàu'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210203.svg',
      title: 'Mua sắm VnShop'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210204.svg',
      title: 'Vé xem phim'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210206.svg',
      title: 'Đặt hoa'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210208.svg',
      title: 'Giao hàng'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210210.svg',
      title: 'Taxi'),
];
final listCharity = [
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210804.svg',
      title: 'Ủng hộ quỹ vac-xin'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210608.svg',
      title: 'Chuyển tiền từ thiện'),
];
final listSupport = [
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210901.svg',
      title: 'Báo cáo giao dịch'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210902.svg',
      title: 'quản lý tài chính cá nhân'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/210904.svg',
      title: 'Tìm kiếm ATM/CN'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/211001.svg',
      title: 'Lãi suất'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/211002.svg',
      title: 'Tỷ giá'),
  ServiceFavoriteModel(
      image: 'assets/svg/icon_gradient/211003.svg',
      title: 'Hỗ trợ'),
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