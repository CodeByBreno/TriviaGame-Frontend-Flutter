import 'package:flutter/material.dart';
import 'package:trivia_game/config/images_project.dart';

class RandomImagebackground extends StatelessWidget {
  const RandomImagebackground({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Image.asset(
        ImagesProject.getRandomBackground(),
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      );
  }
}