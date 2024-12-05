import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/utils/navigation.dart';
import 'package:trivia_game/widgets/menu/main_page.dart';
import 'package:trivia_game/widgets/components/button.dart';

class MainButtonHome extends StatelessWidget {
  final double height;

  const MainButtonHome({
    super.key, 
    this.height = 150
  });

  @override
  Widget build(BuildContext context) {
    return 
      ConstrainedBox(
        constraints: 
          const BoxConstraints(
            minWidth: 100,
            maxWidth: 250,
          ),
        child:
          MainButton(
              color: BUTTON_BACKGROUND_COLOR,
              text: "Começar!",
              fontSize: height * 0.025,
              width: 200, 
              height: 90,
              onPressed: () {
                navigate(context, Menu());
              },
            ),
      );
  }
}