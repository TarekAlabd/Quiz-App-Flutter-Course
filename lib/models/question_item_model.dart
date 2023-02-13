import 'package:flutter/material.dart';
import 'package:flutter_basics/models/answer_item_model.dart';

class QuestionItemModel {
  final String title;
  final List<AnswerItemModel> availableAnswers;

  QuestionItemModel({required this.title, required this.availableAnswers});
}

List<QuestionItemModel> questions = [
  QuestionItemModel(
    title: 'What is your favorite sport?',
    availableAnswers: [
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
    ],
  ),
  QuestionItemModel(
    title: 'What is your favorite color?',
    availableAnswers: [
      AnswerItemModel(
        title: 'White',
        onPressed: () => debugPrint('White Choice'),
      ),
      AnswerItemModel(
        title: 'Red',
        onPressed: () => debugPrint('Red Choice'),
      ),
      AnswerItemModel(
        title: 'Green',
        onPressed: () => debugPrint('Green Choice'),
      ),
      AnswerItemModel(
        title: 'Blue',
        onPressed: () => debugPrint('Blue Choice'),
      ),
    ],
  ),
  QuestionItemModel(
    title: 'What is your favorite animal?',
    availableAnswers: [
      AnswerItemModel(
        title: 'Lion',
        onPressed: () => debugPrint('Lion Choice'),
      ),
      AnswerItemModel(
        title: 'Camel',
        onPressed: () => debugPrint('Camel Choice'),
      ),
      AnswerItemModel(
        title: 'Tiger',
        onPressed: () => debugPrint('Tiger Choice'),
      ),
      AnswerItemModel(
        title: 'Cat',
        onPressed: () => debugPrint('Cat Choice'),
      ),
    ],
  ),
  QuestionItemModel(
    title: 'What is your favorite bird?',
    availableAnswers: [
      AnswerItemModel(
        title: 'Flutter',
        onPressed: () => debugPrint('Flutter Choice'),
      ),
      AnswerItemModel(
        title: 'Owl',
        onPressed: () => debugPrint('Owl Choice'),
      ),
      AnswerItemModel(
        title: 'Pigeon',
        onPressed: () => debugPrint('Pigeon Choice'),
      ),
      AnswerItemModel(
        title: 'Raven',
        onPressed: () => debugPrint('Raven Choice'),
      ),
    ],
  ),
];
