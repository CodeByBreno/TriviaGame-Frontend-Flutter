import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/menu/main_page.dart';
import 'package:trivia_game/widgets/components/button.dart';

class ReturnButton extends StatelessWidget {
  final String? text;

  ReturnButton({
    this.text
  });

  @override
  Widget build(BuildContext context) {
    return 
      Align(
        alignment: Alignment.topRight,
        child: 
          MainButton(
            text: text ?? "Sair", 
            height: 50,
            width: 100,
            fontSize: 20,
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Menu()), 
                (Route<dynamic> route) => false,
              );
            },
          )
      );
  }
}