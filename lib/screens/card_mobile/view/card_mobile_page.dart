import 'package:flutter/material.dart';
import '../../../core/resources/strings.dart';
import '../../components/app_bar/app_bar_component.dart';

class CardMobilePage extends StatelessWidget {
  const CardMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        title: TITLE_54,
        callback: () => Navigator.pop(context),
        iconAction:  Icons.home_outlined,
        bgColor: Colors.white,
        colorIcon: Colors.black,
        colorTitle: Colors.black,
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
