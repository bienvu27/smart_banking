import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RegisterPageController extends GetxController{
  DateTime selectedDate = DateTime.now();
  TextEditingController dateController = TextEditingController();
  TextEditingController selectServiceController = TextEditingController();


  String? setDate;
  String? selectServices;
  bool isChecked = false;

  int value2 = 1;

  void toggleCheckbox(bool value){
    isChecked = !isChecked;
    update();
  }

  Future<void> selectDate(BuildContext context) async {
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

  void selectService(String title){
    selectServiceController.text = title;
    update();
  }

}