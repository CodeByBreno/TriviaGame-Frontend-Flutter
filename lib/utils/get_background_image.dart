 import 'package:flutter/material.dart';

const imagesBackground = [
  AssetImage("assets/img/vale_sao_francisco.png"),
  AssetImage("assets/img/petrolina.png"),
  AssetImage("assets/img/carrancas.png"),
];

AssetImage getBackgroundImage(int imageNumber){
  return imagesBackground[imageNumber];
}