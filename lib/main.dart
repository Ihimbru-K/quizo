import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
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

    //Creating a map of questions and answers.
    //A map takes key-value pairs

    var Questions = [
      {
        'question' : "What's your favourite color?",
        'answers' : ['black', 'blue', 'brown', 'red']
      },
      {
        'question' : "What's your favourite shoe?",
        'answers' : ['balenciaga', 'sneakers', 'jordans', 'pointinini']
      },
      {
        'question' : "What's your favourite programming language?",
        'answers' : ['Java', 'Kotlin', 'Dart', 'Javascript']
      }

    ];














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
              //answer question is a pointer to the answerQuestion() method because the method isn't a member of the
              //Answer class
              Answer(_answerQuestion),  //ptr -> to _answerQuestion()
            Answer(_answerQuestion),
              Answer(_answerQuestion)











              // ElevatedButton(
              //   onPressed: () => _answerQuestion(),
              //   child: Text(questions[_questionIndex]),
              // ),
              // ElevatedButton(
              //   onPressed: () => print("Answer 2"),
              //   child: Text(questions[1]),
              // ),
              // ElevatedButton(
              //   onPressed: () => _answerQuestion,
              //   child: Text('Answer 3'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
