import 'dart:math';
import 'package:trivia_game/config/debug_questions.dart';
import 'package:trivia_game/models/basic_question_model.dart';
class QuestionManager {
  static String CORRECT = "correct";
  static String INCORRECT = "incorrect";
  static String PENDING = "pending";

  static List<Map<String, dynamic>> jsonQuestions = LIST_QUESTIONS; 
  static List<int> usedIndexes = []; 

  static BasicQuestionModel getQuestion() {
    if (usedIndexes.length == jsonQuestions.length) {
      usedIndexes.clear();
    }

    int index;
    do {
      index = Random().nextInt(jsonQuestions.length);
    } while (usedIndexes.contains(index)); 

    usedIndexes.add(index);

    return BasicQuestionModel.fromMap(jsonQuestions[index]);
  }

  static List<BasicQuestionModel> getChallenge(int size) {
    List<BasicQuestionModel> challenge = [];

    if (size > jsonQuestions.length) {
      throw Exception("Não existem perguntas suficientes para gerar esse desafio!");
    }

    for (int i = 0; i < size; i++) {
      challenge.add(getQuestion());
    }

    return challenge;
  }
}