import 'package:flutter/material.dart';
import 'package:flutter_basics/models/answer_item_model.dart';

class AnswerItem extends StatelessWidget {
  final AnswerItemModel answerMap;
  final VoidCallback questionIndexChangeCallback;
  const AnswerItem({
    super.key,
    required this.answerMap,
    required this.questionIndexChangeCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
            ),
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Icon(
                  Icons.add,
                  size: 30,
                ),
                const SizedBox(width: 16.0),
                Text(answerMap.title),
              ],
            ),
          ),
        ),
        // child: ElevatedButton(
        //   onPressed: () {
        //     answerMap.onPressed();
        //     questionIndexChangeCallback();
        //   },
        //   child: Text(answerMap.title),
        // ),
      ),
    );
  }
}
