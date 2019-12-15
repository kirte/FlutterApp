import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _answerQuestion() {
    setState(() {
      _index++;
    });

    print("answer choosed $_index");
  }

  var _index = 0;

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        "questionText":
        "what's your favorite pet?",
        "answerText":
        ["Dog", "Cat","Rabbit","Lion"],
      },
      {
        "questionText":
        " what's your favorite color?",
        "answerText":
        ["Black", "Red","Green","White"],
      },
      {
        "questionText":
        " what's your favorite Language?",
        "answerText":
        ["Kotlin", "Swift","Dart","JS"],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Frist App"),
        ),
//        body: Text("Hello Flutter"),
        body: Column(
          children: <Widget>[
            Question(question[_index]["questionText"]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
