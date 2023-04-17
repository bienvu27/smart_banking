import 'package:flutter/material.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog(
      {super.key, required this.clickCallback, required this.title, required this.cancel, required this.submit});

  final VoidCallback clickCallback;
  final String title;
  final String cancel;
  final String submit;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 0.0,
      backgroundColor: clr_white,
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0.0, right: 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: height_8,
              left: width_8,
              right: width_8,
              bottom: height_8,
            ),
            child: Text(title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: fontSize_12,
                  color: clr_black,
                  fontWeight: FontWeight.w400,
                  height: lineHeight_1_4,
                )),
          ),
          SizedBox(height: height_8),
          Padding(
            padding: EdgeInsets.only(
              left: width_8,
              right: width_8,
              bottom: height_8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: width_104,
                      height: height_28,
                      margin: EdgeInsets.only(right: width_4),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: button_color_bg_dialog,
                        borderRadius: BorderRadius.circular(border_5),
                      ),
                      child: Text(
                        cancel,
                        style: TextStyle(
                          color: PRIMARY_COLOR,
                          fontSize: fontSize_10,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: width_4),
                      width: width_104,
                      height: height_28,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(border_5),
                          gradient: linearGradientButtom),
                      child: Text(
                        submit,
                        style: TextStyle(
                          color: clr_white,
                          fontSize: fontSize_10,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onTap: () => clickCallback(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
