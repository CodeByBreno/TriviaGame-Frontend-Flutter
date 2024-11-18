import 'package:flutter/material.dart';
import 'package:trivia_game/utils/get_max_dimension.dart';
import 'package:trivia_game/utils/options_dimensions.dart';
import 'package:trivia_game/widgets/basic_question/widgets/basic_question_option_wrapper.dart';
import 'package:trivia_game/widgets/basic_question/representations/option_question_representation.dart';

class BasicQuestionListOptions extends StatefulWidget { 
  final List<OptionQuestionRepresentation> listOptions;
  final VoidCallback handleCorrectClick;
  final VoidCallback handleIncorrectClick;

  const BasicQuestionListOptions({
    super.key, 
    required this.listOptions,
    required this.handleCorrectClick,
    required this.handleIncorrectClick
  });

  @override
  BasicQuestionListOptionsState createState() => BasicQuestionListOptionsState();
}

class BasicQuestionListOptionsState extends State<BasicQuestionListOptions> {
  @override
  Widget build(BuildContext context) {
    final listOptionsRepresentation = widget.listOptions;

    int maxDimension = getMaxDimension(listOptionsRepresentation);
    String dimensionUsed = getDimension(maxDimension);
    
    return 
      Expanded(
        child: ListView.builder(
            itemCount: listOptionsRepresentation.length,
            itemBuilder: (context, index) {
              final optionRepresentation = listOptionsRepresentation[index];
              return 
                Column(
                  children: [
                    BasicQuestionOptionWrapper(
                      optionRepresentation: optionRepresentation, 
                      index: index, 
                      dimension: dimensionUsed,
                      handleCorrectClick: widget.handleCorrectClick,
                      handleIncorrectClick: widget.handleIncorrectClick,
                    ),
                    const SizedBox(height: 10),
                  ],
                );
            },   
          ),
      );
  }
}