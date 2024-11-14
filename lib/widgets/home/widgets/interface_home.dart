import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/utils/hex_color.dart';
import 'package:trivia_game/utils/percentage_dimensions.dart';
import 'package:trivia_game/widgets/home/widgets/button.dart';
import 'package:trivia_game/widgets/home/widgets/mascot_icon.dart';
import 'package:trivia_game/widgets/home/widgets/text_interface_home.dart';
import 'package:trivia_game/widgets/widgets_questions/background_default.dart';

class InterfaceHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultBackground(
      content: 
        Center(
          child: 
            Container(
              alignment: Alignment.center,
              width: getWidthPercentage(context, 80),
              height: getHeightPercentage(context, 62),
              decoration: const BoxDecoration( 
                color: OPTION_BACKGROUND_COLOR_DEFAULT,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: 
                Column(
                  children: [
                    MascotIcon(),
                    TextInterfaceHome(),
                    const SizedBox(height: 15),
                    MainButton(color: hexColor("#21B7FF"), text: "Começar!"),
                    const SizedBox(height: 15),
                  ]
                ),
            ),
        )
    );
  }
}