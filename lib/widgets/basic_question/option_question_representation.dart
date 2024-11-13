import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/models/option_question.dart';

class OptionQuestionRepresentation {
  final OptionQuestionModel option;

  Color? highlightColor;
  bool isSelected;
  bool active;

  OptionQuestionRepresentation({
    required this.option,
    this.highlightColor,
    this.isSelected = false,
    this.active = true
  });
}