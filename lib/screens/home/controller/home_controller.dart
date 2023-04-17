import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {

  bool isLogin = false;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    SharedPreferences.getInstance().then((pref) async {
      isLogin = await pref.getString("username") != null;
      update();
    });
  }
}