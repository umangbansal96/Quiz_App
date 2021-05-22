import 'package:flutter/material.dart';

//import './main1.dart';
//import './second.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _qno = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _qno = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      "questionT": "What is your favourite colour?",
      "answers": [
        {'text': "red", 'score': 10},
        {'text': "blue", 'score': 10},
        {'text': 'green', 'score': 10},
        {'text': 'yellow', 'score': 10}
      ]
    },
    {
      "questionT": "What is your favourite animal??",
      "answers": [
        {'text': "rabbit", 'score': 10},
        {'text': "dog", 'score': 10},
        {'text': 'cat', 'score': 10},
        {'text': 'lion', 'score': 10}
      ]
    },
    {
      "questionT": "What is your favourite game?",
      "answers": [
        {'text': "cards", 'score': 10},
        {'text': "monopoly", 'score': 10},
        {'text': 'LUDO', 'score': 10},
        {'text': 'chess', 'score': 10}
      ]
    },
  ];

  void _quesans(int score) {
    _totalScore += score;

    setState(() {
      _qno = _qno + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text(
          "Quiz App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
        ),
      )),
      body: _qno < _questions.length
          ? Quiz(
              answerQuestion: _quesans,
              questions: _questions,
              questionIndex: _qno)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
