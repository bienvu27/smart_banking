import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../components/dash_board_floating_action_button.dart';
import '../components/dashboard_bottom_navigator_bar.dart';
import '../../../view_model/dashboard_view_model/dashboard_view_model.dart';

class DashBoardPage extends GetView<DashboardViewModel> {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        child: GetBuilder<DashboardViewModel>(
          init: DashboardViewModel(),
          builder: (controller) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              body: PageStorage(
                bucket: controller.bucket,
                child: controller.currentScreen,
              ),
              floatingActionButton: const DashBoardFloatingActionButton(),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: DashboardBottomNavigatorBar(controller: controller,),
            );
          },
        ));
  }
}
