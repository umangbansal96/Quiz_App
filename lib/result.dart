import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  const Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it !!';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          OutlineButton(
              borderSide: BorderSide(color: Colors.blue),
              color: Colors.amberAccent,
              child: Text(
                'Reset Quiz',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onPressed: resetQuiz),
        ],
      ),
    );
  }
}
