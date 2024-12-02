import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/config/images_project.dart';
import 'package:trivia_game/widgets/components/button.dart';
import 'package:trivia_game/widgets/main_page/main_page.dart';
import 'package:trivia_game/widgets/home/widgets/background_border_home.dart';
import 'package:trivia_game/widgets/widgets_questions/default_container.dart';
class InterfaceHome extends StatelessWidget {
  const InterfaceHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      content: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;
          double height = constraints.maxHeight;

          return Stack(
            children: [
              const BackgroundBorderHome(),
              Container(
                padding: DEFAULT_PADDING,
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: height * 0.02), 
                    Image.asset(
                      ImagesProject.xilogravureHomePagePNG,
                      height: height * 0.4,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: height * 0.005), 
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: height * 0.15,
                        ),
                        child: Image.asset(
                          ImagesProject.quizLogoNordestePNG,
                          width: width * 0.6, 
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.005),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MainPage()),
                            );
                          },
                        ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
