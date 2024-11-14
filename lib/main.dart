import 'package:trivia_game/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_game/basic_question_notifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => BasicQuestionNotifier(),
        child: App()
      ),
  );
}