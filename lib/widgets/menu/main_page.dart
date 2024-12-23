import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/about/about_us.dart';
import 'package:trivia_game/utils/percentage_dimensions.dart';
import 'package:trivia_game/widgets/menu/widgets/background_main_page.dart';
import 'package:trivia_game/widgets/widgets_questions/default_container.dart';
import 'package:trivia_game/widgets/menu/widgets/minor_button_main_page.dart';
import 'package:trivia_game/widgets/menu/widgets/begin_button_main_page.dart';
import 'package:trivia_game/widgets/menu/widgets/random_question_main_page.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        double height = constraints.maxHeight;

        return DefaultContainer(
          padding: EdgeInsets.symmetric(
            horizontal: 10, 
            vertical: height * 0.05
          ),
          content: 
            SizedBox(
              child: 
                Stack(
                  children: [
                    const BackgroundMainPage(),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: 
                        BeginButtonMainPage(),
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: 
                        RandomQuestionMainPage(),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child:
                        Column(
                          children: [
                            const Expanded(child: SizedBox()),
                            const MinorButtonMainPage(targetPage: AboutUs()),
                            SizedBox(height: getHeightPercentage(context, 22))
                          ],
                        ),
                    )
                  ],
                ),
            ),
        );
      },
    );
  }
}