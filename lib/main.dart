import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void _anwserQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color',
      'what\'s your favorite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            ElevatedButton(child: Text('Answer 1'), onPressed: _anwserQuestion),
            ElevatedButton(child: Text('Answer 2'), onPressed: null),
            ElevatedButton(
                child: Text('Answer 3'),
                onPressed: () => print('Single line Fun'))
          ],
        ),
      ),
    );
  }
}
