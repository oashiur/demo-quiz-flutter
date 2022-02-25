import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int index;
  final Function(int score) answerQuestionHandler;
  const Quiz(
      {Key? key,
      required this.questions,
      required this.index,
      required this.answerQuestionHandler,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['question'].toString()),
        ...(questions[index]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(()=>answerQuestionHandler(int.parse(answer['score'].toString())), answer['text'].toString());
        }),
      ],
    );
  }

}

