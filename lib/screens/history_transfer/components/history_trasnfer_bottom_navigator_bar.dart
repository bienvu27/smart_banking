import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        height: height_40,
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
                    Icon(
                      Icons.home,
                      size: fontSize_20,
                      color: clr_unactive_button,
                    ),
                    Text(
                      HOME,
                      style: TextStyle(
                        fontSize: fontSize_9,
                        fontFamily: 'open_sans',
                        fontWeight: FontWeight.w600,
                        color: clr_unactive_button,
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
                    Icon(
                      Icons.home,
                      size: fontSize_20,
                      color: clr_unactive_button,
                    ),
                    Text(
                      HOME,
                      style: TextStyle(
                        fontSize: fontSize_9,
                        fontFamily: 'open_sans',
                        fontWeight: FontWeight.w600,
                        color: clr_unactive_button,
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
                    Icon(
                      Icons.home,
                      size: fontSize_20,
                      color: clr_unactive_button,
                    ),
                    Text(
                      HOME,
                      style: TextStyle(
                        fontSize: fontSize_9,
                        fontFamily: 'open_sans',
                        fontWeight: FontWeight.w600,
                        color: clr_unactive_button,
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
