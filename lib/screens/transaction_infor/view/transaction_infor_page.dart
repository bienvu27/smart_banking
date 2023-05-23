import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../core/resources/asset.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/app_bar/app_bar_component.dart';
import '../../components/button/button_component.dart';
import '../../components/text_field/text_field_component.dart';
import '../controller/transaction_infor_controller.dart';

class TransactionInforPage extends StatefulWidget {
  final bool? isNapas;

  TransactionInforPage({Key? key, this.isNapas}) : super(key: key);

  @override
  State<TransactionInforPage> createState() => _TransactionInforPageState();
}

class _TransactionInforPageState extends State<TransactionInforPage> {
  static const platform = MethodChannel('entrust.sdk.dev/flutter');

  Future<void> testEntrust() async {
    try {
      final package = await platform.invokeMethod("test");
      print(package);
    } on PlatformException catch (e) {
      print("Failed to get battery level: ${e.message}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TransactionInforController>(
        init: TransactionInforController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBarComponent(
              bgColor: clr_white,
              colorTitle: clr_black,
              colorIcon: clr_black,
              title: TRANSACTION_INFOR,
              iconAction: Icons.info_outline,
              callback: () => Get.back(),
            ),
            body: Container(
              margin: EdgeInsets.only(top: height_8),
              color: clr_white,
              height: Get.size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: width_8,
                        right: width_8,
                        top: height_8,
                      ),
                      padding: EdgeInsets.only(
                        left: width_12,
                        top: height_20,
                        bottom: height_20,
                      ),
                      decoration: BoxDecoration(
                        color: clr_blue,
                        borderRadius: BorderRadius.circular(border_8),
                        gradient: linearGradientButtom,
                      ),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: clr_f6f5f7,
                              radius: fontSize_16,
                              child: Image.asset(
                                logoSeatech,
                                width: width_28,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            SizedBox(
                              width: width_8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  NUMBER_TEST,
                                  style: TextStyle(
                                    color: clr_white,
                                    fontFamily: 'open_sans',
                                    fontSize: fontSize_11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: height_3,
                                ),
                                Text(
                                  MONEY_TEST,
                                  style: TextStyle(
                                    color: clr_white,
                                    fontFamily: 'open_sans',
                                    fontSize: fontSize_11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: width_8,
                        right: width_8,
                        top: height_8,
                      ),
                      padding: EdgeInsets.only(
                        right: width_12,
                        top: height_20,
                        bottom: height_20,
                      ),
                      decoration: BoxDecoration(
                        color: clr_blue,
                        borderRadius: BorderRadius.circular(border_8),
                        gradient: linearGradientButtom2,
                      ),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '27910000492884',
                                  style: TextStyle(
                                    color: clr_white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'open_sans',
                                    fontSize: fontSize_11,
                                  ),
                                ),
                                SizedBox(
                                  height: height_3,
                                ),
                                Text(
                                  'hoang thi thuy mai'.toUpperCase(),
                                  style: TextStyle(
                                    color: clr_white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'open_sans',
                                    fontSize: fontSize_11,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width_8,
                            ),
                            CircleAvatar(
                              backgroundColor: clr_f6f5f7,
                              radius: border_16,
                              child: Image.asset(
                                icon_vrb,
                                width: width_24,
                                height: height_24,
                              ),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: width_8,
                        right: width_8,
                        top: height_8,
                      ),
                      child: TextFieldComponent(
                        label: AMOUT_OF_MONEY,
                        textController: controller.moneyController,
                        textInputType: TextInputType.number,
                        maxLength: 15,
                        counter: Text(
                          controller.sAmount.capitalizeFirst!,
                          style: TextStyle(
                            fontSize: fontSize_10,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        suffix: SizedBox(
                          width: width_10,
                          height: height_10,
                          child: Center(
                            child: Text(
                              VND,
                              maxLines: 2,
                              style: TextStyle(
                                color: clr_black,
                                fontSize: fontSize_10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        onChange: (_) {
                          controller.convertMoneyNumberToText(VND, context);
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: width_8,
                        right: width_8,
                        top: height_8,
                      ),
                      child: TextFieldComponent(
                        label: TRANSACTION_CONTENT,
                        text: TITLE_72,
                        textInputType: TextInputType.text,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height_11),
                      child: Container(
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
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width_10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Lưu danh bạ thụ hưởng',
                                style: TextStyle(
                                  fontSize: fontSize_12,
                                  color: clr_black,
                                  fontFamily: 'open_sans',
                                  fontWeight: FontWeight.normal,
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
                      ),
                    ),
                    widget.isNapas != null && widget.isNapas!
                        ? Padding(
                            padding: EdgeInsets.only(top: height_11),
                            child: Container(
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
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                          text:
                                              'Chuyển tiền 24/7 là dịch vụ chuyển nhanh \n',
                                          style: TextStyle(
                                            fontSize: fontSize_9,
                                            color: clr_black,
                                            fontFamily: 'open_sans',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        WidgetSpan(
                                            child: Image.asset(
                                          image_napas247,
                                          width: width_120,
                                          fit: BoxFit.fill,
                                        )),
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
                          )
                        : SizedBox()
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Container(
              padding: EdgeInsets.only(
                top: height_4,
                bottom: height_4,
              ),
              height: height_40,
              decoration: BoxDecoration(
                color: clr_white,
                boxShadow: [bottomNavigationBar],
              ), // Get.to(const RegisterStep3Page()
              child: ButtonComponent(
                title: NEXT,
                bgColor: button_color_home,
                callback: () =>
                    Get.toNamed("/transaction_confirm", arguments: ''),
                 // Get.to(()=> TestBottom())
              ),
            ),
          );
        });
  }
}
