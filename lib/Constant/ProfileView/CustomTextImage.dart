import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nearblood/Constant/ProfileView/ContColor.dart';

class CustomTextWithImage extends StatelessWidget {
  final String text1;
  final String text2;
  final String svgImagePath;

  CustomTextWithImage({
    required this.text1,
    required this.text2,
    required this.svgImagePath,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double fontSizeText1 = 14.0; // Default font size for text1
    double fontSizeText2 = 18.0; // Default font size for text2

    // Apply a media query to adjust font sizes based on screen width
    if (screenWidth <= 320) {
      fontSizeText1 = 12.0;
      fontSizeText2 = 16.0;
    }

    return Padding(
      padding: const EdgeInsets.only(left: 0,),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              svgImagePath,
              width: 22.0, // Adjust image size as needed
              height: 22.0, // Icon color
            ),
          ),
          SizedBox(width: 36.0), // Adjust spacing between image and text
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: fontSizeText1, // Use the adjusted font size
                    color: Heading2,
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: fontSizeText2, // Use the adjusted font size
                    color: Heading1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

