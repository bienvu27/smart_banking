import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/resources/asset.dart';
import '../../../../../../core/resources/strings.dart';
import '../../../../../../core/style/colors.dart';
import '../../../../../../core/style/size.dart';
import '../../../../../../fake_data/data_fake_home.dart';
import '../../../../controller/transfer_controller.dart';
import '../../components/text_field_trans_fer_tab2.dart';
import 'contacts_manager.dart';
import 'list_bank.dart';

class SecondsTabIsNotEmpty extends StatelessWidget {
  final TransferController controller;

  SecondsTabIsNotEmpty({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
        children: [
          SizedBox(
            height: height_72,
            child: Stack(
              children: [
                InkWell(
                  onTap: () => controller.showDialogBank(context, controller),
                  child: TextFieldTransFerTab2(
                    enabled: false,
                    labelText: TITLE_43,
                    suffixIcon: Icons.arrow_drop_down_sharp,
                    title: controller.title,
                    subfix: controller.image,
                    textEditingController: controller.textController,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: width_16,
                  child: Text(
                    controller.subTitle ?? '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: fontSize_9,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'open_sans',
                      height: lineHeight_1_2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height_16,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: height_4,
            color: clr_f5f5f5,
          ),
          SizedBox(
            height: height_16,
          ),
          Container(
            margin: EdgeInsets.only(
              left: width_16,
              right: width_16,
              top: height_8,
            ),
            padding: EdgeInsets.only(
              top: height_10,
              bottom: height_10,
            ),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: clr_f5f5f5,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Chuyển tiền nhanh \n',
                    style: TextStyle(
                      fontSize: fontSize_9,
                      color: clr_black,
                      fontFamily: 'open_sans',
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: 'Chuyển tiền 24/7 là dịch vụ chuyển nhanh \n',
                        style: TextStyle(
                          fontSize: fontSize_9,
                          color: clr_black,
                          fontFamily: 'open_sans',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      WidgetSpan(
                          child: Image.asset(image_napas247, width: width_120,  fit: BoxFit.fill,)
                      ),
                      TextSpan(
                        text: ' hoặc song phương',
                        style: TextStyle(
                          fontSize: fontSize_9,
                          color: clr_black,
                          fontFamily: 'open_sans',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Switch(
                  value: controller.isSwitched,
                  activeColor: PRIMARY_COLOR,
                  onChanged: (value) {
                    controller.toggle();
                    // controller.isSwitched = value;
                  },
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                left: width_16,
                right: width_16,
                top: height_12,
              ),
              child: Stack(
                children: [
                  TextField(
                    controller: controller.textController2,
                    keyboardType: TextInputType.number,
                    enabled: true,
                    onTap: () {},
                    style: TextStyle(
                      fontSize: fontSize_12,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'open_sans',
                    ),
                    decoration: InputDecoration(
                      labelText: TITLE_67,
                      suffixIconColor: clr_black54,
                      labelStyle: TextStyle(
                        fontSize: fontSize_11,
                        color: clr_black54,
                        fontFamily: 'open_sans',
                        fontWeight: FontWeight.w500,
                      ),
                      disabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: clr_black12),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: PRIMARY_COLOR),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: height_12,
                    child: InkWell(
                      // onTap: () => Get.toNamed("/contacts_manager", arguments: ''),
                      onTap: () => Get.to(ContactsManager()),
                      child: Icon(
                        Icons.account_box_outlined,
                        size: fontSize_15,
                        color: clr_black54,
                      ),
                    ),
                  ),
                ],
              )),
          Visibility(
            visible: controller.isSwitched,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: width_16,
                    right: width_16,
                    top: height_12,
                  ),
                  child: Text(
                    controller.name ?? '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: fontSize_12,
                      color: PRIMARY_COLOR_BLUE,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'open_sans',
                      height: lineHeight_1_2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: !controller.isSwitched,
            child: Padding(
              padding: EdgeInsets.only(
                left: width_16,
                right: width_16,
                top: height_12,
              ),
              child: TextField(
                enabled: true,
                onTap: () {},
                style: TextStyle(
                  fontSize: fontSize_12,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'open_sans',
                ),
                decoration: InputDecoration(
                  labelText: TITLE_39,
                  suffixIconColor: clr_black54,
                  labelStyle: TextStyle(
                    fontSize: fontSize_11,
                    color: clr_black54,
                    fontFamily: 'open_sans',
                    fontWeight: FontWeight.w500,
                  ),
                  disabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: clr_black12),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: PRIMARY_COLOR),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
