import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/config/images_project.dart';
import 'package:trivia_game/widgets/main/main_page.dart';
import 'package:trivia_game/widgets/generics/button.dart';
import 'package:trivia_game/utils/percentage_dimensions.dart';
import 'package:trivia_game/widgets/home/widgets/background_border_home.dart';
import 'package:trivia_game/widgets/widgets_questions/default_container.dart';

class InterfaceHome extends StatelessWidget {
  const InterfaceHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      content: 
        Stack( 
          children: [
            const BackgroundBorderHome(),
            Container(
              padding: DEFAULT_PADDING,
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: getHeightPercentage(context, 2)),
                  Image.asset(
                    ImagesProject.xilogravureHomePagePNG,
                    height:  getHeightPercentage(context, 40),
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: getHeightPercentage(context, 1)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: ConstrainedBox(
                      constraints: 
                        BoxConstraints(
                          maxHeight: getHeightPercentage(context, 15),
                        ),
                      child: Image.asset(
                        ImagesProject.quizLogoNordestePNG,
                        width: getWidthPercentage(context, 60),
                      ),
                    ),
                  ),
                  SizedBox(height: getHeightPercentage(context, 1)),
                  MainButton(
                    color: BUTTON_BACKGROUND_COLOR, 
                    text: "Começar!",
                    fontSize: getHeightPercentage(context, 2.5),
                    width: getHeightPercentage(context, 22),
                    height: getHeightPercentage(context, 8),
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => MainPage()),
                      );
                    }
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}