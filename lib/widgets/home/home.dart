import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/home/widgets/interface_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: const InterfaceHome(),
          )),
    );
    }
}