import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "question": "What's your favourite animal?",
      "answers": [
        {"text": "Goat", "score": 8},
        {"text": "Squirrel", "score": 4},
        {"text": "Cow", "score": 7},
        {"text": "Sheep", "score": 1},
        {"text": "Lion", "score": 11},
        {"text": "Antelope", "score": 5}
      ]
    },
    {
      "question": "What's your favourite colour?",
      "answers": [
        {"text": "Red", "score": 12},
        {"text": "Green", "score": 3},
        {"text": "Blue", "score": 9},
        {"text": "White", "score": 1},
        {"text": "Purple", "score": 5},
        {"text": "Brown", "score": 15}
      ]
    },
    {
      "question": "Who is your girlfriend?",
      "answers": [
        {"text": "Angel", "score": 10},
        {"text": "Ada", "score": 3},
        {"text": "Ngozi", "score": 14},
        {"text": "Divine", "score": 5},
        {"text": "Amara", "score": 7},
        {"text": "Nneoma", "score": 18}
      ]
    }
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: (_questionIndex < _questions.length)
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_resetQuiz, _totalScore),
    );
  }
}
