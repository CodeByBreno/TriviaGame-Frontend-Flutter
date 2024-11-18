import 'package:flutter/material.dart';
import 'package:trivia_game/models/basic_question_model.dart';
import 'package:trivia_game/widgets/basic_question/operators/question_manager.dart';

class ChallengeProvider with ChangeNotifier {
  List<BasicQuestionModel> _challenge = [];
  List<String> _challengeResults = [];
  int _currentIndex = 0;
  bool _isChallengeCompleted = false;
  bool _canGetNextQuestion = false;

  ChallengeProvider(int size) {
    _challenge = QuestionManager().getChallenge(size);
    _challengeResults = List<String>.filled(size, "pending");
    _isChallengeCompleted = false;
  }

  void rebuild(int size) {
    _challenge = QuestionManager().getChallenge(size);
    _challengeResults = List<String>.filled(size, "pending");
    _currentIndex = 0;
    _isChallengeCompleted = false;
    _canGetNextQuestion = false;
  }

  BasicQuestionModel getCurrentQuestion() {
    return _challenge[_currentIndex];
  } 

  int getCurrentIndex() {
    return _currentIndex;
  }

  bool isCompleted() {
    return _isChallengeCompleted;
  }

  bool canProceedToNextQuestion() {
    return _canGetNextQuestion;
  }

  int getChallengeSize() {
    return _challenge.length;
  }

  List<String> getChallengeResults() {
    return _challengeResults;
  }

  void questionCorrect() {
    if (_challengeResults[_currentIndex] == "pending") _challengeResults[_currentIndex] = "correct";
    _canGetNextQuestion = true;
    notifyListeners();
  }

  void questionIncorrect() {
    _challengeResults[_currentIndex] = "incorrect";
    _canGetNextQuestion = true;
  }

  Map<String, int> result() {
    int countCorrect = 0;
    int countIncorrect = 0;

    for (String result in _challengeResults) {
      if (result == "correct") {
        countCorrect++;
      } else if (result == "incorrect") {
        countIncorrect++;
      }
    }

    return {
      'correct': countCorrect,
      'incorrect': countIncorrect,
    };
  }

  void nextQuestion() {
    if (!_canGetNextQuestion) {
      throw Exception("Pergunta sem resultado definido");
    }

    if (_currentIndex < _challenge.length - 1) {
      _currentIndex++;
    } else {
      _isChallengeCompleted = true;
    }
    _canGetNextQuestion = false;
    notifyListeners();
  }
}