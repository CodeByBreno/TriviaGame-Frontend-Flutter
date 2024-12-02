import 'package:flutter/material.dart';
import 'package:trivia_game/config/global.dart';
import 'package:trivia_game/widgets/background_default_image.dart';

class DefaultContainer extends StatelessWidget {
  final Widget content;
  final EdgeInsetsGeometry? padding;

  const DefaultContainer({
    super.key, 
    required this.content,
    this.padding
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Center(
          child: 
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 440),
              child:
                Stack(
                  children: [
                    const DefaultBackgroundImage(),
                    Center(
                      child: 
                      Container(
                        padding: padding ?? DEFAULT_PADDING,
                        child: content,
                      )
                    )
                  ],
                ),
            ), 
        )
      );
  }
}
