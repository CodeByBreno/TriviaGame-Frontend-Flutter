import 'package:flutter/material.dart';
import 'package:trivia_game/config/images_project.dart';

class BackgroundMainPage extends StatelessWidget {
  const BackgroundMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Stack(
        children: [
          Positioned(
            top: 20,
            left: 275,
            child: 
              Image.asset(
                ImagesProject.carrancaPNG,
                height: 280,
                fit: BoxFit.fill
              ),
          ),
          Positioned(
            top: 480,
            right: 235,
            child: 
              Image.asset(
                ImagesProject.cactusPNG,
                height: 280, 
                width: 140,
                fit: BoxFit.fill
              ),
          ),
        ],
      );
  }
}