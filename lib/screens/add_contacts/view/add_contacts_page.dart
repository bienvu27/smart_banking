import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/components/app_bar/app_bar_component.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/button/button_component.dart';
import '../../components/text_field/text_field_subtile_component.dart';
import '../../register/view/components/singing_character.dart';
import '../components/radio_button.dart';
import '../controller/add_contacts_controller.dart';

class AddContactsPage extends StatefulWidget {
  const AddContactsPage({Key? key}) : super(key: key);

  @override
  State<AddContactsPage> createState() => _AddContactsPageState();
}

class _AddContactsPageState extends State<AddContactsPage> {
  bool value = true;
  String title = TITLE_66;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddContactsController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarComponent(
        bgColor: clr_white,
        colorTitle: clr_black,
        colorIcon: clr_black,
        title: ADD_CONTACTS,
        iconAction: Icons.home_filled,
        callback: () => Get.back(),
      ),
      body: GetBuilder<AddContactsController>(
        builder: (buttonController) {
          return Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: height_8,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet<void>(
                      backgroundColor: Colors.white,
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(border_10),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return Container(
                          margin: EdgeInsets.only(
                            top: height_8,
                          ),
                          color: Colors.white,
                          padding: EdgeInsets.only(
                            top: height_12,
                            left: width_12,
                            right: width_12,
                          ),
                          height: MediaQuery.of(context).size.height / 3,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      TITLE_65,
                                      style: TextStyle(
                                        fontFamily: 'open_sans',
                                        fontSize: fontSize_12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () => Navigator.pop(context),
                                      child: Text(
                                        CANCEL,
                                        style: TextStyle(
                                          fontSize: fontSize_12,
                                          color: PRIMARY_COLOR,
                                          fontFamily: 'open_sans',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height_8,
                                ),
                                LabeledRadio(
                                  value: '1',
                                  title: 'Chuyển tiền nội bộVRB',
                                  isFree: true,
                                ),
                                SizedBox(
                                  height: height_8,
                                ),
                                LabeledRadio(
                                    value: '2', title: 'Chuyển tiền ngoàiVRBđến số tài khoản', isFree: false),
                                SizedBox(
                                  height: height_8,
                                ),
                                LabeledRadio(value: '3', title: 'Chuyển tiền ngoàiVRBđến số thẻ', isFree: false),
                                SizedBox(
                                  height: height_8,
                                ),
                              ]),
                        );
                      },
                    );
                  },
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            bottom: height_8,
                          ),
                          margin: EdgeInsets.only(
                            left: width_8,
                            right: width_8,
                            bottom: height_8,
                            top: height_8,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 0.5, color: Colors.black12),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    TITLE_65,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: fontSize_10,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'open_sans',
                                        color: clr_black54),
                                  ),
                                  SizedBox(
                                    height: height_4,
                                  ),
                                  Text(
                                    buttonController.title,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: fontSize_11,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'open_sans',
                                        color: clr_black),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: fontSize_20,
                                color: PRIMARY_COLOR,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height_12,),
                if(buttonController.orderType == '1')...[
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: width_8,
                              right: width_8,
                            ),
                            child:  TextFieldSubTitleComponent(
                                label: TITLE_33, subTitle: '', textInputType: TextInputType.text),
                          ),
                          Positioned(
                              right: width_8,
                              bottom: height_8,
                              child: Text(
                                CHECK,
                                style: TextStyle(
                                    fontSize: fontSize_10,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'open_sans',
                                    color: PRIMARY_COLOR_BLUE),
                              ))
                        ],
                      ),
                      SizedBox(height: height_12,),
                      Container(
                        padding: EdgeInsets.only(
                          left: width_8,
                          right: width_8,
                        ),
                        child:  TextFieldSubTitleComponent(
                            label: NAME_2, subTitle: OPTIONAL, textInputType: TextInputType.text),
                      ),
                    ],
                  ),
                ]else if(buttonController.orderType == '2')...[
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: width_8,
                              right: width_8,
                            ),
                            child: TextFieldSubTitleComponent(
                                label: TITLE_43, subTitle: '', textInputType: TextInputType.text, enabled: false,),
                          ),
                          Positioned(
                              right: width_8,
                              bottom: height_8,
                              child:  Icon(
                                Icons.arrow_drop_down,
                                size: fontSize_20,
                                color: PRIMARY_COLOR,
                              ))
                        ],
                      ),
                      SizedBox(height: height_12,),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: width_8,
                              right: width_8,
                            ),
                            child:  TextFieldSubTitleComponent(
                                label: TITLE_67, subTitle: '', textInputType: TextInputType.text),
                          ),
                          Positioned(
                              right: width_8,
                              bottom: height_8,
                              child: Text(
                                CHECK,
                                style: TextStyle(
                                    fontSize: fontSize_10,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'open_sans',
                                    color: PRIMARY_COLOR_BLUE),
                              ))
                        ],
                      ),
                      SizedBox(height: height_12,),
                      Container(
                        padding: EdgeInsets.only(
                          left: width_8,
                          right: width_8,
                        ),
                        child:  TextFieldSubTitleComponent(
                            label: NAME_2, subTitle: OPTIONAL, textInputType: TextInputType.text),
                      ),
                      SizedBox(height: height_12,),
                      Container(
                        padding: EdgeInsets.only(
                          left: width_8,
                          right: width_8,
                        ),
                        child:  TextFieldSubTitleComponent(
                            label: EMAIL, subTitle: OPTIONAL, textInputType: TextInputType.text),
                      ),
                    ],
                  ),
                ]else if(buttonController.orderType == '3')...[
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: width_8,
                              right: width_8,
                            ),
                            child:  TextFieldSubTitleComponent(
                                label: TITLE_44, subTitle: '', textInputType: TextInputType.text,),
                          ),
                          Positioned(
                              right: width_8,
                              bottom: height_8,
                              child: Text(
                                CHECK,
                                style: TextStyle(
                                    fontSize: fontSize_10,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'open_sans',
                                    color: PRIMARY_COLOR_BLUE),
                              ))
                        ],
                      ),
                      SizedBox(height: height_12,),
                      Container(
                        padding: EdgeInsets.only(
                          left: width_8,
                          right: width_8,
                        ),
                        child:  TextFieldSubTitleComponent(
                            label: NAME_2, subTitle: OPTIONAL, textInputType: TextInputType.text),
                      ),
                      SizedBox(height: height_12,),
                      Container(
                        padding: EdgeInsets.only(
                          left: width_8,
                          right: width_8,
                        ),
                        child:  TextFieldSubTitleComponent(
                            label: EMAIL, subTitle: OPTIONAL, textInputType: TextInputType.text),
                      ),
                    ],
                  ),
                  ]
              ],
            ),
          );
        },
      ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(top: height_4, bottom: height_4),
          height: height_40,
          decoration: BoxDecoration(
            color: clr_white,
          ), // Get.to(const RegisterStep3Page()
          child: ButtonComponent(
            title: COMPLETED,
            bgColor: button_color_home,
            callback: () {},
          ),
        )
    );
  }
}
