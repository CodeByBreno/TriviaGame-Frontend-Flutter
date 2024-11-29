import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/basic_question/widgets/check_box_basic_question.dart';

class ResultsRow extends StatefulWidget {
  final List<String> challengeResults;

  const ResultsRow({
    super.key, 
    required this.challengeResults,
  });

  @override
  ResultsRowState createState() => ResultsRowState();
}

class ResultsRowState extends State<ResultsRow> {
  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: 
            widget.challengeResults
            .map((entry) => CheckBoxBasicQuestion(type: entry))
            .toList(),
      );
  }
}