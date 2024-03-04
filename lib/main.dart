import 'package:flutter/material.dart';

//Every widget in flutter is a dart class that has a build method
void main(){

runApp(MyApp()); //runapp method calls the build method of my app widget

}

class MyApp extends StatelessWidget {

  // build method is needed because flutter must always call it when it wants to draw something to the screen
  //It is an aspect of all material widgets
  @override // specifying that you added a method in an already inbuilt class
  build(BuildContext context) {
    //buildcontext holds data about the widget and its position in the widget tree. It is managed by the flutter sdk
    return MaterialApp(
      home: Text("Hello Kboy"),
    );
  }
}





