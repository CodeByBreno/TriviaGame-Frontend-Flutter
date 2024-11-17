import 'dart:math';
import 'package:flutter/material.dart';
import 'package:trivia_game/utils/get_question.dart';
import 'package:trivia_game/models/basic_question_model.dart';
import 'package:trivia_game/widgets/basic_question/question_text.dart';
import 'package:trivia_game/widgets/widgets_questions/default_container.dart';
import 'package:trivia_game/widgets/basic_question/basic_question_list_options.dart';
import 'package:trivia_game/widgets/basic_question/representations/option_question_representation.dart';

// import 'package:provider/provider.dart';
// import 'package:trivia_game/basic_question_notifier.dart';

class BasicQuestion extends StatefulWidget {
  @override
  BasicQuestionState createState() => BasicQuestionState();
}

class BasicQuestionState extends State<BasicQuestion> {
  @override
  Widget build(BuildContext context) {
    // final notifier = Provider.of<BasicQuestionNotifier>(context);

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   if (notifier.question == null && !notifier.isLoading) {
    //     notifier.fetchData();
    //   }
    // });

    // if (notifier.isLoading) {
    //   return const Center(child: CircularProgressIndicator()); 
    // }

    // if (notifier.question == null) {
    //   return const Center(child: Text("Nenhuma pergunta encontrada"));
    // }

    final BasicQuestionModel question = QuestionManager().getQuestion();
    final List<OptionQuestionRepresentation> listOptions = question.options
        .map((option) => OptionQuestionRepresentation(option: option))
        .toList();

    listOptions.shuffle(Random());

  return DefaultContainer(
      content:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              QuestionText(text: question.text),
              BasicQuestionListOptions(listOptions: listOptions),
            ],
          ),
    );
  }
}

