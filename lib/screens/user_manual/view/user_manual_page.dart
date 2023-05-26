import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../res/strings/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../../fake_data/data_fake_home.dart';
import '../../components/app_bar/app_bar_component.dart';

class UserManualPage extends StatelessWidget {
  const UserManualPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        bgColor: clr_white,
        colorTitle: clr_black,
        colorIcon: clr_black,
        title: TITLE_77,
        callback: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: height_12),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: listUserManual.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int i) {
                return Column(
                  children: [
                    SizedBox(height: height_10,),
                    Theme(
                      data: ThemeData(
                        dividerColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),

                      child: ExpansionTile(
                          key: Key(i.toString()),
                          initiallyExpanded: false,
                          expandedAlignment: Alignment.centerLeft,
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: height_4),
                                child: Icon(listUserManual[i].icon!, size: fontSize_16_5, color: PRIMARY_COLOR,),
                              ),
                              SizedBox(width: width_16,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      listUserManual[i].title!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: fontSize_13
                                      ),
                                    ),
                                    SizedBox(height: height_2,),
                                    Text(
                                      listUserManual[i].content!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: fontSize_10,
                                          height: 1.4
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          children: [

                          ],
                          onExpansionChanged: ((newState) {})),
                    ),
                    SizedBox(height: height_10,),
                    Divider(
                      thickness: 8,
                      color: clr_black6,
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}
