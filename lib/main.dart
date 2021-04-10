import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

// MyFirstAPP inherits StatelessWidget and is the main entry point widget
// of the app
class MyFirstApp extends StatelessWidget {
  build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello!'),
    );
  }
}
