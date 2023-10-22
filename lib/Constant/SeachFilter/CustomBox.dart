import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ProfileView/ContColor.dart';

class CustomBox extends StatelessWidget {
  final String svgAsset; // SVG image asset path
  final String text;
  final Color color;

  CustomBox({
    required this.svgAsset,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double boxWidth = screenWidth <= 430 ? 75 : 111;
    double boxHeight = screenWidth <= 400 ? 40 : 46;
    double svgSize = screenWidth <= 400 ? 18 : 22;
    double fontSize = screenWidth <= 400 ? 12.0 : 14.0;

    return Container(
      width: boxWidth,
      height: boxHeight,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgAsset,
            height: svgSize,
            width: svgSize,
          ),
          SizedBox(width: 5.0),
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              color: Heading1,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
