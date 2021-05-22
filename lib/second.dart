import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function temp;
  final String AnswerT;

  Answer(this.temp, this.AnswerT);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          onPressed: temp,
          child: Text(AnswerT,
              style: TextStyle(fontSize: 20, color: Colors.white)),
          color: Colors.blue),
    );
  }
}
