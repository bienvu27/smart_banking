import 'package:flutter/material.dart';
import 'package:smart_banking/res/app_context_extention.dart';

class BannerBg extends StatelessWidget {
  const BannerBg({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.resources.dimension.mediaQueryHeight / 2,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
            context.resources.color.colorBlack.withOpacity(1.0),
            BlendMode.softLight,
          ),
        ),
      ),
    );
  }
}
