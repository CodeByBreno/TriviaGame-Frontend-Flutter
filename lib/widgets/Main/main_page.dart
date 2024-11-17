import 'package:flutter/material.dart';
import 'package:trivia_game/utils/generic_page.dart';
import 'package:trivia_game/widgets/home/widgets/button.dart';
import 'package:trivia_game/widgets/Main/Widgets/background_main_page.dart';
import 'package:trivia_game/widgets/Main/Widgets/minor_button_main_page.dart';
import 'package:trivia_game/widgets/Main/Widgets/begin_button_main_page.dart';
import 'package:trivia_game/widgets/widgets_questions/default_container.dart';
import 'package:trivia_game/widgets/Main/Widgets/random_question_main_page.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
// ignore: prefer_const_literals_to_create_immutables


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      DefaultContainer(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        content: 
          Stack(
            children: [
              const BackgroundMainPage(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const BeginButtonMainPage(),
                  const SizedBox(height: 15),
                  const RandomQuestionMainPage(),
                ],
              ),
              Positioned(
                top: 485,
                left: 170,
                child:
                  Column(
                    children: [
                      MinorButtonMainPage(targetPage: GenericPage()),
                      SizedBox(height: 10),
                      MinorButtonMainPage(targetPage: GenericPage()),
                      SizedBox(height: 10),
                      MinorButtonMainPage(targetPage: GenericPage()),
                    ],
                  )
              ),
            ],
          )
      );
  }
}