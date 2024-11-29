import 'package:trivia_game/widgets/home/home.dart';
import 'package:trivia_game/widgets/basic_question/basic_question.dart';
import 'package:trivia_game/widgets/widgets_questions/continue_page.dart';
import 'package:trivia_game/widgets/basic_question/tools/question_manager.dart';

var routes = {
  '/': (context) => const HomePage(),
  '/question': (context) => BasicQuestion(challenge: QuestionManager.getChallenge(10)),
  '/proximaPagina': (context) => ContinuePage(),
};

class MyRoutes{
  static const String home = '/';
  static const String question = '/question';
  static const String proximaPagina = '/proximaPagina';
}