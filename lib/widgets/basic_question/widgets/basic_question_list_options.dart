import 'package:flutter/material.dart';
import 'package:trivia_game/utils/options_dimensions.dart';
import 'package:trivia_game/widgets/basic_question/tools/option_question_representation.dart';
import 'package:trivia_game/widgets/basic_question/widgets/basic_question_option_wrapper.dart';

class BasicQuestionListOptions extends StatefulWidget { 
  final List<OptionQuestionRepresentation> listOptions;
  final Future<void> Function(OptionQuestionRepresentation) handleClick;

  const BasicQuestionListOptions({
    super.key, 
    required this.listOptions,
    required this.handleClick
  });

  @override
  BasicQuestionListOptionsState createState() => BasicQuestionListOptionsState();
}

class BasicQuestionListOptionsState extends State<BasicQuestionListOptions> {
  @override
  Widget build(BuildContext context) {
    final listOptionsRepresentation = widget.listOptions;
    
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
                      dimension: getMaxDimension(listOptionsRepresentation),
                      handleClick: widget.handleClick,
                    ),
                    const SizedBox(height: 10),
                  ],
                );
            },   
          ),
      );
  }
}