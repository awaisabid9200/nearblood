import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nearblood/Constant/ProfileView/ContColor.dart';

class CustomColoredBox extends StatelessWidget {
  final Color backgroundColor;
  final SvgPicture svgImage;
  final String text;

  CustomColoredBox({
    required this.backgroundColor,
    required this.svgImage,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define properties based on screen size
    double boxHeight = screenWidth <= 320 ? 80 : 96;
    double boxWidth = screenWidth <= 320 ? 60 : 80;
    double textSize = screenWidth <= 375 ? 14 : 18;
    double spacing = screenWidth <= 320 ? 6.0 : 10.0;

    return Container(
      height: boxHeight,
      width: boxWidth,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          svgImage,
          SizedBox(height: spacing),
          Text(
            text,
            style: TextStyle(
              color: Heading1,
              fontSize: textSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
