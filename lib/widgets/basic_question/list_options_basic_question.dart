import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/utils/get_letter.dart';
import 'package:trivia_game/widgets/basic_question/textualOption.dart';
import 'package:trivia_game/widgets/widgets_questions/continue_page.dart';
import 'package:trivia_game/widgets/basic_question/option_question_representation.dart';

class ListOptionsBasicQuestion extends StatefulWidget { 
  final List<OptionQuestionRepresentation> listOptions;

  ListOptionsBasicQuestion({
    required this.listOptions,
  });

  @override
  ListOptionsBasicQuestionState createState() => ListOptionsBasicQuestionState();
}

class ListOptionsBasicQuestionState extends State<ListOptionsBasicQuestion> {
  
  void _handleClickOption(OptionQuestionRepresentation optionRepresentation) {
    OptionQuestionRepresentation updatedOption = OptionQuestionRepresentation(
        option: optionRepresentation.option,
        highlightColor: optionRepresentation.option.correct
            ? OPTION_BACKGROUND_COLOR_CORRECT
            : OPTION_BACKGROUND_COLOR_WRONG,
        isSelected: true,
        active: false,
      );

    setState(() {
      widget.listOptions[widget.listOptions.indexOf(optionRepresentation)] = updatedOption;
    });

    if (optionRepresentation.option.correct) {
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContinuePage()),
        );
      });
    } else {
      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          optionRepresentation.isSelected = false;
        });
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    final listOptions = widget.listOptions;
    
    return 
      Expanded(
        child: ListView.builder(
            itemCount: listOptions.length,
            itemBuilder: (context, index) {
              final optionRepresentation = listOptions[index];
              return 
                TextualOption(
                  text: "${get_letter(index)}) ${optionRepresentation.option.text}",
                  color: optionRepresentation.highlightColor ?? OPTION_BACKGROUND_COLOR_DEFAULT,
                  onPressed: () {
                    _handleClickOption(optionRepresentation);
                  },
                );
            },   
          ),
      );
  }
}