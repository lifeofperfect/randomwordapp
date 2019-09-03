import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random word app',
      home: Scaffold(
        appBar: AppBar(
          title: RandomWord(),
        ),
        body: Center(
          child: RandomWord(),
        ),
      ),
    );
  } 
}

class RandomWord extends StatefulWidget {
  @override 
  RandomWordState createState() => RandomWordState();
}

class RandomWordState extends State<RandomWord> {
  @override 
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}