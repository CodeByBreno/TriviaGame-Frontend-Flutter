import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/config/images_project.dart';

class Box extends StatelessWidget {
  final Color? color;
  final Color? textColor; 
  final String text;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? globalPadding;
  final double? fontSize;
  final String? fontFamily;
  final String? backgroundImage;
  final TextAlign? textAlign;
  final Alignment? textAligment;

  const Box({
    super.key, 
    this.color,
    required this.text,
    this.textColor,
    this.height,
    this.width,
    this.padding,
    this.globalPadding,
    this.fontSize,
    this.fontFamily,
    this.backgroundImage,
    this.textAlign,
    this.textAligment
  });

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        width: width ?? 300,
        height: height ?? 60,
        child: 
          Stack(
            children: [
              Padding(
                padding: globalPadding ?? EdgeInsets.symmetric(
                  horizontal: (width ?? 300)/12, 
                  vertical: (height ?? 60)/8),
                child:
                  Container(
                    color: color ?? BUTTON_BACKGROUND_COLOR,
                    padding: padding,
                    child: 
                      Align(
                        alignment: textAligment ?? Alignment.center,
                        child: Text(
                          text,
                          style: TextStyle(
                            color: textColor ?? Colors.black,
                            fontFamily: fontFamily ?? 'JotiOne',
                            fontSize: fontSize ?? 24,
                          ),
                          textAlign: textAlign ?? TextAlign.start,
                        ),
                      )
                  ),
              ),
              Image.asset(
                backgroundImage?? ImagesProject.mediumBorderXilogravurePNG,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
            ],
          ),
      );
  }
}