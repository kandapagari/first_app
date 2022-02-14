import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandeler;
  final String answerText;

  Answer(this.selectHandeler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandeler,
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
        ),
      ),
    );
  }
}
