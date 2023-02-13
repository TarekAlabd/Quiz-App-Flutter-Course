import 'package:flutter/material.dart';
import 'package:flutter_basics/models/question_item_model.dart';
import 'package:flutter_basics/widgets/answer_item.dart';
import 'package:flutter_basics/widgets/question_item.dart';
import 'package:flutter_basics/widgets/total_score_part.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIndex = 0;
  int myTotalScore = 0;
  int resultedScore = questions.length * 10;
  bool showTotalScore = false;

  @override
  Widget build(BuildContext context) {
    showTotalScore = myTotalScore >= resultedScore;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: !showTotalScore
          ? Column(
              children: [
                QuestionItem(questionItem: questions[questionIndex]),
                Column(
                  children: questions[questionIndex]
                      .availableAnswers
                      .map(
                        (answerMap) => AnswerItem(
                          answerMap: answerMap,
                          questionIndexChangeCallback: () {
                            if (questionIndex + 1 < questions.length) {
                              setState(() {
                                questionIndex += 1;
                              });
                            }
                            setState(() {
                              myTotalScore += 10;
                            });
                          },
                        ),
                      )
                      .toList(),
                ),
              ],
            )
          : TotalScorePart(
              myTotalScore: myTotalScore,
              resetQuizOnPressed: () {
                setState(() {
                  questionIndex = 0;
                  myTotalScore = 0;
                });
              },
            ),
    );
  }
}
