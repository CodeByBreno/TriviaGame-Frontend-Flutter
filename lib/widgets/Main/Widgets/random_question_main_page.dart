import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/generics/button.dart';
import 'package:trivia_game/widgets/basic_question/basic_question.dart';
import 'package:trivia_game/widgets/basic_question/tools/question_manager.dart';

class RandomQuestionMainPage extends StatelessWidget {
  const RandomQuestionMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      MainButton(
        text: "Treinar com uma pergunta aleatória", 
        height: 120,
        width: 400,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        fontSize: 21,
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => BasicQuestion(challenge: QuestionManager.getChallenge(1)))
          );
        }
      );
  }
}