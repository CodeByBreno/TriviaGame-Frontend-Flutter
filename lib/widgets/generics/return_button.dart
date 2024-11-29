import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/main/main_page.dart';
import 'package:trivia_game/widgets/generics/button.dart';

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
                MaterialPageRoute(builder: (context) => MainPage()), 
                (Route<dynamic> route) => false,
              );
            },
          )
      );
  }
}