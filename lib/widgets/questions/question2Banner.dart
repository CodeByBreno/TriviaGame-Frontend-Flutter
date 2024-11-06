import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/questions/backgroundQuestionImage.dart';


class QuestionBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      Container(
        width: 380,
        height: 300,
        child:
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: 
                  BackgroundQuestionImage(),
              ),
              const Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                    bottom: 10,
                    left: 30,
                    right: 30,
                  ),
                  child: 
                    Text(
                      "Qual desses animais é conhecido por viver nas margens do Rio São Francisco?",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                )
            ]
        ),
      );
  }
}