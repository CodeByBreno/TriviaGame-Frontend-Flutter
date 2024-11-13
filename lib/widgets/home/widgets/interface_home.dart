import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/home/widgets/button.dart';

class InterfaceHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          const Text(
            "Trivia Game",
            style: TextStyle(fontSize: 35),
          ),
          const Text("Vale do São Francisco"),
          const Expanded(child: SizedBox()),
          MainButton(text: "Começar", color: Colors.green),
          SizedBox(height: 60),
      ],
    );
  }
}