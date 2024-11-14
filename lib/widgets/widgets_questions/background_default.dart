import 'dart:math';
import 'package:flutter/material.dart';
import 'package:trivia_game/utils/get_background_image.dart';
import 'package:trivia_game/widgets/background_default_position.dart';


class DefaultBackground extends StatelessWidget {
  final Widget content;
  final bool blur;

  DefaultBackground({
    required this.content,
    this.blur = false
  });

  @override
  Widget build(BuildContext context) {
    final imageNumber = Random().nextInt(imagesBackground.length);

    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            BackgroundDefaultPosition(imageNumber: imageNumber, blur: blur),
            Center(
              child: content,
            ),
          ],
        ),
      ),
    );
  }
}
