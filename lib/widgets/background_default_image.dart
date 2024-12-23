import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trivia_game/config/images_project.dart';

class DefaultBackgroundImage extends StatelessWidget {
  const DefaultBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      SvgPicture.asset(
        ImagesProject.backgroundDefault,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      );
  }
}