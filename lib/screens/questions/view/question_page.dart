import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/app_bar/app_bar_component.dart';
import '../controller/questions_controller.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarComponent(
          bgColor: clr_white,
          colorTitle: clr_black,
          colorIcon: clr_black,
          title: QUESTIONS,
          callback: () => Get.back(),
        ),
        body: GetBuilder<QuesionsController>(
          init: QuesionsController(),
          builder: (controller) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 15,
                  right: 15,
                  bottom: 10,
                ),
                child: ListView.builder(
                    key: Key('builder ${(controller.selected).toString()}'),
                    shrinkWrap: true,
                    itemCount: controller.listQuestions.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int i) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          controller.listQuestions[i].question ==
                                  controller.groups[controller.listQuestions[i].idGroup!].questions![0].question
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        controller.groups[controller.listQuestions[i].idGroup!].title!,
                                        style: TextStyle(
                                          fontSize: fontSize_16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                          Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.black,
                            ),
                            child: ExpansionTile(
                              iconColor: Colors.black,
                              key: Key(i.toString()),
                              initiallyExpanded: controller.selected == i,
                              title: Text(
                                controller.listQuestions[i].question!,
                                style: TextStyle(
                                  fontSize: fontSize_12,
                                  color: Colors.black,
                                ),
                              ),
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 10,
                                  ),
                                  child: Text(
                                    controller.listQuestions[i].answer!,
                                    style: TextStyle(fontSize: fontSize_12),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            );
          },
        ));
  }
}
