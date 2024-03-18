import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // _ converts the class from a public to a private class
  var _questionIndex = 0;

  final _questions = [
    {
      'question': "What's your favourite color?",
      'answers': [
        {"text": 'black', "score": 10},
        {"text": 'blue', "score": 8},
        {"text": 'brown', "score": 4},
        {"text": 'blue', "score": 2},
      ],
    },
    {
      'question': "What's your favourite shoe?",
      'answers': [
        {"text": 'balenciaga', "score": 10},
        {"text": 'sneakers', "score": 8},
        {"text": 'jordans', "score": 10},
        {"text": 'pointinini', "score": 5},
      ],
    },
    {
      'question': "What's your favourite programming language?",
      'answers': [
        {"text": 'Java', "score": 10},
        {"text": 'Kotlin', "score": 8},
        {"text": 'Dart', "score": 10},
        {"text": 'Javascript', "score": 8},
      ],
    }
  ];

  void _answerQuestion() {
    setState(() {
      //updates only this widget only when the build method is called
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have exceeded the available questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    //Creating a map of questions and answers.
    //A map takes key-value pairs

    //final is used when a value doesn't change during runtime
    //It is a runtime constant value
    //that is its value isn't reassigned once it is created
    //const is used when a value doesn't have to change at compile time

    //the value of final is locked at compile time
    //the value of const is locked once it is declared

    // var questions = [
    //   "What's your name",
    //   "What's your favorite colour?",
    //   "Which school are you from"
    // ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Quiz app"),
        ),
        body: Center(
          /**
           * Ternary expressions are of the form :
           * condition ? outcome : second_outcome
           * that is if condition then the first outcome else the second outcome
           */

          child: _questionIndex < _questions.length
              ? Quiz(_questions, _answerQuestion, _questionIndex)
              : Result(),
        ),
      ),
    );
  }
}
