import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/res/app_context_extention.dart';
import '../../../../view_model/home_view_model/home_view_model.dart';
import 'authentication.dart';
import 'container_logged.dart';

class ContainerCover extends StatelessWidget {
  const ContainerCover({
    super.key,
    required this.homeViewModel,
  });

  final HomeViewModel homeViewModel;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        child: SizedBox(
          width: context.resources.dimension.mediaQueryWidth,
          child: Container(
            margin: EdgeInsets.only(
              left: context.resources.dimension.defaultMargin,
              right: context.resources.dimension.defaultMargin,
            ),
            alignment: Alignment.center,
            width: Get.size.width,
            height: !homeViewModel.isLogin ? 80 : 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                context.resources.dimension.defaultBorderRadius,
              ),
              color: context.resources.color.colorWhite,
              boxShadow: [context.resources.color.boxShadow],
            ),
            child: !homeViewModel.isLogin ? Authentication() : ContainerLogged(),
          ),
        ));
  }
}
