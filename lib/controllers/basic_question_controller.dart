import 'package:trivia_game/config/server.dart';
import 'package:trivia_game/models/basic_question_model.dart';

class BasicQuestionController { 
  static final BasicQuestionController _instance = BasicQuestionController._internal();

  factory BasicQuestionController() => _instance;

  BasicQuestionController._internal();


  Future<BasicQuestion> getOneRandomBasicQuestion() async{
    final basicQuestion = await fetchAPI('/question/random') as Map<String, dynamic>;
    return BasicQuestion.fromMap(basicQuestion); 
  }

  Future<List<BasicQuestion>> getSomeRandomBasicQuestion(int take) async {
    final someBasicQuestions = await fetchAPI('/question/random') as List<dynamic>;
    return someBasicQuestions
            .map((question) => BasicQuestion.fromMap(question as Map<String, dynamic>))
            .toList();
  }
}