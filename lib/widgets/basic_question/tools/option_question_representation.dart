import 'package:flutter/material.dart';
import 'package:trivia_game/models/option_question.dart';

class OptionQuestionRepresentation {
  final OptionQuestionModel option;

  Color? highlightColor;
  bool isSelected;
  bool active;

  String result;

  OptionQuestionRepresentation({
    required this.option,
    this.highlightColor,
    this.isSelected = false,
    this.active = true,
    this.result = "pending"
  });
}