import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  final String questionText;  // The question text is accepted (declared) only once and never changes
  // positional argument since there's only
  // one class member {()} if there were many (named argument would have been used)
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
