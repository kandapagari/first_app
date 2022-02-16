import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;
  const Result(this.totalScore, this.resetQuiz, {Key? key}) : super(key: key);

  String get resultPhrase {
    String resulText;
    if (totalScore <= 8) {
      resulText = 'Your are awesome and innocent!';
    } else if (totalScore <= 12) {
      resulText = 'You are strange';
    } else {
      resulText = 'You are so bad';
    }
    return resulText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: const Text('Restart Quiz'),
            onPressed: resetQuiz,
            style: TextButton.styleFrom(onSurface: Colors.amber),
          ),
          const SignOutButton()
        ],
      ),
    );
  }
}
