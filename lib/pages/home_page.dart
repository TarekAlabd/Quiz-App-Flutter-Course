import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/answer_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> answersForFirstQuestion = [
      {
        "title": "Football",
        "onPressed": () => debugPrint('Football Choice'),
      },
      {
        "title": "Basketball",
        "onPressed": () => debugPrint('Basketball Choice'),
      },
      {
        "title": "Volleyball",
        "onPressed": () => debugPrint('Volleyball Choice'),
      },
      {
        "title": "Kickboxing",
        "onPressed": () => debugPrint('Kickboxing Choice'),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 16),
            child: Text(
              'What is your favorite sport?',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
            ),
          ),
          Column(
            children: answersForFirstQuestion
                .map(
                  (answerMap) => AnswerItem(
                    answerMap: answerMap,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
