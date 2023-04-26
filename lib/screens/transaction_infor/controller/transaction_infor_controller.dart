import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/common/utils.dart';

class TransactionInforController extends GetxController{
  TextEditingController moneyController = new TextEditingController();
  String sAmount = "";

  bool isSwitched = true;

  void toggle(){
    isSwitched = !isSwitched;
    update();
  }

  void convertMoneyNumberToText(String currencyCode, BuildContext context) {
    sAmount = moneyController.text.replaceAll(",", "").replaceAll(".", "");
    int amtLen = sAmount.length;
    String currencyStr = "";
    for (int i = amtLen - 1; i >= 0; i--) {
      if (sAmount == ",") {
        String amtTmp = sAmount.substring(0, i);
        if (sAmount.length > i)
          amtTmp += sAmount.substring(i + 1, sAmount.length);
        sAmount = amtTmp;
      }
    }
    String roundAmount = "", decimalAmount = "";
    int pointPos = sAmount.indexOf(".");
    if (pointPos == -1) {
      roundAmount = sAmount;
    } else {
      roundAmount = sAmount.substring(0, pointPos);
      decimalAmount = sAmount.substring(pointPos + 1, sAmount.length);
    }
    String strRet = "";
    // Round
    int len = roundAmount.length;
    //int cols = (int) Math.ceil(len / 3);
    int c = len;
    int b = 3;
    double a = c / b;
    int cols = int.parse(a.ceil().toString());
    int first = len - cols * 3;
    String num3 = "";
    for (int i = first, j = 0; i < len; i += 3) {
      ++j;

      if (i >= 0) {
        num3 = roundAmount.substring(i, i + 3);
      } else {
        num3 = roundAmount.substring(0, first + 3);
      }

      String strEng = EnglishNTe(num3); // add US DOLLARS

      if ("VND" != currencyCode) {
        currencyStr = currencyCode;
      }

      if ("" != strEng) {
        if ("" != strRet)
          strRet += " ";
        strRet += strEng + arr1NTe[cols - j];
      }

    }
    strRet = strRet + " " + currencyStr;
    // Decimal

    String abc = "";

    if ("USD" != currencyCode) {
      //abc = " " + currencyCode;
    }
    if("VND" == currencyCode){
      abc = "đồng";
    }

    String only = "";
    if (currencyCode != "VND") {
      only = " ";
    }
    if ("" != decimalAmount) {
      only = "";
      if (currencyCode == "VND") {
        //	abc = " CENTS";
      }
      if("VND" == currencyCode){
        abc = "đồng";
      }
      String dcRet = "";
      String strEng = EnglishNTe(decimalAmount);
      if (strEng != "") {
        dcRet += " " + strEng;
      }
      if ("" != dcRet) {
        if ("" == strRet)
          strRet = arr3NTe[0];
        strRet += " " + _pointNTe;
        strRet += dcRet;
      }

    }

    sAmount = strRet + abc + only;
    //return strRet;
    String money = moneyController.text;
    moneyController.text = Utils.formatDecimalCurrency(money, false);
    moneyController.selection = TextSelection.fromPosition(TextPosition(offset: moneyController.text.length));
    update();
  }

  String _pointNTe = "và";
  var arr1NTe = ["", " nghìn", " triệu", " tỷ"];
  var arr2NTe = [ "không", "mười", "hai mươi", "ba mươi", "bốn mươi", "năm mươi","sáu mươi", "bảy mươi", "tám mươi", "chín mươi" ];
  var arr3NTe = [ "không", "một", "hai", "ba", "bốn", "năm", "sáu", "bảy", "tám", "chín" ];
  var arr4NTe = [ "mười", "mười một", "mười hai", "mười ba", "mười bốn", "mười năm", "mười sáu", "mười bảy", "mười tám", "mười chín" ];

  String EnglishNTe(String num) {
    String strRet = "";
    if ((num.length == 4) && ("0000" != num.substring(0, 4))) {
      if (("0" != num.substring(0, 1))) {
        strRet += arr3NTe[int.parse(num.substring(0, 1))]
            + " nghìn ";
        // if (num.substring(1, 2) != "00")
        //   strRet += " và ";
      }
      num = num.substring(1);
    }
    if ((num.length == 3) && ("000" != num.substring(0, 3))) {
      if ((num.substring(0, 1) != "0")) {
        strRet += arr3NTe[int.parse(num.substring(0, 1))]
            + " trăm";
        print(num.substring(2, 3));
        if ("0" == num.substring(1, 2) && num.substring(2, 3) != "0") {
          strRet += " và ";
        } else if (num.substring(1, 2) != "0") {
          strRet += " ";
        }

      }
      num = num.substring(1);
    }

    if ((num.length == 2)) {
      if (("0" == num.substring(0, 1))) {
        num = num.substring(1);
      } else if (("1" == num.substring(0, 1))) {
        strRet += arr4NTe[int.parse(num.substring(1, 2))];
      } else {
        strRet += arr2NTe[int.parse(num.substring(0, 1))];
        if ("0" != num.substring(1, 2))
          strRet += " ";
        num = num.substring(1);
      }
    }
    if ((num.length == 1) && ("0" != num.substring(0, 1))) {
      strRet += arr3NTe[int.parse(num.substring(0, 1))];
    }
    return strRet;
  }

}