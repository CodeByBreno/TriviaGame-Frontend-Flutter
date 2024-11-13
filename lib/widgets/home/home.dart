import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/home/widgets/interface_home.dart';
import 'package:trivia_game/widgets/widgets_questions/background_default.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultBackground(
      content: 
        SizedBox.expand(
          child: 
            InterfaceHome(),
        ),
      );
    }
}