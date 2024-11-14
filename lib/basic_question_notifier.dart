import 'package:flutter/material.dart';
import 'package:trivia_game/models/basic_question_model.dart';
import 'package:trivia_game/controllers/basic_question_controller.dart';

class BasicQuestionNotifier extends ChangeNotifier {
  BasicQuestionModel? question;
  bool isLoading = false;

  void eraseQuestion() {
    question = null;
    notifyListeners();
  }

  Future<void> fetchData() async {
    if (isLoading) {
      return; 
    }

    isLoading = true;
    eraseQuestion(); 

    try {
      question = await BasicQuestionController().getOneRandomBasicQuestion();
    } catch (e) {
      print('Erro ao buscar pergunta: $e');
      question = null; 
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
