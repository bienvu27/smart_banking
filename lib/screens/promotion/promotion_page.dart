import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/components/grid_view/grid_view_component.dart';
import 'package:smart_banking/screens/promotion/model/promotion_model.dart';

import '../../res/my_color .dart';
import '../service_manager/model/service_favorite_model.dart';
import 'components/list_promotion.dart';
import 'components/sliver_app_bar.dart';

class PromotionPage extends StatefulWidget {
  const PromotionPage({Key? key}) : super(key: key);

  @override
  State<PromotionPage> createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  late ScrollController _scrollController;
  Color _textColor = Colors.white;
  double kExpandedHeight = 150.h;
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


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _textColor = _isSliverAppBarExpanded ? Colors.white : Colors.black;
        });
      });
  }

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > kExpandedHeight - kToolbarHeight;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBarCustom(
              isSliverAppBarExpanded: _isSliverAppBarExpanded,
              kExpandedHeight: kExpandedHeight),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 15.h),
                  child: GridViewComponent(
                    list: list,
                    title: 'Danh mục quà tặng',
                  ),
                ),
                ListPromotion(listPromotion: listPromotion)
              ],
            ),
          ),
        ],
      ),
    );
  }
}


