import 'package:trivia_game/config/server.dart';
import 'package:trivia_game/models/basic_question_model.dart';

class BasicQuestionController { 
  static final BasicQuestionController _instance = BasicQuestionController._internal();

  factory BasicQuestionController() => _instance;

  BasicQuestionController._internal();


  Future<BasicQuestionModel> getOneRandomBasicQuestion() async{
    final basicQuestion = await fetchAPI('/question/random') as Map<String, dynamic>;
    return BasicQuestionModel.fromMap(basicQuestion); 
  }

  Future<List<BasicQuestionModel>> getSomeRandomBasicQuestion(int take) async {
    final someBasicQuestions = await fetchAPI('/question/random') as List<dynamic>;
    return someBasicQuestions
            .map((question) => BasicQuestionModel.fromMap(question as Map<String, dynamic>))
            .toList();
  }
}