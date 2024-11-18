import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/widgets/generics/box.dart';
import 'package:trivia_game/config/images_project.dart';
import 'package:trivia_game/widgets/generics/return_button.dart';
import 'package:trivia_game/widgets/widgets_questions/default_container.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      content: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ReturnButton(text: "Voltar"),
            const SizedBox(height: 20),
            Box(
              text: "Sobre Nós",
              height: 100,
              width: 240,
              color: BOX_LIGHTER_COLOR,
            ),
            const SizedBox(height: 20),
            const Box(
              text: "Aplicativo desenvolvido a partir da disciplina Engenharia de Software III, com objetivo de auxiliar o aprendizado sobre elementos da ecologia Brasileira, focado no bioma da Caatinga e em elementos do semiárido norderstino",
              height: 320,
              width: 320,
              backgroundImage: ImagesProject.biggerBackgroundXilogravurePNG,
              color: Colors.transparent,
              fontFamily: "Itim",
              fontSize: 18,
              textAlign: TextAlign.justify,
              globalPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              textAligment: Alignment.topLeft,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Box(
                  text: "Desenvolvedores:\nBreno\nHellian\nHiago\nNadjon\nRafael",
                  height: 180,
                  width: 160,
                  fontSize: 15,
                  fontFamily: "Itim",
                  textAlign: TextAlign.center,
                  globalPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                  backgroundImage: ImagesProject.biggerBackgroundXilogravurePNG,
                  color: BOX_LIGHTER_COLOR,
                ),
                const SizedBox(width: 20),
                Box(
                  text: "Orientadores:\nDr. Ricardo Argenton",
                  height: 180,
                  width: 160,
                  fontSize: 15,
                  fontFamily: "Itim",
                  textAlign: TextAlign.center,
                  globalPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                  backgroundImage: ImagesProject.biggerBackgroundXilogravurePNG,
                  color: BOX_LIGHTER_COLOR,
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Versão 1.0.0",
              style: TextStyle(
                fontFamily: "JotiOne",
                fontSize: 22
              ),
            )
          ],
        )
    );
  }
}