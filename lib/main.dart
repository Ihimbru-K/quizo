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

class _MyAppState extends State<MyApp> {


  // _ converts the class from a public to a private class
  var _questionIndex = 0;


  final questions = [
    {
      'question': "What's your favourite color?",
      'answers': ['black', 'blue', 'brown', 'red']
    },
    {
      'question': "What's your favourite shoe?",
      'answers': ['balenciaga', 'sneakers', 'jordans', 'pointinini']
    },
    {
      'question': "What's your favourite programming language?",
      'answers': ['Java', 'Kotlin', 'Dart', 'Javascript']
    }
  ];







  void _answerQuestion() {
    setState(() {
      //updates only this widget only when the build method is called
      _questionIndex += 1;
    });
    print(_questionIndex);
    if(_questionIndex < questions.length){
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

        child: _questionIndex < questions.length? Column(
            children: [
              Question(
                questions[_questionIndex]['question'] as String,
              ),
 //We are mapping the elements in the list of answers belonging to the answer key in the questions list to the custom answer widget
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }),










//answer question is a pointer to the answerQuestion() method because the method isn't a member of the
              //Answer class
              //   Answer(_answerQuestion),  //ptr -> to _answerQuestion()
              // Answer(_answerQuestion),
              //   Answer(_answerQuestion)

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
          ): Center(
            child: Text('you dit it !'),
          )
        ),
      ),
    );
  }
}
