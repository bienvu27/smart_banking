import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/components/app_bar/app_bar_component.dart';

import '../../../res/strings/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../controller/terms_and_conditions_controller.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarComponent(
          bgColor: clr_white,
          colorTitle: clr_black,
          colorIcon: clr_black,
          title: TERMS_AND_CONDITIONS,
          callback: () => Get.back(),
        ),
        body: GetBuilder<TermsAndConditionsController>(
          init: TermsAndConditionsController(),
          builder: (controller) {
            final data = controller.termsAndConditionModel;
            return SingleChildScrollView(
              child: Container(
                width: Get.size.width,
                padding: EdgeInsets.only(left: width_8, right: width_8,),
                color: clr_white,
                child: Column(
                  children: [
                    Text(
                      data?.title ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: fontSize_14,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: height_8,),
                    Text(
                      data?.subTitle ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: fontSize_13,
                        fontWeight: FontWeight.w800,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: height_8,),
                    Column(
                      children: data!.description!.map((e) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                           e.titleNumber ?? '',
                            style: TextStyle(
                              fontSize: fontSize_13,
                              fontWeight: FontWeight.w800,
                              height: 1.5,
                            ),
                          ),
                          Column(
                            children: e.descriptions!.map((value) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if(value.titleSubNumber!.isNotEmpty)Text(
                                  value.titleSubNumber ?? '',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: fontSize_13,
                                    fontWeight: FontWeight.w800,
                                    height: 1.5,
                                  ),
                                ),
                                Text(
                                  value.descriptions ?? '',
                                  style: TextStyle(
                                    fontSize: fontSize_13,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            )).toList(),
                          ),
                          SizedBox(height: height_8,),
                        ],
                      )).toList(),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
