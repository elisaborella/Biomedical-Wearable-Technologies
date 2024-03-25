import 'package:flutter/material.dart';
import 'RandomHello.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}): super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(title: Text('Welcome to FLutter'),),
        body: Center(
          child: RandomHello(),
        ),
      ),
    );
  }
}