import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/utils/get_letter.dart';
import 'package:trivia_game/utils/options_dimensions.dart';
import 'package:trivia_game/widgets/basic_question/widgets/basic_question_option.dart';
import 'package:trivia_game/widgets/basic_question/tools/option_question_representation.dart';

class BasicQuestionOptionWrapper extends StatefulWidget {
  final OptionQuestionRepresentation optionRepresentation;
  final int index;
  final String dimension;
  final Future<void> Function(OptionQuestionRepresentation) handleClick;

  const BasicQuestionOptionWrapper({
    super.key, 
    required this.optionRepresentation,
    required this.index,
    required this.dimension,
    required this.handleClick
  });

  @override
  BasicQuestionOptionWrapperState createState() => BasicQuestionOptionWrapperState();
}

class BasicQuestionOptionWrapperState extends State<BasicQuestionOptionWrapper> {
  @override
  Widget build(BuildContext context) {
    final optionRepresentation = widget.optionRepresentation;

    return 
      BasicQuestionOption(
        text: "${get_letter(widget.index)}) ${optionRepresentation.option.text}",
        color: optionRepresentation.highlightColor ?? OPTION_BACKGROUND_COLOR_DEFAULT,
        onPressed: () async { await widget.handleClick(widget.optionRepresentation); },
        height: getHeightForOptionDimension(widget.dimension),
        width: getWidthtForOptionDimension(widget.dimension),
        fontSize: getFontSizeForOptionDimension(widget.dimension),
      );
  }
}