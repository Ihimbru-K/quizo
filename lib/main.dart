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

    var questions = [
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
          child: _questionIndex < questions.length? Column(
            children: [
              Question(questions[_questionIndex]['question'] as String,

              ),
              //answer question is a pointer to the answerQuestion() method because the method isn't a member of the
              //Answer class
              ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
                return Answer(_answerQuestion, answer);
              }).toList()

              

            ],
          ): Center(
            child: Text('you dit it !'),
          )
        ),
      ),
    );
  }
}
