import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _index = 0;
  var _totalScore = 0;
  final _questions = [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': '10'},
        {'text': 'Red', 'score': '8'},
        {'text': 'Green', 'score': '5'},
        {'text': 'White', 'score': '1'},
      ],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': '10'},
        {'text': 'Snake', 'score': '8'},
        {'text': 'Elephant', 'score': '5'},
        {'text': 'Lion', 'score': '1'},
      ],
    },
    {
      'question': 'Who\'s your favorite writer?',
      'answers': [
        {'text': 'Rabi Thakur', 'score': '10'},
        {'text': 'Kazi Nazrul', 'score': '8'},
        {'text': 'Sukumar Roy', 'score': '5'},
        {'text': 'Jasim Uddin', 'score': '1'},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _index++;
    });
  }

  void _reset() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: SafeArea(
        child: Center(
          child: _index < _questions.length
              ? Quiz(
                  questions: _questions,
                  index: _index,
                  answerQuestionHandler: _answerQuestion)
              : Result(_totalScore, _reset),
        ),
      ),
    );
  }
}
