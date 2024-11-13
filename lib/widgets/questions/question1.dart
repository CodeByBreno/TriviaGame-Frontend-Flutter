import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/backgroundHome.dart';
import 'package:trivia_game/widgets/questions/continuePage.dart';
import 'package:trivia_game/widgets/questions/textualOption.dart';
import 'package:trivia_game/widgets/questions/questionBanner.dart';

class Question1 extends StatefulWidget {
  @override
  _Question1State createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  bool showOptionB = true;
  bool showOptionC = true;
  bool showOptionD = true;
  bool showOptionA = true;
  
  Color optionAColor = Colors.white;
  Color optionBColor = Colors.white;
  Color optionCColor = Colors.white;
  Color optionDColor = Colors.white;

  void _handleIncorrectOption(VoidCallback hideOption, String option) {
    setState(() {
      if (option == 'B') {
        optionBColor = Colors.red;
      } else if (option == 'C') {
        optionCColor = Colors.red;
      } else if (option == 'D') {
        optionDColor = Colors.red;
      }
    });

    // Depois de 1 segundo, esconder a opção
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        hideOption();
      });
    });
  }

  void _handleCorrectOption() {
    setState(() {
      optionAColor = Colors.green; // A cor da opção A fica verde
    });

    // Depois de 1 segundo, navega para a próxima página
    Future.delayed(Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ContinuePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundHome(),
          SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: QuestionBanner(),
                ),
                SizedBox(height: 10),
                if (showOptionA)
                  TextualOption(
                    text: "a) Aroeira",
                    color: optionAColor,
                    onPressed: () {
                      _handleCorrectOption();
                    },
                  ),
                SizedBox(height: 10),
                if (showOptionB)
                  TextualOption(
                    text: "b) Eucalipto",
                    color: optionBColor,
                    onPressed: () {
                      _handleIncorrectOption(() => setState(() => showOptionB = false), 'B');
                    },
                  ),
                SizedBox(height: 10),
                if (showOptionC)
                  TextualOption(
                    text: "c) Pinheiro",
                    color: optionCColor,
                    onPressed: () {
                      _handleIncorrectOption(() => setState(() => showOptionC = false), 'C');
                    },
                  ),
                SizedBox(height: 10),
                if (showOptionD)
                  TextualOption(
                    text: "d) Mangueira",
                    color: optionDColor,
                    onPressed: () {
                      _handleIncorrectOption(() => setState(() => showOptionD = false), 'D');
                    },
                  ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
