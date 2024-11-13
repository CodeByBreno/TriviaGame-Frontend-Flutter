import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/utils/get_letter.dart';
import 'package:trivia_game/widgets/basic_question/basic_question_option.dart';
import 'package:trivia_game/widgets/basic_question/representations/option_question_representation.dart';

class BasicQuestionOptionWrapper extends StatefulWidget {
  final OptionQuestionRepresentation optionRepresentation;
  final int index;
  final void Function(OptionQuestionRepresentation) handleClickOption;

  BasicQuestionOptionWrapper({
    super.key, 
    required this.optionRepresentation,
    required this.index,
    required this.handleClickOption
  });

  @override
  BasicQuestionOptionWrapperState createState() => BasicQuestionOptionWrapperState();
}

class BasicQuestionOptionWrapperState extends State<BasicQuestionOptionWrapper> {
  @override
  Widget build(BuildContext context) {
    final optionRepresentation = widget.optionRepresentation;
    final index = widget.index;
    final handleClickOption = widget.handleClickOption;

    return 
      BasicQuestionOption(
        text: "${get_letter(index)}) ${optionRepresentation.option.text}",
        color: optionRepresentation.highlightColor ?? OPTION_BACKGROUND_COLOR_DEFAULT,
        onPressed: () {
          handleClickOption(optionRepresentation);
        },
      );
  }
}