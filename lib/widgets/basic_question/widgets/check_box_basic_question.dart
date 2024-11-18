import 'package:flutter/material.dart';
import 'package:trivia_game/config/images_project.dart';

class CheckBoxBasicQuestion extends StatelessWidget {
  final String type;

  const CheckBoxBasicQuestion({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    String imagePath;

    switch (type) {
      case "correct":
        imagePath = ImagesProject.positiveCheckPNG;
      case "incorrect":
        imagePath = ImagesProject.negativeCheckPNG;
      default:
        imagePath = ImagesProject.checkBoxPNG;
    }

    return 
      Image.asset(
        imagePath,
        height: 36,
      );
  }
}