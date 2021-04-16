import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; // final means , the variable will never change once initialized
  // so one time change only

  Question(
      this.questionText); // constructor same as this.questionText = questionText
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // like width:100%;
      margin: EdgeInsets.all(10), // 10 device px margin:10px
      padding: EdgeInsets.all(2) ,
      
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center, // ENUM
      ),
    );
  }
}
