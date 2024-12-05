import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/widgets/home/widgets/quiz_game_home.dart';
import 'package:trivia_game/widgets/home/widgets/xilogravure_home.dart';
import 'package:trivia_game/widgets/home/widgets/main_button_home.dart';
import 'package:trivia_game/widgets/home/widgets/background_border_home.dart';
import 'package:trivia_game/widgets/widgets_questions/default_container.dart';
class InterfaceHome extends StatelessWidget {
  const InterfaceHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      content: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;
          double height = constraints.maxHeight;

          return Stack(
            children: [
              const BackgroundBorderHome(),
              Container(
                padding: DEFAULT_PADDING,
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: height * 0.02), 
                    XilogravureHome(height: height),
                    SizedBox(height: height * 0.005), 
                    QuizGameHome(height: height, width: width),
                    SizedBox(height: height * 0.005),
                    MainButtonHome(height: height)
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
