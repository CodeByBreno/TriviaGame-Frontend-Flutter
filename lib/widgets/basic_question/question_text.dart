import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/widgets_questions/brackground_question_image.dart';

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
      Container(
        width: 380,
        height: 300,
        child:
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: BackgroundQuestionImage(),
              ),
              Padding(
                  padding: const EdgeInsets.all(30),
                  child: 
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                )
            ]
        ),
      );
  }
}