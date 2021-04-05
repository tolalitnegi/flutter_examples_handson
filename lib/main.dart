import 'package:flutter/material.dart';

void main() {
  var myapp = new MyWidgetsApp();
  runApp(
      myapp); // runApp also from top package flutter , calls the build method
  // runApp(myapp);
}

// or use arrow function
// void main() => runApp(MyWidgetsApp());

/**
 * Class with widgets
 * flutter is all about widgets
 * StatelessWidget from package:flutter/material.dart
 * or StatefulWidget
 */
class MyWidgetsApp extends StatelessWidget {
  var idx = 0;
  var questions = ["what's your hair color?",  "What's your eye color?"];
  
  void answerHandler() {
    if (idx == 1) {
      idx = 0;
    } else {
      idx++;
    }
  }

  /**
   * build method has to be overriden / implemented here which returns a widget of MaterialApp
   * which has a nested widget Text rendered as home
   */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter app1'),
          ), // header trailing comma for formatting
          body: Column(
            children: [
              Text(questions[idx]),
              RaisedButton(
                child: Text('Black'),
                onPressed: answerHandler,
              ),
              RaisedButton(
                child: Text('Grey'),
                onPressed: answerHandler,
              ),
              RaisedButton(
                child: Text('Brown'),
                onPressed: answerHandler,
              ),
            ],
          )
          // body: Text('Body of the app'),

          ),
    );
    // return MaterialApp(home: Text('Hello world'),);
    // // TODO: implement build
    // throw UnimplementedError();
  }
}
