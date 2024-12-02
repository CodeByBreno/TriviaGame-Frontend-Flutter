import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/config/images_project.dart';
import 'package:trivia_game/models/basic_question_model.dart';

class QuestionBox extends StatefulWidget {
  BasicQuestionModel question;

  QuestionBox({
    super.key,  
    required this.question 
  });

  @override
  QuestionBoxState createState() => QuestionBoxState();
}

class QuestionBoxState extends State<QuestionBox> {
  @override
  Widget build(BuildContext context) {
    final text = widget.question.text;
    final image_url = widget.question.image_url; 

   return 
    IntrinsicHeight(
      child: Stack(
        children: [
          Positioned.fill(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: 
                    Container(
                      color: BUTTON_BACKGROUND_COLOR,
                    ),
                ),
                Positioned.fill(
                  child: 
                  Image.asset(
                    ImagesProject.biggerBackgroundXilogravurePNG,
                    fit: BoxFit.fill,
                  ),
                )
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: 
              Column(
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: text.length > 120 ? 14 : 18,
                    ),
                  ),
                  if (image_url != null && image_url.isNotEmpty) 
                    Image.asset(
                      image_url,
                      height: 200,
                      width: 200,
                      fit: BoxFit.contain,
                    ),
                ],
            ),
          ),
        ],
      ),
    );
  }
}