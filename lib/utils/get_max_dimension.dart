import 'package:trivia_game/widgets/basic_question/representations/option_question_representation.dart';

int getMaxDimension(List<OptionQuestionRepresentation> listOptionsRepresentation) {
  int dimension = 0; 
  int maxDimension = 0;

  for (var optionRepresentation in listOptionsRepresentation) {
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
  }

  return maxDimension;
}