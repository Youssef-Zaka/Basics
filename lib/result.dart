import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore, this.resetHandler);
  final Function resetHandler;

  String get resultphrase {
    var resultText = 'You Did It';
    if (resultScore <= 10) {
      resultText = 'You are awsome';
    } else if (resultScore <= 20) {
      resultText = 'you are strange';
    } else {
      resultText = 'bad bad bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultphrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
            style: TextButton.styleFrom(
              primary: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
