import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_banking/screens/components/grid_view/grid_view_component.dart';
import '../../core/resources/strings.dart';
import '../../core/style/colors.dart';
import '../../core/style/size.dart';
import '../../fake_data/data_fake_home.dart';
import 'components/list_promotion.dart';
import 'components/sliver_app_bar.dart';

class PromotionPage extends StatefulWidget {
  const PromotionPage({Key? key}) : super(key: key);

  @override
  State<PromotionPage> createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  late ScrollController _scrollController;
  Color _textColor = clr_white;
  double kExpandedHeight = 300.h;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _textColor = _isSliverAppBarExpanded ? clr_white : clr_black;
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
                  color: clr_white,
                  padding: EdgeInsets.only(top: height_8),
                  child: GridViewComponent(
                    list: list,
                    title: PROMOTION,
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


