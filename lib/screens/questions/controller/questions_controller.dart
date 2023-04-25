import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../model/group_model.dart';
import '../model/question_model.dart';

class QuesionsController extends GetxController{
  int selected = -1;
  List<Group> groups = [];
  List<Question> listQuestions = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getListQuestion();
  }

  void getListQuestion() async {
    var dataGroupList = json.decode(await getJson())['faq']['listGroups'];
    for (var i in dataGroupList) {
      int? index = dataGroupList.indexOf(i);
      var dataQuestionList = i['groupQ${index! + 1}']['listQuestions'];
      List<Question> questions = [];
      for (var j in dataQuestionList) {
        int? indexJ = dataQuestionList.indexOf(j);
        Question question = new Question(
            question: j['question${indexJ! + 1}']['title'].toString(),
            answer: j['question${indexJ + 1}']['answer'].toString(),
            idGroup: index);
        questions.add(question);
      }
      Group group = new Group(
          title: i['groupQ${index + 1}']['title'].toString(),
          questions: questions);
      groups.add(group);
      listQuestions.addAll(questions);
    }
    update();
  }

  Future<String> getJson() {
    return rootBundle.loadString('assets/i18n/vi.json');
  }
}