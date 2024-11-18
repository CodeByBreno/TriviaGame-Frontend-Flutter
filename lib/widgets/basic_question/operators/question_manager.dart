import 'dart:math';
import 'package:trivia_game/jsonQuestions.dart';
import 'package:trivia_game/models/basic_question_model.dart';

class QuestionManager {
  List<Map<String, dynamic>> jsonQuestions = listQuestions; 
  List<int> usedIndexes = []; 

  BasicQuestionModel getQuestion() {
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

  List<BasicQuestionModel> getChallenge(int size) {
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