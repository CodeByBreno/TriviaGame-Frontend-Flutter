import 'package:flutter/material.dart';
import 'package:trivia_game/config/images_project.dart';

class BackgroundMainPage extends StatelessWidget {
  const BackgroundMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child:
              Image.asset(
                ImagesProject.carrancaPNG,
                height: 280,
                fit: BoxFit.fill
              )
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: 
              Image.asset(
                ImagesProject.cactusPNG,
                height: 280, 
                width: 140,
                fit: BoxFit.fill
              ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: 
              Image.asset(
                ImagesProject.tatuPNG,
                height: 120.0,
              ),
          )
        ],
      );
  }
}