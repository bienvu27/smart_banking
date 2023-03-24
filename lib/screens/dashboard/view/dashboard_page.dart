import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../components/dash_board_floating_action_button.dart';
import '../components/dashboard_bottom_navigator_bar.dart';
import '../controller/dashboard_controller.dart';

class DashBoardPage extends GetView<DashboardController> {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        child: GetBuilder<DashboardController>(
          init: DashboardController(),
          builder: (controller) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              body: PageStorage(
                bucket: controller.bucket,
                child: controller.currentScreen,
              ),
              floatingActionButton: const DashBoardFloatingActionButton(),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: DashboardBottomNavigatorBar(),
            );
          },
        ));
  }
}
