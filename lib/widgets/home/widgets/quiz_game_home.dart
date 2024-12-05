import 'package:flutter/material.dart';
import 'package:trivia_game/config/images_project.dart';

class QuizGameHome extends StatelessWidget {
  final double height;
  final double width;

  const QuizGameHome({
    super.key, 
    this.height = 150,
    this.width = 150
  });

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: height * 0.15,
          ),
          child: Image.asset(
            ImagesProject.quizLogoNordestePNG,
            width: width * 0.6, 
          ),
        ),
      );
  }
}