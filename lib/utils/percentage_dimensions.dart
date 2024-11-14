import 'package:flutter/material.dart';

double getWidthPercentage(BuildContext context, double percentage) {
  return MediaQuery.of(context).size.width * (percentage / 100);
}

double getHeightPercentage(BuildContext context, double percentage) {
  return MediaQuery.of(context).size.height * (percentage / 100);
}
