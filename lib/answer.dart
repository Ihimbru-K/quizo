import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
//VoidCallback can be used but the only diff is that it precises a function with void parameters and which returns nothing too
  final Function selectHandler;
  final String answerText ;

  Answer(this.selectHandler, this.answerText);

  // const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          selectHandler();
        },
        child: Text(answerText),
        style: ElevatedButton.styleFrom(
          //textStyle: TextStyle(color: Colors.black),
            backgroundColor: Colors.blue //Colors is a class
            //blue is a static property because it doesn't need the class to be instanced before it is called

            ),
      ),
    );
  }
}
