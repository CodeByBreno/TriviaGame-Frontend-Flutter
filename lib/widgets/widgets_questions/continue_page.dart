import 'package:flutter/material.dart';
import 'package:trivia_game/routes.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/widgets/widgets_questions/default_container.dart';

class ContinuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      content: 
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Parabéns! Você acertou!!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Ir para a próxima pergunta?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.question);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 24.0),
                      child: Text(
                        'Continuar',
                        style: TextStyle(fontSize: 18, color: FONT_PRIMARY_LIGHT_COLOR),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ),
    );
  }
}
