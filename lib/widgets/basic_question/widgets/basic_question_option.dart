import 'package:flutter/material.dart';

class BasicQuestionOption extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double height;
  final double width;
  final double fontSize;
  final bool enable;

  BasicQuestionOption({
    super.key, 
    required this.text,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.fontSize,
    this.color = Colors.white, 
    this.enable = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enable ? onPressed : null,
      child: 
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black,
              width: 1
            )
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
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
