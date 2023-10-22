import 'package:flutter/material.dart';
import 'package:nearblood/Constant/DonorList/DonorColors.dart';

class CustomGradientButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Function onPressed;
  final double height;
  final double weight;

  CustomGradientButton({
    required this.text,
    required this.iconData,
    required this.onPressed,
    required this.height,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double fontSize = 20.0; // Default font size

    // Apply a media query to adjust the font size based on screen width
    if (screenWidth <= 320) {
      fontSize = 18.0;
    }

    return GestureDetector(
      onTap: () {
        if (onPressed != null) {
          onPressed();
        }
      },
      child: Container(
        width: weight, // Adjust width as needed
        height: height, // Adjust height as needed
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [BtnLin1, BtnLin2], // Gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 26,
              color: Colors.white, // Icon color
            ),
            SizedBox(width: 5.0), // Adjust spacing between icon and text
            Text(
              text,
              style: TextStyle(
                color: BackColor, // Text color
                fontSize: fontSize, // Use the adjusted font size
                fontWeight: FontWeight.w500, // Adjust font weight as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
