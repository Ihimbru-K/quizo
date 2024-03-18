import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';


class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
