import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../style/colors.dart';
import '../style/size.dart';

class DialogLogout extends StatelessWidget {
  const DialogLogout({Key? key, required this.title, required this.subTitle, required this.buttonCancel, required this.buttonSubmit, this.clickCallback, this.clickSubmit}) : super(key: key);
  final String title;
  final String subTitle;
  final String buttonCancel;
  final String buttonSubmit;
  final Function? clickCallback, clickSubmit;


  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 0.0,
      backgroundColor: clr_white,
      insetPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: dialogContent(context),
    );
  }
  Widget dialogContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: height_16,),
        Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fontSize_12,
              color: clr_black,
              fontWeight: FontWeight.w500,
              height: lineHeight_1_4,
            )),
        SizedBox(height: height_16,),
        Text(subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fontSize_12,
              color: clr_black,
              fontWeight: FontWeight.w400,
              height: lineHeight_1_4,
            )),
        SizedBox(height: height_16,),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: width_12),
                child: InkWell(
                  child: Container(
                    width: double.infinity,
                    height: height_36,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(border_7),
                        color: button_color_home),
                    child: Text(
                      buttonCancel,
                      style: TextStyle(
                        color: PRIMARY_COLOR,
                        fontSize: fontSize_10,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () => clickCallback!(),
                ),
              ),
            ),
            SizedBox(width: width_10,),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: width_12),
                child: InkWell(
                  child: Container(
                    width: double.infinity,
                    height: height_36,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(border_7),
                        gradient: linearGradientButtom),
                    child: Text(
                      buttonSubmit,
                      style: TextStyle(
                        color: clr_white,
                        fontSize: fontSize_10,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () => clickSubmit!(),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: height_16,),
      ],
    );
  }
}
