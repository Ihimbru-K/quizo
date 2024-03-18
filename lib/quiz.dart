import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(@required this.questions, @required this.answerQuestion,
      @required this.questionIndex);

//  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['question'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {

          /**
           * anonymous function is used here because it returns a type void and
           * Only returns a reference of the answerQuestion method to the SelectHandler(onPressed method of Answer()) which is of return type void
           * */
          return Answer(() => answerQuestion(answer['score']), answer['text'] as String);
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
