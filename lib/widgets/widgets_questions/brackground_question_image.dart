import 'package:flutter/material.dart';

class BackgroundQuestionImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      Container(
        width: 240,
        height: 240,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/Interrogation.png"),
            fit: BoxFit.cover,
            )
          ),
      );
  }
}