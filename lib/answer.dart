import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function() answerHandler;
  const Answer(this.answerHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      width: 220,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
        ),
        child: Text(
          answerText,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        onPressed: answerHandler,
      ),
    );
  }
}
