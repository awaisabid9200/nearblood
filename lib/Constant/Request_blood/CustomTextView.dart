import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nearblood/Constant/ProfileView/ContColor.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String Svgimag;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final double height;
  final double width;

  CustomTextField({
    required this.hintText,
    required this.Svgimag,
    required this.controller,
    this.keyboardType = TextInputType.text,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double imageWidth = width;
    double imageHeight = height;
    double fontSize = 16.0; // Default font size

    if (screenWidth <= 320) {
      // Adjust image width, height, and font size for smaller screens
      imageWidth = width - 5; // Example adjustment, you can modify it
      imageHeight = height - 5; // Example adjustment, you can modify it
      fontSize = 14.0; // Adjust font size for smaller screens
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: SvgPicture.asset(Svgimag, width: imageWidth, height: imageHeight)),
            SizedBox(width: 20,),
            Expanded(
              flex: 6,
              child: TextField(
                controller: controller,
                keyboardType: keyboardType,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(
                    fontSize: fontSize, // Use the adjusted font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}
