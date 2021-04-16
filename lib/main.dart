import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
class MyWidgetsApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyWidgetsAppState(); // connection to State class
  }
}

/**
 * _ to make the class private
 * so that the state is not accessible outside this file
 */
class _MyWidgetsAppState extends State<MyWidgetsApp> {
  var idx = 0;
  final questions = const [
    // final question but the list[] is const
    {
      'questionText': "what's your hair color?",
      'answers': ['red', 'brown', 'black', 'grey']
    },
    {
      'questionText': "what's your fav subject?",
      'answers': ['science', 'maths', 'computer', 'history']
    },
  ];

  void _answerHandler() {
    void updateIdx() {
      if (idx == 1) {
        idx = 0;
      } else {
        idx++;
      }
    }

    setState(
        updateIdx); // calls the build method , flutter efficiently renders only the changes
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
              Question(questions[idx]['questionText']),
              ...(questions[idx]['answers'] as List<String>).map((ans) {
                return Answer(_answerHandler, ans);
              }).toList()
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
