import 'package:flutter/material.dart';

void main(){
  var myapp = new MyWidgetsApp();
  runApp(myapp); // runApp also from top package flutter , calls the build method 
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

  /**
   * build method has to be overriden / implemented here which returns a widget of MaterialApp
   * which has a nested widget Text rendered as home
   */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Hello world'),);
    // // TODO: implement build
    // throw UnimplementedError();
  }

}