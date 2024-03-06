import 'package:flutter/material.dart';

//Every widget in flutter is a dart class that has a build method

void main() =>
    runApp(MyApp()); // arrow functions for functions that don't do much

class MyApp extends StatelessWidget {
  void answerQuestion() => print('Answer question');
  // build method is needed because flutter must always call it when it wants to draw something to the screen
  //It is an aspect of all material widgets
  @override // specifying that you added a method in an already inbuilt class
  build(BuildContext context) {
    //buildcontext holds data about the widget and its position in the widget tree. It is managed by the flutter sdk
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Quiz app"),
        ),
        body: Center(
          child: Column(children: [
            ElevatedButton(onPressed: null, child: Text('Answer one')),
            ElevatedButton(onPressed: null, child: Text('Answer two')),

            //when passing a function to onPress, we are passing the name of the function and not the function itself
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer three')),


          ],)
        ),
      ),
    );
  }
}
