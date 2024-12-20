import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final void Function(int) answerQuestion;

  const Quiz(
      {super.key,
        required this.questions,
        required this.answerQuestion,
        required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
                () => answerQuestion(answer['score'] as int),  // Anonymous function calling answerQuestion with score
            answer['text'] as String,  // The answer text
          );
        }).toList(),
      ],
    );
  }
}


