import 'package:flutter/material.dart';
class Result extends StatelessWidget {

  final int resultScore;

  Result(this.resultScore);


  /**
   * In dart a getter is a special type of method that doesn't accept parameters
   * It enables us to access the properties of an object while providing some extra layer of computation
   * or control
   * */
  String get resultPhrase{
    String resultText;

    if(resultScore <= 15){
      resultText = "Hmm you seem to have bad taste";
    }else if(resultScore >15 && resultScore <= 25){
      resultText = "Oh you are pretty cool";
    }else{
      resultText = "You're have great taste";
    }
    return resultText;




  }



  @override
  Widget build(BuildContext context) {
    return Center(

      child: Text("You did it !", style: TextStyle(fontSize: 36, fontWeight:FontWeight.bold),),
    );
  }
}
