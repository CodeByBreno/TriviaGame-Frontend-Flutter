import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:trivia_game/utils/get_background_image.dart';

class DefaultBackgroundImage extends StatelessWidget {
  final int imageNumber;
  final bool blur;

  DefaultBackgroundImage({
    required this.imageNumber,
    required this.blur,
  });

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: getBackgroundImage(imageNumber),
            fit: BoxFit.cover
          ),
        ),
        child: blur
            ? BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(
                  color: Colors.white.withOpacity(0.1),
                ),
              )
            : null,
      );
  }
}