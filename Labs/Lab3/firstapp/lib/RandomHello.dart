import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomHello extends StatefulWidget {
  RandomHello({Key? key}) : super(key: key);

  @override
  _RandomHelloState createState() => _RandomHelloState();
}

class _RandomHelloState extends State<RandomHello>{
  String? first_word;
  String? second_word;

  @override
  void initState(){
    first_word = WordPair.random().first;
    second_word = WordPair.random().first;
    super.initState();
  }

  @override
  Widget build(BuildContext buildContext){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$first_word $second_word'),
        ElevatedButton(onPressed: _changeRandomWord, child: Text('press me')),
      ],
    );
  } // build

void _changeRandomWord(){
    setState(() {
      first_word = WordPair.random().first;
      second_word = WordPair.random().first;
    });
}
}//_RandomHelloState