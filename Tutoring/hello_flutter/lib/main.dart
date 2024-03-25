/*
 * Build an app that generates a random number between 0 and 1000
 * When a button is tapped and displays for example: the number 3 is odd.
 * The color of the text must change according to the number: red if is odd, green
 * if is even. Also change the widget of the FAB between a text and an add icon (text
 * if odd, icon if even)
 */

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int? _randomNum;
  Color textcolor = Colors.black;

  int _randomGen() {
    int num = Random().nextInt(1000);
    setState(() {
      _randomNum = num;
      textcolor = _randomNum!.isEven ? Colors.green : Colors.red;
    });
    return num;
  }

  @override
  Widget build(BuildContext context) {
    Color textBackgroundColor = textcolor == Colors.green ? Colors.red : Colors.green;
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .inversePrimary,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _randomNum != null
                ? Container(
                padding: EdgeInsets.all(10),
                color: textBackgroundColor,
                child: Text(
                  'Il numero è $_randomNum',
                  style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: textcolor,
                  ),
                )
            ) : const Text('Premi questo bottone'),
            FloatingActionButton(
              onPressed: () {
                print('Genera un numero');
                int newnum = _randomGen();
                print(newnum);
              },
              tooltip: 'Genera un numero',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
