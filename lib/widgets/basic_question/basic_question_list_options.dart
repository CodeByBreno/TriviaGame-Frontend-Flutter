import 'package:flutter/material.dart';
import 'package:trivia_game/utils/options_dimensions.dart';
import 'package:trivia_game/widgets/basic_question/basic_question_option_wrapper.dart';
import 'package:trivia_game/widgets/basic_question/representations/option_question_representation.dart';

class BasicQuestionListOptions extends StatefulWidget { 
  final List<OptionQuestionRepresentation> listOptions;

  BasicQuestionListOptions({
    required this.listOptions,
  });

  @override
  BasicQuestionListOptionsState createState() => BasicQuestionListOptionsState();
}

class BasicQuestionListOptionsState extends State<BasicQuestionListOptions> {
  @override
  Widget build(BuildContext context) {
    final listOptionsRepresentation = widget.listOptions;

    int maxDimension = 0;
    listOptionsRepresentation.forEach((optionRepresentation) {
      int dimension; 

      if (optionRepresentation.option.text.length > 30) {
        dimension = 3;
      } else if (optionRepresentation.option.text.length > 20) {
        dimension = 2;
      } else if (optionRepresentation.option.text.length > 10) {
        dimension = 1;
      } else {
        dimension = 0;
      }
      maxDimension = (dimension > maxDimension) ? dimension : maxDimension;
    });

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
                    const SizedBox(height: 10),
                    BasicQuestionOptionWrapper(
                      optionRepresentation: optionRepresentation, 
                      index: index, 
                      dimension: dimensionUsed,
                    )
                  ],
                );
            },   
          ),
      );
  }
}