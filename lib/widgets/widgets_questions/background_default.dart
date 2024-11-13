import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/background_default_image.dart';

class DefaultBackground extends StatelessWidget {
  final Widget content;

  DefaultBackground({
    required this.content
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackgroundImage(),
          content,
        ],
      ),
    );
  }
}