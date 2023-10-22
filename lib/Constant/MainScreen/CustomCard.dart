import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nearblood/Constant/MainScreen/MainScreenColor.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback onPressed; // Function to be called when the card is pressed

  CustomCard({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.onPressed, // Pass the onPressed function as a parameter
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Define properties based on screen width
    double imageHeight = screenWidth <= 320 ? 38 : 54;
    double imageWidth = screenWidth <= 320 ? 40 : 56;
    double titleFontSize = screenWidth <= 320 ? 14 : 22;
    double descriptionFontSize = screenWidth <= 320 ? 10 : 12;

    return GestureDetector(
      onTap: onPressed, // Call the onPressed function when the card is tapped
      child: Card(
        elevation: 0, // No elevation
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: BoarderColor), // Border color
        ),
        color: Colors.white, // Background color
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                imagePath,
                height: imageHeight,
                width: imageWidth,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: titleFontSize, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(fontSize: descriptionFontSize, color: SmalltextColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
