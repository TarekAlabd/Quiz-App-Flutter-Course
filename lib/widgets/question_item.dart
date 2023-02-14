import 'package:flutter/material.dart';
import 'package:flutter_basics/models/question_item_model.dart';

class QuestionItem extends StatelessWidget {
  final QuestionItemModel questionItem;
  const QuestionItem({super.key, required this.questionItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            questionItem.title,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.black,
                ),
          ),
          const SizedBox(height: 12.0),
          Text(
            'Answer and get points',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.grey,
                ),
          ),
        ],
      ),
    );
  }
}
