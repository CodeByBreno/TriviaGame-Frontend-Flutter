import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/components/box.dart';

class MainButton extends StatefulWidget {
  final Color? color;
  final Color? textColor; 
  final String text;
  final double? height;
  final double? width;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;

  const MainButton({
    super.key, 
    this.color,
    required this.text,
    this.textColor,
    this.height,
    this.width,
    required this.onPressed,
    this.padding,
    this.fontSize
  });

  @override
  MainButtonState createState() => MainButtonState();
}

class MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return 
      TextButton(
        onPressed: widget.onPressed, 
        child: 
          Box(
            color: widget.color, 
            textColor: widget.textColor,
            text: widget.text,
            height: widget.height,
            width: widget.width,
            padding: widget.padding,
            fontSize: widget.fontSize)
      );
  }
}