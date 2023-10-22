import 'package:flutter/material.dart';
import 'package:nearblood/Constant/ProfileView/ContColor.dart';

class CustomTextWithIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final String subtitle;

  CustomTextWithIcon({
    required this.text,
    required this.icon,
    required this.iconSize,
    required this.iconColor,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double fontSize = 20.0; // Default font size for text
    double subtitleFontSize = 13.0; // Default font size for subtitle

    // Apply a media query to adjust the font size based on screen width
    if (screenWidth <= 320) {
      fontSize = 18.0; // Adjust font size for smaller screens
      subtitleFontSize = 12.0; // Adjust subtitle font size for smaller screens
    }

    return Row(
      children: [
        IconButton(
          iconSize: iconSize,
          color: iconColor, onPressed: () { Navigator.pop(context); }, icon: Icon(icon),
        ),
        SizedBox(
          width: 19,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Heading1,
                fontSize: fontSize, // Use the adjusted font size
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Heading2,
                fontSize: subtitleFontSize, // Use the adjusted subtitle font size
              ),
            )
          ],
        ),
      ],
    );
  }
}
