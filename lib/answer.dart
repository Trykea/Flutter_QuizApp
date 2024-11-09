import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selectHandler;  // Function that takes no arguments, as it will be an anonymous function
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(Colors.white),
          backgroundColor: WidgetStateProperty.all(Colors.blue),
        ),
        onPressed: selectHandler,  // Call the anonymous function when the button is pressed
        child: Text(answerText),
      ),
    );
  }
}

