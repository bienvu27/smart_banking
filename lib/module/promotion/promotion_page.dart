import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/module/components/grid_view/grid_view_component.dart';

import '../service_manager/model/service_favorite_model.dart';
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
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBarCustom(isSliverAppBarExpanded: _isSliverAppBarExpanded, kExpandedHeight: kExpandedHeight),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 15.h),
                  child: GridViewComponent(list: list, title: 'Danh mục quà tặng',),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

