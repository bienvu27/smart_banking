import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../fake_data/data_fake_home.dart';
import '../models/list_bank_model.dart';

class DialogSearchBankController extends GetxController {

  List<ListBankModel> listBanksSearch = [];

  void autoFillingWhenSearchBank(String text) {
    listBanksSearch.clear();
    listBanksSearch.addAll(listBanks);
    listBanksSearch.removeWhere((e) =>
    !e.title!.toUpperCase().contains(text.toUpperCase()));
    if (text.isEmpty) {
      listBanksSearch.clear();
      listBanksSearch.addAll(listBanks);
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    listBanksSearch.addAll(listBanks);
  }

}