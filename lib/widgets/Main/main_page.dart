import 'package:flutter/material.dart';
import 'package:trivia_game/config/images_project.dart';
import 'package:trivia_game/widgets/about/about_us.dart';
import 'package:trivia_game/widgets/Main/Widgets/background_main_page.dart';
import 'package:trivia_game/widgets/Main/Widgets/minor_button_main_page.dart';
import 'package:trivia_game/widgets/Main/Widgets/begin_button_main_page.dart';
import 'package:trivia_game/widgets/widgets_questions/default_container.dart';
import 'package:trivia_game/widgets/Main/Widgets/random_question_main_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      DefaultContainer(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        content: 
          Stack(
            children: [
              const BackgroundMainPage(),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  BeginButtonMainPage(),
                  SizedBox(height: 15),
                  RandomQuestionMainPage(),
                ],
              ),
              const Positioned(
                top: 485,
                left: 170,
                child:
                  Column(
                    children: [
                      MinorButtonMainPage(targetPage: AboutUs()),
                      SizedBox(height: 10),
                    ],
                  )
              ),
              Positioned(
                top: 610,
                left: 180,
                child:
                  Image.asset(
                    ImagesProject.tatuPNG,
                    height: 150,
                  )
              ),
            ],
          )
      );
  }
}