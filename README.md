# flutter_examples_handson

A new Flutter project.

## setup
- vscode -> remove any other project
- android studio -> Configure -> AVD Manager -> Choose a virtual device and Run 
- vscode --> Run --> Run without debugging
- xcode


## folder structure
- android - needed for building the android app (android sdk project) 
- build - output of application , done by flutter sdk
- ios - same as android needed for iOS (xcode project)
- lib - main src folder , all .dart file
- test - unit tests / automated
- pubspec.yaml file - same as package.json , manage dependencies

## dartpad
- online tool to practice dart
- https://dartpad.dev/?null_safety=true 
- if data type is not specified for a variable it gets "dynamic" type
- strongly typed and obeject orianted
- named arguments while calling a method  also no need of new keyword
```
Person({@required String name, int age=30}){

}
var p1 =  Person( age:34, name:"Ram");
```
- @required annotation not part of dart but flutter or default value

- short cut of receiving the named arguments
```
class Person {
  String name;
  int age;

  Person({this.name, this.age=30});
}
```

## variable vs property, function vs method
- property and method are inside a class

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
