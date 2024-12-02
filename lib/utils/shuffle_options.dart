import 'dart:math';
import 'package:trivia_game/widgets/basic_question/tools/option_question_representation.dart';

List<OptionQuestionRepresentation> shuffleOptions(List<OptionQuestionRepresentation> options, String questionType) {
  bool shuffle = false;

  if (questionType == "basic" || questionType == "image" || questionType == "match") {
    shuffle = true;
  }

  if (shuffle) {
    options.shuffle(Random()); 
  }

  return options;
}
