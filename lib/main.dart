import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyFirstApp());
// }

void main() => runApp(MyFirstApp());

// MyFirstAPP inherits StatelessWidget and is the main entry point widget
// of the app
class MyFirstApp extends StatefulWidget {
  @override
  _MyFirstAppState createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < _questions.length) {
      print('weHaveMoreQuestions');
    }
  }

  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'what\'s your favourite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': ['Cat', 'Dog', 'Rabbit', 'Tiger']
    },
    {
      'questionText': 'what\'s your favourite app?',
      'answers': ['whatever', 'whoever', 'wherever', 'whenever']
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
