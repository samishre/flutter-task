import 'package:flutter/material.dart';
import 'package:studioprojects/quiz.dart';
import 'package:studioprojects/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  static const _questions = [
    {
      'question': 'What\'s your favourite subject?',
      'answers': [
        {'text': 'Data Structure & Algorithm', 'score': 2},
        {'text': 'Programming', 'score': 2},
        {'text': 'PMO', 'score': 1},
        {'text': 'Business Communication', 'score': 1}
      ]
    },
    {
      'question': 'What\'s your favourite movie genre?',
      'answers': [
        {'text': 'Science and Technology', 'score': 2},
        {'text': 'Space Adventure', 'score': 2},
        {'text': 'Horror & Thriller', 'score': 1},
        {'text': 'Brain Less Comedy', 'score': 1}
      ]
    },
    {
      'question': 'What\'s your favourite game?',
      'answers': [
        {'text': 'Cricket', 'score': 1},
        {'text': 'BasketBall', 'score': 1},
        {'text': 'Chess', 'score': 2},
        {'text': 'Checkers', 'score': 2}
      ]
    },
  ];

  void _answerPressed(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App", style: TextStyle(color: Colors.white)) ,
          backgroundColor: Colors.yellow,

         // Black color for app bar
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.black, // Black background color
            image: DecorationImage(
              image: AssetImage('assets/background.jpg'), // Replace with your image path
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), // Optional overlay color for image
                BlendMode.darken,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Score: $_totalScore',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // White text for contrast
                    ),
                  ),
                ),
                SizedBox(height: 20),
                _questionIndex < _questions.length
                    ? Quiz(
                  questionIndex: _questionIndex,
                  questions: _questions,
                  answerQuestion: _answerPressed,
                )
                    : Result(_totalScore, _resetQuiz),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
