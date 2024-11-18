import 'package:trivia_game/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_game/widgets/basic_question/operators/challenge_provider.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ChallengeProvider(10)),
        ],
        child: App()
      ),
    );
}