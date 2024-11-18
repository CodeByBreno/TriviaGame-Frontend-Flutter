import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_game/utils/generic_page.dart';
import 'package:trivia_game/widgets/score/score.dart';
import 'package:trivia_game/config/images_project.dart';
import 'package:trivia_game/models/basic_question_model.dart';
import 'package:trivia_game/widgets/generics/return_button.dart';
import 'package:trivia_game/widgets/widgets_questions/default_container.dart';
import 'package:trivia_game/widgets/basic_question/widgets/question_text.dart';
import 'package:trivia_game/widgets/basic_question/operators/challenge_provider.dart';
import 'package:trivia_game/widgets/basic_question/widgets/check_box_basic_question.dart';
import 'package:trivia_game/widgets/basic_question/widgets/basic_question_list_options.dart';
import 'package:trivia_game/widgets/basic_question/representations/option_question_representation.dart';

class BasicQuestion extends StatefulWidget {
  const BasicQuestion({super.key});

  @override
  BasicQuestionState createState() => BasicQuestionState();
}

class BasicQuestionState extends State<BasicQuestion> {
  @override
  Widget build(BuildContext context) {
  final challenge = Provider.of<ChallengeProvider>(context);

  final BasicQuestionModel currentQuestion = challenge.getCurrentQuestion();
  final List<OptionQuestionRepresentation> listOptions = currentQuestion.options
        .map((option) => OptionQuestionRepresentation(option: option))
        .toList();

  listOptions.shuffle(Random());

  void handleCorrectClick(BuildContext context, ChallengeProvider challenge) {
    challenge.questionCorrect();

    if (challenge.isCompleted()) {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context) => Score())
      );
    } else if (challenge.canProceedToNextQuestion()) {
      challenge.nextQuestion();
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context) => BasicQuestion())
      );
    }
  }

  void handleIncorrectClick(BuildContext context, ChallengeProvider challenge) {
    challenge.questionIncorrect();
  }

  return DefaultContainer(
      content:  
        Stack(
          children: [
            Image.asset(
                ImagesProject.getRandomBackground(),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill
              ),
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ReturnButton(),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                    challenge
                      .getChallengeResults()
                      .map((entry) => CheckBoxBasicQuestion(type: entry))
                      .toList(),
                ),
                const SizedBox(height: 15),
                QuestionText(text: currentQuestion.text),
                const SizedBox(height: 15),
                BasicQuestionListOptions(
                  listOptions: listOptions,
                  handleCorrectClick: () => handleCorrectClick(context, challenge),
                  handleIncorrectClick: () => handleIncorrectClick(context, challenge),
                )
              ],
            ),
          ],
        )
       
    );
  }
}

