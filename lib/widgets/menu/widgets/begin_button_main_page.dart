import 'package:flutter/material.dart';
import 'package:trivia_game/utils/navigation.dart';
import 'package:trivia_game/widgets/components/button.dart';
import 'package:trivia_game/widgets/basic_question/basic_question.dart';
import 'package:trivia_game/widgets/basic_question/tools/question_manager.dart';

class BeginButtonMainPage extends StatelessWidget {
  const BeginButtonMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      MainButton(
        text: "Começar partida com 10 perguntas!", 
        height: 280,
        width: 240,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        fontSize: 21,
        onPressed: () {    
          navigate(context, BasicQuestion(challenge: QuestionManager.getChallenge(10)));
        }
      );
  }
}