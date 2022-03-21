import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuizFunc;
  final int totalScore;

  Result(this.resetQuizFunc, this.totalScore);

  String get resultComment {
    String resultText;

    if (totalScore <= 8) {
      resultText = 'You are good and innocent. Child of Light!';
    } else if (totalScore <= 12) {
      resultText = 'You are not that bad after all!';
    } else if (totalScore <= 16) {
      resultText = 'You need to reorient, change from bad to good, ok?';
    } else {
      resultText = 'You are totally wrong and also very bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultComment,
            style: TextStyle(
              fontSize: 38.0,
              fontWeight: FontWeight.bold,
              color: Colors.red[200],
            ),
            textAlign: TextAlign.center,
          ),
          Card(
            margin: EdgeInsets.all(20.0),
            color: Colors.grey[300],
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Score:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  Text(
                    '$totalScore',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: resetQuizFunc,
            child: Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
