import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/generics/button.dart';

class MinorButtonMainPage extends StatelessWidget {
  final Widget targetPage;
  final Color? color;

  const MinorButtonMainPage({
    super.key,
    required this.targetPage,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return 
      MainButton(
        color: color,
        width: 220,
        height: 80,
        text: "Sobre o App", 
        fontSize: 18,
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => targetPage)
          );
        }
      );
  }
}