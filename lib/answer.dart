import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onClickHandler ; // final can change intiailly once, but const doesnt , run time vs compile time
  final String answerString;
  Answer(this.onClickHandler, this.answerString); // _answerHandler is recived into this.onClickHandler

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerString),
        onPressed: onClickHandler,
      )
    );
  }
}