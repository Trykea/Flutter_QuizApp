import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function(int) selectHandler;  // Accepts a function that takes an int
  final String answerText;
  final int score;  // Add a field to hold the score

  const Answer(this.selectHandler, this.answerText, this.score, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(Colors.white),
          backgroundColor: WidgetStateProperty.all(Colors.blue),
        ),
        onPressed: () => selectHandler(score),  // Pass the score to the handler
        child: Text(answerText),
      ),
    );
  }
}
