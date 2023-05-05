import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RegisterPageController extends GetxController{
  DateTime selectedDate = DateTime.now();
  TextEditingController dateController = TextEditingController();

  String? setDate;
  bool isChecked = false;
  void toggleCheckbox(bool value){
    isChecked = !isChecked;
    update();
  }

  Future<Null> selectDate(BuildContext context) async {
    var language = Localizations.maybeLocaleOf(context)?.toLanguageTag();
    print(Get.locale);
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.year,
        firstDate: DateTime(2000),
        lastDate: DateTime.now());
    if (picked != null)
      selectedDate = picked;
    dateController.text = DateFormat("dd/MM/yyyy").format(selectedDate);

    update();
  }
}