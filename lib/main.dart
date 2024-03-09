import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> { // _ converts the class from a public to a private class
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {  //updates only this widget only when the build method is called
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your name",
      "What's your favorite colour?",
      "Which school are you from"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Quiz app"),
        ),
        body: Center(
          child: Column(
            children: [
              Question(questions[_questionIndex]),
              ElevatedButton(
                onPressed: () => _answerQuestion(),
                child: Text(questions[_questionIndex]),
              ),
              ElevatedButton(
                onPressed: () => print("Answer 2"),
                child: Text(questions[1]),
              ),
              ElevatedButton(
                onPressed: () => _answerQuestion,
                child: Text('Answer 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
