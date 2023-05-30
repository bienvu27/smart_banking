import 'package:flutter/material.dart';
import 'package:smart_banking/res/app_context_extention.dart';
import 'package:smart_banking/res/dimentions/gaps.dart';
import 'package:smart_banking/screens/home_view/components/cover_widget/search_home.dart';
import '../../../../res/resources/assets.dart';
import '../../../../view_model/home_view_model/home_view_model.dart';
import '../authentication/container_cover.dart';
import 'avatar_home.dart';
import 'banner_bg.dart';

// ignore: must_be_immutable
class CoverWidget extends StatelessWidget {
  HomeViewModel controller;

  CoverWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.resources.dimension.mediaQueryHeight / 1.8,
      child: Stack(
        children: [
          BannerBg(
            image: vrb_banner,
          ),
          Container(
            height: context.resources.dimension.mediaQueryHeight / 4,
            decoration: BoxDecoration(
              color: context.resources.color.colorWhite,
              gradient: context.resources.color.colorGradientBgBanner,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: context.resources.dimension.defaultMargin,
              right: context.resources.dimension.defaultMargin,
              top: context.resources.dimension.defaultMargin,
            ),
            child: Column(
              children: [
                gapH2,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      vrb_banner_icon,
                      width: context.resources.dimension.sizeImageLogo,
                      fit: BoxFit.fitHeight,
                    ),
                    SearchHome()
                  ],
                ),
                gapH1,
                AvatarHome(),
              ],
            ),
          ),
          ContainerCover(homeViewModel: controller,),
        ],
      ),
    );
  }
}


