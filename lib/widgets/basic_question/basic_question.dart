import 'dart:math';
import 'package:flutter/material.dart';
import 'package:trivia_game/utils/sounds.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/widgets/score/score.dart';
import 'package:trivia_game/config/audios_project.dart';
import 'package:trivia_game/models/basic_question_model.dart';
import 'package:trivia_game/widgets/generics/return_button.dart';
import 'package:trivia_game/widgets/basic_question/widgets/results_row.dart';
import 'package:trivia_game/widgets/widgets_questions/default_container.dart';
import 'package:trivia_game/widgets/basic_question/widgets/question_text.dart';
import 'package:trivia_game/widgets/basic_question/tools/question_manager.dart';
import 'package:trivia_game/widgets/basic_question/widgets/RandomImageBackground.dart';
import 'package:trivia_game/widgets/basic_question/widgets/basic_question_list_options.dart';
import 'package:trivia_game/widgets/basic_question/tools/option_question_representation.dart';

class BasicQuestion extends StatefulWidget {
  final List<BasicQuestionModel> challenge;

  BasicQuestion({
    super.key,
    required this.challenge
  });

  @override
  BasicQuestionState createState() => BasicQuestionState();
}
class BasicQuestionState extends State<BasicQuestion> {
  late BasicQuestionModel question;
  late List<OptionQuestionRepresentation> listOptions;
  late List<String> results = [];
  late int currentIndex;
  late int size = 0;

  late AudioPlayer _correctAnswerAudio;
  late AudioPlayer _incorrectAnswerAudio;

  @override
  void initState() {
    question = widget.challenge[0];

    listOptions = question.getOptionsRepresentations();
    listOptions.shuffle(Random());

    results = List.filled(10, QuestionManager.PENDING);

    currentIndex = 0;

    size = widget.challenge.length;

    _correctAnswerAudio = AudioPlayer();
    _incorrectAnswerAudio = AudioPlayer();
    _correctAnswerAudio.setSource(AssetSource(AudiosProject.correctAnswerSound));
    _incorrectAnswerAudio.setSource(AssetSource(AudiosProject.incorrectAnswerSound));
    
    super.initState();
  }

  @override
  void dispose() {
    _correctAnswerAudio.dispose();
    _incorrectAnswerAudio.dispose();
    super.dispose();
  }
  
  void endChallenge() {
    Navigator.pushAndRemoveUntil(
      context, 
      MaterialPageRoute(builder: (context) => Score(results: results)), 
      (Route<dynamic> route) => false
    );
  }

  Future<void> handleClick(OptionQuestionRepresentation optionRep) async {
    if (optionRep.option.correct) {
      await playAudio(_correctAnswerAudio, AudiosProject.correctAnswerSound);

      setState(() {
        optionRep.highlightColor = OPTION_BACKGROUND_COLOR_CORRECT;
      });

      await Future.delayed(const Duration(milliseconds: 300));

      setState(() {
        if (results[currentIndex] == QuestionManager.PENDING) {
          results[currentIndex] = QuestionManager.CORRECT;
        }
      });

      if (currentIndex >= size - 1) {
        endChallenge();
      } else {
        setState(() {
          currentIndex += 1;
          question = widget.challenge[currentIndex];
          listOptions = question.getOptionsRepresentations();
          listOptions.shuffle(Random());
        });
      }
    } else {
      await playAudio(_incorrectAnswerAudio, AudiosProject.incorrectAnswerSound);

      setState(() {
        results[currentIndex] = QuestionManager.INCORRECT;
        optionRep.highlightColor = OPTION_BACKGROUND_COLOR_WRONG;
      });

      await Future.delayed(const Duration(milliseconds: 300));

      setState(() {
        optionRep.highlightColor = OPTION_BACKGROUND_COLOR_DISABLED;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      content: Stack(
        children: [
          const RandomImagebackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ReturnButton(),
              const SizedBox(height: 10),
              ResultsRow(challengeResults: results),
              const SizedBox(height: 15),
              QuestionText(text: question.text),
              const SizedBox(height: 15),
              BasicQuestionListOptions(
                listOptions: listOptions,
                handleClick: handleClick,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
