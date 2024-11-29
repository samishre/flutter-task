import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String? question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        question ?? "Question",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
