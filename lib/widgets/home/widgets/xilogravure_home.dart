import 'package:flutter/material.dart';
import 'package:trivia_game/config/images_project.dart';

class XilogravureHome extends StatelessWidget {
  final double height;

  const XilogravureHome({
    super.key,
    this.height = 150,
  });

  @override
  Widget build(BuildContext context) {
    return 
      Image.asset(
        ImagesProject.xilogravureHomePagePNG,
        height: height * 0.4,
        fit: BoxFit.fill,
      );
  }
}