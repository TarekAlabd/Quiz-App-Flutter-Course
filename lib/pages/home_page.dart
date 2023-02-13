import 'package:flutter/material.dart';
import 'package:flutter_basics/models/answer_item_model.dart';
import 'package:flutter_basics/models/question_item_model.dart';
import 'package:flutter_basics/widgets/answer_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 16),
            child: Text(
              questions[questionIndex].title,
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
                    questionIndexChangeCallback: () {
                      if (questionIndex + 1 < questions.length) {
                        setState(() {
                          questionIndex += 1;
                        });
                      }
                    },
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
