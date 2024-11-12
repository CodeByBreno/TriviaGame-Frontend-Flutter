import 'package:trivia_game/widgets/home/home.dart';
import 'package:trivia_game/widgets/questions/question1.dart';
import 'package:trivia_game/widgets/questions/continuePage.dart';

var routes = {
  '/': (context) => HomePage(),
  '/question': (context) => Question1(),
  '/proximaPagina': (context) => ContinuePage(),
};

class MyRoutes{
  static const String home = '/';
  static const String question = '/question';
  static const String proximaPagina = '/proximaPagina';
}