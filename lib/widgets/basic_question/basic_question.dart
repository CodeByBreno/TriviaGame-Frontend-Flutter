import 'package:flutter/material.dart';
import 'package:trivia_game/utils/sounds.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/utils/navigation.dart';
import 'package:trivia_game/widgets/score/score.dart';
import 'package:trivia_game/utils/shuffle_options.dart';
import 'package:trivia_game/config/audios_project.dart';
import 'package:trivia_game/models/basic_question_model.dart';
import 'package:trivia_game/widgets/components/return_button.dart';
import 'package:trivia_game/widgets/basic_question/widgets/results_row.dart';
import 'package:trivia_game/widgets/widgets_questions/default_container.dart';
import 'package:trivia_game/widgets/basic_question/widgets/question_text.dart';
import 'package:trivia_game/widgets/basic_question/tools/question_manager.dart';
import 'package:trivia_game/widgets/basic_question/widgets/random_image_background.dart';
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
    listOptions = shuffleOptions(listOptions, question.type);

    currentIndex = 0;

    size = widget.challenge.length;

    results = List.filled(size, QuestionManager.PENDING);

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
    navigateAndRemoveUntil(context, Score(results: results));
  }

  Future<void> handleClick(OptionQuestionRepresentation optionRep) async {
    if (optionRep.option.correct) {
      await playAudio(_correctAnswerAudio, AudiosProject.correctAnswerSound);

      setState(() {
        optionRep.highlightColor = OPTION_BACKGROUND_COLOR_CORRECT;
        optionRep.active = false;
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
          listOptions = shuffleOptions(listOptions, question.type);
        });
      }
    } else {
      await playAudio(_incorrectAnswerAudio, AudiosProject.incorrectAnswerSound);

      setState(() {
        results[currentIndex] = QuestionManager.INCORRECT;
        optionRep.highlightColor = OPTION_BACKGROUND_COLOR_WRONG;
        optionRep.active = false;
      });

      await Future.delayed(const Duration(milliseconds: 300));

      setState(() {
        optionRep.highlightColor = OPTION_BACKGROUND_COLOR_DISABLED;
        optionRep.active = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      content: 
       Stack(
        children: [
          const RandomImagebackground(),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ReturnButton(),
                const SizedBox(height: 10),
                ResultsRow(challengeResults: results),
                const SizedBox(height: 15),
                QuestionBox(question: question),
                const SizedBox(height: 15),
                BasicQuestionListOptions(
                  listOptions: listOptions,
                  handleClick: handleClick,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
