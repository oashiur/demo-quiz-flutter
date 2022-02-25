import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultSum;
  final Function() restartHandler;
  const Result(this.resultSum, this.restartHandler, {Key? key})
      : super(key: key);
  String get participentType {
    var temp = "Your Score is " + resultSum.toString();
    if (resultSum < 10) {
      temp = 'You\'re Awesome!';
    }
    else if (resultSum < 20) {
      temp = 'You\'re Good But...';
    }
    else{
      temp = 'You\'re...';
    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            participentType,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
          TextButton(
            onPressed: restartHandler,
            child: const Text(
              "Restart Quiz!",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
