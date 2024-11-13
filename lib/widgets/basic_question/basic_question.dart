import 'package:flutter/material.dart';
import 'package:trivia_game/models/basic_question_model.dart';
import 'package:trivia_game/widgets/basic_question/question_text.dart';
import 'package:trivia_game/widgets/widgets_questions/background_default.dart';
import 'package:trivia_game/widgets/basic_question/list_options_basic_question.dart';
import 'package:trivia_game/widgets/basic_question/option_question_representation.dart';

class BasicQuestion extends StatefulWidget {
  final BasicQuestioModel basicQuestion;

  BasicQuestion({
    super.key, 
    required this.basicQuestion
  });

  @override
  BasicQuestionState createState() => BasicQuestionState();
}

class BasicQuestionState extends State<BasicQuestion> {

  @override
  Widget build(BuildContext context) {
    final BasicQuestioModel question = widget.basicQuestion;
    final List<OptionQuestionRepresentation> listOptions = question.options.map((option) => OptionQuestionRepresentation(option: option)).toList();

    return DefaultBackground(
      content: 
        SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: QuestionText(text: question.text),
              ),
              ListOptionsBasicQuestion(listOptions: listOptions)
            ],
          ),
        ),
    );
  }
}
