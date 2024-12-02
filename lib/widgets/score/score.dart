import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/config/images_project.dart';
import 'package:trivia_game/widgets/components/box.dart';
import 'package:trivia_game/widgets/components/button.dart';
import 'package:trivia_game/widgets/main_page/main_page.dart';
import 'package:trivia_game/widgets/widgets_questions/default_container.dart';
import 'package:trivia_game/widgets/basic_question/tools/question_manager.dart';
import 'package:trivia_game/widgets/basic_question/widgets/check_box_basic_question.dart';
class Score extends StatelessWidget {
  final List<String> results;

  const Score({
    super.key, 
    required this.results
  });

  Map<String, int> getChallengeResult() {
    int countCorrect = 0;
    int countIncorrect = 0;

    for (String result in results) {
      if (result == QuestionManager.CORRECT) {
        countCorrect++;
      } else if (result == QuestionManager.INCORRECT) {
        countIncorrect++;
      }
    }

    return {
      'correct': countCorrect,
      'incorrect': countIncorrect,
    };
  }


  @override
  Widget build(BuildContext context) {
    final pontuation = getChallengeResult();

    List<List<String>> splitList(List<String> list, int size) {
      List<List<String>> chunks = [];
      for (var i = 0; i < list.length; i += size) {
        int end = (i + size < list.length) ? i + size : list.length;
        chunks.add(list.sublist(i, end));
      }
      return chunks;
    }

    final resultRows = splitList(results, 5);

    return 
      DefaultContainer(
        padding: const EdgeInsets.all(0),
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
                  const SizedBox(height: 100),
                  Box(
                    text: "Desafio Concluido!",
                    color: BOX_LIGHTER_COLOR,
                    height: 100,
                    width: 340,
                  ),
                  const SizedBox(height: 40),
                  Box(
                    text: "Resultado:  ${pontuation['correct']}/10",
                    color: BOX_LIGHTER_COLOR,
                    height: 200,
                    width: 340,
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: 
                      resultRows.map(
                        (row) => 
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: row
                                .map((entry) => CheckBoxBasicQuestion(type: entry, height: 60))
                                .toList()
                          ),
                      ).toList(),
                  ),
                  const SizedBox(height: 80),
                  MainButton(
                    text: "Concluir", 
                    height: 100,
                    width: 240,
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context, 
                        MaterialPageRoute(builder: (context) => MainPage()), 
                        (Route<dynamic> route) => false);
                    })
                ],
              ),
            ],
          ),
        );
  }
}