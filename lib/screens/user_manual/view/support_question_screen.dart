import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class SupportQuestion extends StatefulWidget {
  @override
  _SupportQuestion createState() => _SupportQuestion();
}

class _SupportQuestion extends State<SupportQuestion> {
  int selected = -1;
  List<Group> groups = [];
  List<Question> listQuestions = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getListQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
          child: ListView.builder(
              key: Key('builder ${(selected).toString()}'),
              shrinkWrap: true,
              itemCount: listQuestions.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int i) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    listQuestions[i].question ==
                            groups[listQuestions[i].idGroup!].questions![0].question
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              i != 0
                                  ? Padding(
                                      padding: const EdgeInsets.only(
                                          right: 8, left: 8, bottom: 10),
                                      child: Divider(
                                        thickness: 2,
                                      ),
                                    )
                                  : Container(),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  groups[listQuestions[i].idGroup!].title!,
                                ),
                              ),
                            ],
                          )
                        : Container(),
                    ExpansionTile(
                        key: Key(i.toString()),
                        initiallyExpanded: selected == i,
                        title: Text(listQuestions[i].question!,
                            textAlign: TextAlign.justify,
                    ),
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 10),
                            child: Text(
                              listQuestions[i].answer!,
                              // defaultTextStyle: text_normal_size,
                              // customTextAlign: (element) => TextAlign.justify,
                            ),
                          )
                        ],
                        onExpansionChanged: ((newState) {
                          if (newState)
                            setState(() {
                              selected = i;
                            });
                          else
                            setState(() {
                              selected = -1;
                            });
                        })),
                  ],
                );
              }),
        ),
      ),
    );
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
  }

  Future<String> getJson() {
    return rootBundle.loadString('assets/i18n/vi.json');
  }
}


class Group {
  String? title;
  List<Question>? questions;

  Group({this.title, this.questions});
}

class Question {
  String? question;
  String? answer;
  int? idGroup;

  Question({this.question, this.answer, this.idGroup});
}
