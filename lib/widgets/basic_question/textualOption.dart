import 'package:flutter/material.dart';

class TextualOption extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color; // Adiciona o parâmetro de cor

  TextualOption({
    required this.text,
    required this.onPressed,
    this.color = Colors.white, // Valor padrão é branco
  });

  @override
  TextualOptionState createState() => TextualOptionState();
}

class TextualOptionState extends State<TextualOption> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: 60,
        width: 320,
        decoration: BoxDecoration(
          color: widget.color, // Usa a cor fornecida
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}