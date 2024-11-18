import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/widgets/generics/box.dart';
import 'package:trivia_game/config/images_project.dart';
import 'package:trivia_game/widgets/generics/button.dart';
import 'package:trivia_game/widgets/widgets_questions/default_container.dart';
import 'package:trivia_game/widgets/basic_question/operators/challenge_provider.dart';
import 'package:trivia_game/widgets/basic_question/widgets/check_box_basic_question.dart';

class Score extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final challenge = Provider.of<ChallengeProvider>(context);

    final result = challenge.result();
    final challengeResults = challenge.getChallengeResults();
    final challengeResultsLength = challengeResults.length;

    return 
      DefaultContainer(
        padding: EdgeInsets.all(0),
        content: 
          Stack(
            children: [
              Image.asset(
                ImagesProject.resultPagePNG,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  Box(
                    text: "Desafio Concluido!",
                    color: BOX_LIGHTER_COLOR,
                    height: 100,
                    width: 340,
                  ),
                  SizedBox(height: 40),
                  Box(
                    text: "Resultado:  ${result['correct']}/10",
                    color: BOX_LIGHTER_COLOR,
                    height: 200,
                    width: 340,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                      challengeResults
                        .map((entry) => CheckBoxBasicQuestion(type: entry, height: 60))
                        .toList().sublist(0, 5),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                      challengeResults
                        .map((entry) => CheckBoxBasicQuestion(type: entry, height: 60))
                        .toList().sublist(5, 10),
                  ),
                  SizedBox(height: 80),
                  MainButton(
                    text: "Concluir", 
                    height: 100,
                    width: 240,
                    onPressed: () {
                      Navigator.pop(context);
                    })
                ],
              ),
            ],
          ),
        );
  }
}