import 'package:trivia_game/models/basic_question_model.dart';

Map<String, dynamic> jsonTestParsed = {
  'id_basic_question': '12345',
  'text': 'Qual destas árvores é nativa da Caatinga, uma vegetação típica da região do Nordeste do Brasil?',
  'image_url': null,
  'QUESTION': '1',
  'options': [
    {
      'id_option_question': 'opt1',
      'text': 'Aroeira',
      'correct': true,
      'type': 'basic',
      'equivalent_option_id': null,
      'question_id': '12345',
    },
    {
      'id_option_question': 'opt2',
      'text': 'Eucalipto',
      'correct': false,
      'type': 'basic',
      'equivalent_option_id': null,
      'question_id': '12345',
    },
    {
      'id_option_question': 'opt3',
      'text': 'Pinheiro',
      'correct': false,
      'type': 'basic',
      'equivalent_option_id': null,
      'question_id': '12345',
    },
    {
      'id_option_question': 'opt4',
      'text': 'Mangueira',
      'correct': false,
      'type': 'basic',
      'equivalent_option_id': null,
      'question_id': '12345',
    },
  ],
  'type': 'basic',
  'time': 30.0,
};

BasicQuestionModel testQuestion = BasicQuestionModel.fromMap(jsonTestParsed);