import 'package:flutter/material.dart';

class BasicQuestionOption extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double? height;
  final double? width;

  BasicQuestionOption({
    required this.text,
    required this.onPressed,
    this.color = Colors.white, 
    this.height = 60,
    this.width = 320,
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
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
