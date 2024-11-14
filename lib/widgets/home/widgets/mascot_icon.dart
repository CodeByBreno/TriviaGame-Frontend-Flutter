import 'package:flutter/widgets.dart';

class MascotIcon extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return
      Padding(
        padding: EdgeInsets.all(30),
        child: 
          Container(
            width: 250,
            height: 250,
            decoration: 
              const BoxDecoration( 
                image: 
                  DecorationImage(
                    image: AssetImage('assets/img/mascot.png'),
                    fit: BoxFit.cover),
              )
          ),
      );
  }
}