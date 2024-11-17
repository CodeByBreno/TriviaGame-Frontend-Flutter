import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/widgets_questions/default_container.dart';

class GenericPage extends StatelessWidget {
  const GenericPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(content: Text("banana"));
  }
}