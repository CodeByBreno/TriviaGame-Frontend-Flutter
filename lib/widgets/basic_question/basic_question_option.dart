import 'package:flutter/material.dart';

class BasicQuestionOption extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double height;
  final double width;
  final double fontSize;

  BasicQuestionOption({
    required this.text,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.fontSize,
    this.color = Colors.white, 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize),
          ),
        ),)
      ),
    );
  }
}
