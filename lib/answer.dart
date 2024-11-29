import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() answerPressed;
  final String? answer;

  Answer(this.answerPressed, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10.0), // Add margin for spacing between buttons
      child: ElevatedButton(
        onPressed: answerPressed,
        style: ElevatedButton.styleFrom(
          // primary: Colors.white, // Button color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
        ),
        child: Text(
          answer!,
          style: TextStyle(
            color: Colors.black, // Text color set to black
            fontSize: 18, // Adjust the text size as needed
          ),
        ),
      ),
    );
  }
}
