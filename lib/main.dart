import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {  //updates only this widget only when the build method is called
      questionIndex += 1;
    });
    print(questionIndex);
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
              ElevatedButton(
                onPressed: () => answerQuestion(),
                child: Text(questions[questionIndex]),
              ),
              ElevatedButton(
                onPressed: () => print("Answer this question"),
                child: Text(questions[1]),
              ),
              ElevatedButton(
                onPressed: () => answerQuestion(),
                child: Text('Answer three'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
