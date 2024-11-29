import 'package:flutter/material.dart';
import 'package:trivia_game/config/images_project.dart';

class QuestionText extends StatefulWidget {
  String text;

  QuestionText({
    super.key,  
    required this.text 
  });

  @override
  QuestionTextState createState() => QuestionTextState();
}

class QuestionTextState extends State<QuestionText> {
  @override
  Widget build(BuildContext context) {
    final text = widget.text;

    return 
      SizedBox(
        width: 380,
        height: 300,
        child:
          Stack(
            children: [
              Image.asset(
                ImagesProject.biggerBackgroundXilogravurePNG,
                width: 400,
                height: 300,
                fit: BoxFit.fill
              ),
              Padding(
                  padding: const EdgeInsets.all(30),
                  child: 
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: text.length > 120 ? 14 : 18,
                      ),
                    ),
                )
            ]
        ),
      );
  }
}