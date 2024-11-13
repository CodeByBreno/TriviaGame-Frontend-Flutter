import 'dart:ui';
import 'package:flutter/material.dart';

class DefaultBackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
        SizedBox.expand(
          child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/background_vale_sao_francisco.png"),
              fit: BoxFit.cover,
              )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: 
                Container(
                  color: Colors.white.withOpacity(0.1)
                )
              )
            )
        );
  }
}