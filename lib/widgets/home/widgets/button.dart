import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/config/images_project.dart';
import 'package:trivia_game/widgets/basic_question/basic_question.dart';

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
          SizedBox(
            width: widget.width ?? 300,
            height: widget.height ?? 60,
            child: 
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: (widget.width ?? 300)/12, 
                      vertical: (widget.height ?? 60)/8),
                    child:
                      Container(
                        color: widget.color ?? BUTTON_BACKGROUND_COLOR,
                        padding: widget.padding,
                        child: 
                          Center(
                            child: Text(
                              widget.text,
                              style: TextStyle(
                                color: widget.textColor ?? Colors.black,
                                fontFamily: 'JotiOne',
                                fontSize: widget.fontSize ?? 24),
                              ),
                          ),
                      ),
                  ),
                  Image.asset(
                    ImagesProject.mediumBorderXilogravurePNG,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
          )
      );
  }
}