import 'package:flutter/material.dart';

double getHeightForOptionDimension(String dimension) {
  switch (dimension) {
    case "big":
      return 80;
    case "medium":
      return 70;
    case "small":
      return 60;
    default:
      return 60;
  }
}

double getWidthtForOptionDimension(String dimension) {
  switch (dimension) {
    case "big":
      return 360;
    case "medium":
      return 320;
    case "small":
      return 280;
    default:
      return 280;
  }
}

double getFontSizeForOptionDimension(String dimension) {
  switch (dimension) {
    case "big":
      return 14;
    case "medium":
      return 16;
    case "small":
      return 18;
    default:
      return 18;
  }
}

String getDimension(int dimension) {
  switch (dimension) {
    case 1:
      return "small";
    case 2:
      return "medium";
    case 3:
      return "big";
    default:
      return "small";
  }
}