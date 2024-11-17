import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundCoverSVG extends StatelessWidget {
  final String image;

  const BackgroundCoverSVG({
    super.key, 
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return 
      SvgPicture.asset(
        image,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      );
  }
}