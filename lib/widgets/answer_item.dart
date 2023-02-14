import 'package:flutter/material.dart';
import 'package:flutter_basics/models/answer_item_model.dart';

class AnswerItem extends StatelessWidget {
  final AnswerItemModel answerMap;
  final VoidCallback questionIndexChangeCallback;
  final bool isAnswerChosen;

  const AnswerItem({
    super.key,
    required this.answerMap,
    required this.isAnswerChosen,
    required this.questionIndexChangeCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: InkWell(
          onTap: () {
            answerMap.onPressed();
            questionIndexChangeCallback();
          },
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(8.0),
              color: isAnswerChosen ? Colors.green : Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    size: 30,
                    color: isAnswerChosen ? Colors.white : Colors.black,
                  ),
                  const SizedBox(width: 16.0),
                  Text(answerMap.title, style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: isAnswerChosen ? Colors.white : Colors.black,
                  ),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
