import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(

      child: ElevatedButton(onPressed: () {
      }, child: Text('answer question'),



style: ElevatedButton.styleFrom(backgroundColor: Colors.blue  //Colors is a class
  //blue is a static property because it doesn't need the class to be instanciated before it is called

      ),


      ),


    );
  }
}
