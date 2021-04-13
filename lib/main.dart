import 'package:flutter/material.dart';
import './Question.dart';
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
  }

  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourite color?',
      'what\'s your favourite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () {
                print('Not so easy man');
              },
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () => print('so easy man'),
            ),
          ],
        ),
      ),
    );
  }
}
