import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../core/resources/name_icon.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../controller/history_transfer_controller.dart';

class HistoryTransferBottomNavigatorBar extends StatelessWidget {
   HistoryTransferBottomNavigatorBar({
    super.key,
  });

  final controller = Get.put(HistoryTransferController());

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 6,
      child: SizedBox(
        height: height_44,
        width: Get.size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 1,
              child: InkWell(
                onTap: () {
                  // controller.currentScreen = const HomePage();
                  // controller.changeTabIndex(0);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      image_transfer,
                      width: width_24,
                      height: height_24,
                      color: PRIMARY_COLOR,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      TRANSFER_MONEY,
                      style: TextStyle(
                        fontSize: fontSize_9,
                        fontFamily: 'open_sans',
                        fontWeight: FontWeight.w600,
                        color: PRIMARY_COLOR,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: InkWell(
                onTap: () {
                  // controller.currentScreen = const HomePage();
                  // controller.changeTabIndex(0);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      card_mobile,
                      width: width_24,
                      height: height_24,
                      color: PRIMARY_COLOR,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      TITLE_54,
                      style: TextStyle(
                        fontSize: fontSize_9,
                        fontFamily: 'open_sans',
                        fontWeight: FontWeight.w600,
                        color: PRIMARY_COLOR,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: InkWell(
                onTap: () {
                  // controller.currentScreen = const HomePage();
                  // controller.changeTabIndex(0);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      image_payment,
                      width: width_24,
                      height: height_24,
                      color: PRIMARY_COLOR,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      PAYMENT,
                      style: TextStyle(
                        fontSize: fontSize_9,
                        fontFamily: 'open_sans',
                        fontWeight: FontWeight.w600,
                        color: PRIMARY_COLOR,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
