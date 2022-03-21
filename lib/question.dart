import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  dynamic questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 20.0, 0, 15.0),
        child: Text(
          questionText,
          style: TextStyle(
            fontSize: 28.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
