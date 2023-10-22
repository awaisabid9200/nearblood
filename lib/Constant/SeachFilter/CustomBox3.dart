import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../ProfileView/ContColor.dart';

class CustomBox3 extends StatelessWidget {
  final String svgAsset; // SVG image asset path
  final String text;
  final Color color;
  final String heading;

  CustomBox3({
    required this.svgAsset,
    required this.text,
    required this.color,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth <= 400 ? 300 : 347;
    double fontSize = screenWidth <= 400 ? 11.0 : 13.0;
    double iconSize = screenWidth <= 400 ? 20 : 22;

    return Padding(
      padding: const EdgeInsets.all(19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextStyle(
              fontSize: screenWidth <= 400 ? 10 : 12,
              color: Heading2,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 14),
          Container(
            width: containerWidth,
            height: 55,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 26, right: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: fontSize,
                      color: Heading1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SvgPicture.asset(
                    svgAsset,
                    height: iconSize,
                    width: iconSize,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
