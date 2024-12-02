import 'package:trivia_game/widgets/basic_question/tools/option_question_representation.dart';

double getHeightForOptionDimension(String dimension) {
  switch (dimension) {
    case "big":
      return 80;
    case "medium":
      return 70;
    case "small":
      return 60;
    default:
      return 60;
  }
}

double getWidthtForOptionDimension(String dimension) {
  switch (dimension) {
    case "big":
      return 360;
    case "medium":
      return 320;
    case "small":
      return 280;
    default:
      return 280;
  }
}

double getFontSizeForOptionDimension(String dimension) {
  switch (dimension) {
    case "big":
      return 14;
    case "medium":
      return 16;
    case "small":
      return 18;
    default:
      return 16;
  }
}

String getDimension(int dimension) {
  switch (dimension) {
    case 1:
      return "small";
    case 2:
      return "medium";
    case 3:
      return "big";
    default:
      return "small";
  }
}

String getMaxDimension(List<OptionQuestionRepresentation> listOptionsRepresentation) {
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

  String dimensionString = getDimension(maxDimension);

  return dimensionString;
}
