import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/config/images_project.dart';
import 'package:trivia_game/widgets/main/main_page.dart';
import 'package:trivia_game/widgets/generics/button.dart';
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
                children: [
                  const SizedBox(height: 60),
                  Image.asset(
                    ImagesProject.xilogravureHomePagePNG,
                    height: 360,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: 
                      Image.asset(
                        ImagesProject.quizLogoNordestePNG, 
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  MainButton(
                    color: BUTTON_BACKGROUND_COLOR, 
                    text: "Começar!",
                    width: 200,
                    height: 100,
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