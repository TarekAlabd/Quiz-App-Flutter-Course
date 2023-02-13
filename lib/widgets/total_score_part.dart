import 'package:flutter/material.dart';

class TotalScorePart extends StatelessWidget {
  final int myTotalScore;
  final VoidCallback resetQuizOnPressed;
  const TotalScorePart({
    super.key,
    required this.myTotalScore,
    required this.resetQuizOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Congratulations!',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Your total score is: $myTotalScore',
            style: const TextStyle(fontSize: 22),
          ),
          TextButton(
            onPressed: resetQuizOnPressed,
            child: const Text('Reset Quiz'),
          ),
        ],
      ),
    );
  }
}
