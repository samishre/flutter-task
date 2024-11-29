import 'package:flutter/material.dart';
import 'package:studioprojects/question.dart';
import 'package:studioprojects/answer.dart';

class Quiz extends StatelessWidget {
  final int? questionIndex;
  final List<Map<String, Object>>? questions;
  final Function answerQuestion;

  Quiz({this.questionIndex, this.questions, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(questions![questionIndex!]['question'].toString()),
        ...(questions![questionIndex!]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
                () => answerQuestion!(answer["score"]),
            answer['text'].toString(),
          );
        }).toList(),
      ],
    );
  }
}
