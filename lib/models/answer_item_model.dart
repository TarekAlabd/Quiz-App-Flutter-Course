import 'package:flutter/material.dart';

class AnswerItemModel {
  final String title;
  final VoidCallback onPressed;

  AnswerItemModel({required this.title, required this.onPressed});
}

List<AnswerItemModel> answersForFirstQuestion = [
  AnswerItemModel(
    title: 'Football',
    onPressed: () => debugPrint('Football Choice'),
  ),
  AnswerItemModel(
    title: 'Basketball',
    onPressed: () => debugPrint('Basketball Choice'),
  ),
  AnswerItemModel(
    title: 'Volleyball',
    onPressed: () => debugPrint('Volleyball Choice'),
  ),
  AnswerItemModel(
    title: 'Kickboxing',
    onPressed: () => debugPrint('Kickboxing Choice'),
  ),
];
