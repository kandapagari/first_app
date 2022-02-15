import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandeler;
  final String answerText;

  const Answer(this.selectHandeler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      margin: const EdgeInsets.all(8),
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
