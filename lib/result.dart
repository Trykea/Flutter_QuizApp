import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  String get resultPhrase {
    String resultText;
    if (resultScore <= 18) {
      resultText = 'Umm you are mid';
    } else if (resultScore <= 20) {
      resultText = 'You are okay';
    } else if (resultScore <= 25) {
      resultText = 'Well you\'re quite cool';
    } else {
      resultText = 'Let \'s be friend🤩';
    }
    return resultText;
  }

  Result(this.resultScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue, // Background color
              foregroundColor: Colors.white, // Text color
            ),
          )
        ],
      ),
    );
  }
}
