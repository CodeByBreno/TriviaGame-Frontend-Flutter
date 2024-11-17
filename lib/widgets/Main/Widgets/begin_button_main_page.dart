import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/home/widgets/button.dart';
import 'package:trivia_game/widgets/basic_question/basic_question.dart';

class BeginButtonMainPage extends StatelessWidget {
  const BeginButtonMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      MainButton(
        text: "Começar partida com 10 perguntas!", 
        height: 270,
        width: 240,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        fontSize: 21,
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => BasicQuestion())
          );
        }
      );
  }
}