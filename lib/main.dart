import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }
  void _answerQuestion(int score) {
    _totalScore += score;

    print(score);
    setState(() {
      _questionIndex++;
    });
  }

  final _questions = const [
    {
      'questionText': 'What\'s your fav color',
      'answers': [
        {
          'text': 'Black',
          'score': 5, // Changed to int
        },
        {
          'text': 'Blue',
          'score': 8, // Changed to int
        },
        {
          'text': 'Red',
          'score': 10, // Changed to int
        },
        {
          'text': 'Cyan',
          'score': 10, // Changed to int
        },
      ]
    },
    {
      'questionText': 'What\'s your fav animal',
      'answers': [
        {
          'text': 'Cat',
          'score': 8, // Changed to int
        },
        {
          'text': 'Raccoon',
          'score': 10, // Changed to int
        },
        {
          'text': 'Dog',
          'score': 8, // Changed to int
        },
        {
          'text': 'Chopper',
          'score': 10, // Changed to int
        },
      ]
    },
    {
      'questionText': 'What\'s your fav social media app',
      'answers': [
        {
          'text': 'Facebook',
          'score': 5, // Changed to int
        },
        {
          'text': 'Instagram',
          'score': 10, // Changed to int
        },
        {
          'text': 'Tiktok',
          'score': 5, // Changed to int
        },
        {
          'text': 'X(Twitter)',
          'score': 8, // Changed to int
        },
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
          answerQuestion: _answerQuestion,
          questions: _questions,
          questionIndex: _questionIndex,

        )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
