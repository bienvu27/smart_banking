import 'package:flutter/material.dart';
import 'package:smart_banking/res/app_context_extention.dart';

class ImageWatermarks extends StatelessWidget {
  const ImageWatermarks({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.resources.dimension.mediaQueryHeight,
      child: Center(
        child: Image.asset(
          image,
          width: context.resources.dimension.sizeImageWatermarks,
          color: context.resources.color.colorBlack.withOpacity(0.05),
          colorBlendMode: BlendMode.modulate,
        ),
      ),
    );
  }
}
