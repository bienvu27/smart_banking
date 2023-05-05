import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../model/terms_and_condition_model.dart';

class TermsAndConditionsController extends GetxController {
  TermsAndConditionModel?  termsAndConditionModel;
  
  Future<void> getTerms() async {
    try {
      String response =
          await rootBundle.loadString('assets/json/terms_and_conditions.json');
      final data = TermsAndConditionModel.fromJson(json.decode(response));
      termsAndConditionModel = data;
      update();
    } catch (e) {
      print("error");
    }
  }

  @override
  void onInit() async {
    super.onInit();
    await getTerms();
  }
}
