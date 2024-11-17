import 'package:flutter/material.dart';
import 'package:trivia_game/config/images_project.dart';

class BackgroundBorderHome extends StatelessWidget {
  const BackgroundBorderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        Image.asset(
          ImagesProject.biggerBackgroundXilogravurePNG,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill
        );
  }
}