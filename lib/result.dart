import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  const Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText;
    if (resultScore ==0) {
      resultText = 'Your score was 0/3';
    } else if (resultScore ==1) {
      resultText = 'Your score was 1/3';
    }else if (resultScore ==2) {
      resultText = 'Your score was 2/3';
    }if (resultScore ==3) {
      resultText = 'Your score was 3/3';
    }

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
              fontSize: 38,
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
