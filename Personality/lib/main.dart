import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {'questionText':'What\'s your favourite color?',
      'answers':['Black', 'Red', 'Green', 'White']
    },
    {'questionText':'What\'s  your favourite animal?',
      'answers':['Tiger', 'Lion', 'Cow', 'Rabbit']
    },
    {'questionText':'What\'s  your favourite Programming Language?',
      'answers':['Python', 'Java', 'Ruby', 'C++']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if(_questionIndex<questions.length){
      print("We have more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Check'),
        ),
        body: Column(
          children: [
            Question(
                questions[_questionIndex]['questionText']as String
            ),
            ...(questions[_questionIndex]['answers']as List<String>).map((answer){
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
