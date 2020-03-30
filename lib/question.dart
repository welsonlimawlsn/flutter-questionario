import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/answer.dart';
import 'package:projeto_perguntas/text_question.dart';

class Question extends StatelessWidget {
  final String question;
  final List<String> answers;
  final void Function(String) selected;

  Question(
      {@required this.question,
      @required this.answers,
      @required this.selected});

  void Function() select(String option) {
    return () {
      selected(option);
    };
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextQuestion(text: question),
        ...answers.map((answer) => Answer(
              text: answer,
              onSelected: select(answer),
            ))
      ],
    );
  }
}
