import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/utils/get_letter.dart';
import 'package:trivia_game/utils/options_dimensions.dart';
import 'package:trivia_game/widgets/basic_question/operators/challenge_provider.dart';
import 'package:trivia_game/widgets/basic_question/widgets/basic_question_option.dart';
import 'package:trivia_game/widgets/basic_question/representations/option_question_representation.dart';

class BasicQuestionOptionWrapper extends StatefulWidget {
  final OptionQuestionRepresentation optionRepresentation;
  final int index;
  final String dimension;
  final VoidCallback handleCorrectClick;
  final VoidCallback handleIncorrectClick;

  const BasicQuestionOptionWrapper({
    super.key, 
    required this.optionRepresentation,
    required this.index,
    required this.dimension,
    required this.handleCorrectClick,
    required this.handleIncorrectClick,
  });

  @override
  BasicQuestionOptionWrapperState createState() => BasicQuestionOptionWrapperState();
}

class BasicQuestionOptionWrapperState extends State<BasicQuestionOptionWrapper> {
  void handleClick(
    OptionQuestionRepresentation optionRepresentation, 
    ChallengeProvider challenge) 
  {
    setState(() {
      optionRepresentation.isSelected = true;
      optionRepresentation.active = false;
      optionRepresentation.highlightColor = optionRepresentation.option.correct
            ? OPTION_BACKGROUND_COLOR_CORRECT
            : OPTION_BACKGROUND_COLOR_WRONG;
    });

    if (optionRepresentation.option.correct) {
      Future.delayed(const Duration(milliseconds: 300), widget.handleCorrectClick);
    } 
    
    if (!optionRepresentation.option.correct) {
      Future.delayed(const Duration(milliseconds: 300), () {
        setState(() {
          optionRepresentation.isSelected = false;
          optionRepresentation.highlightColor = OPTION_BACKGROUND_COLOR_DISABLED;
        });
        widget.handleIncorrectClick();
        });
    }
  }
  

  @override
  Widget build(BuildContext context) {
    final challenge = Provider.of<ChallengeProvider>(context);

    final optionRepresentation = widget.optionRepresentation;
    final index = widget.index;

    final height = getHeightForOptionDimension(widget.dimension);
    final width = getWidthtForOptionDimension(widget.dimension);
    final fontSize = getFontSizeForOptionDimension(widget.dimension);

    return 
      BasicQuestionOption(
        text: "${get_letter(index)}) ${optionRepresentation.option.text}",
        color: optionRepresentation.highlightColor ?? OPTION_BACKGROUND_COLOR_DEFAULT,
        onPressed: () {
          handleClick(optionRepresentation, challenge);
        },
        height: height,
        width: width,
        fontSize: fontSize,
      );
  }
}