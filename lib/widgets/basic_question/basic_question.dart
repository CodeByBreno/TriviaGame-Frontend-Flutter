import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/basic_question/question_text.dart';
import 'package:trivia_game/widgets/basic_question/textualOption.dart';
import 'package:trivia_game/widgets/widgets_questions/continue_page.dart';
import 'package:trivia_game/widgets/widgets_questions/background_default.dart';

class BasicQuestion extends StatefulWidget {
  @override
  BasicQuestionState createState() => BasicQuestionState();
}

class BasicQuestionState extends State<BasicQuestion> {
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
    return DefaultBackground(
      content: 
        SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: QuestionText(text: "Qual destas árvores é nativa da Caatinga, uma vegetação típica da região do Vale do São Francisco?"),
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
    );
  }
}