import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? score;
  final Function() resetData;

  Result(this.score, this.resetData);

  String get resultPhrase {
    if (score! >= 6) {
      return 'Great job';
    } else if (score! >= 5) {
      return 'We are bestie';
    } else {
      return "Pathetic";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: resetData,
              child: Text(
                "Restart Quiz",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                // primary: Colors.teal,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
