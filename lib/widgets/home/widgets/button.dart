import 'package:flutter/material.dart';
import 'package:trivia_game/jsonText.dart';
import 'package:trivia_game/widgets/basic_question/basic_question.dart';

class MainButton extends StatefulWidget {
  final Color color;
  final Color? textColor; 
  final String text;

  MainButton({
    required this.color,
    required this.text,
    this.textColor,
  });

  @override
  MainButtonState createState() => MainButtonState();
}

class MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return 
      TextButton(
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BasicQuestion()),
          )
        }, 
        child: 
          Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(30),
            ),
            child: 
              Center(
                child: Text(
                  widget.text,
                  style: TextStyle(
                    color: widget.textColor ?? Colors.white,
                    fontSize: 18),
                  ),
              ),
          )
      );
  }
}