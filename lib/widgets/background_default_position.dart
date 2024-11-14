import 'package:flutter/material.dart';
import 'package:trivia_game/utils/hex_color.dart';
import 'package:trivia_game/widgets/background_default_image.dart';

class BackgroundDefaultPosition extends StatelessWidget {
  final int imageNumber;
  final bool blur;

  BackgroundDefaultPosition({
    required this.imageNumber,
    this.blur = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [hexColor("FFFFFF"), hexColor("A5EBFF")],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: SizedBox(
            height: 400,
            child: DefaultBackgroundImage(
              imageNumber: imageNumber,
              blur: blur,
            ),
          ),
        ),
      ],
    );
  }
}
