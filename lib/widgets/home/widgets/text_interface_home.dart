import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';

class TextInterfaceHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  
        Container(
          width: 250,
          child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  TITLE_HOME,
                  style: 
                    TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: FONT_PRIMARY_DARK_COLOR
                    ),
                ),
                const SizedBox(height: 5),
                Text(
                  CAPTION_HOME,
                  style: 
                    TextStyle(
                      fontSize: 13,
                      color: FONT_PRIMARY_DARK_COLOR,
                    ),
                  ),
                ]
              ),
        );
  }
}