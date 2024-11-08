import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<_MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'This is Q1',
      'This is Q2',
      'This is Q3',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(onPressed: _answerQuestion, child: Text('ans 1')),
            ElevatedButton(onPressed: _answerQuestion, child: Text('ans 2')),
            ElevatedButton(onPressed: _answerQuestion, child: Text('ans 3')),
          ],
        ),
      ),
    );
  }
}
