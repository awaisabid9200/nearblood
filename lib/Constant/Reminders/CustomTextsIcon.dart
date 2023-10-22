import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nearblood/Constant/ProfileView/ContColor.dart';

class CustomTextIcon extends StatelessWidget {
  final String svgImage;
  final String text1;
  final String text2;

  CustomTextIcon({
    required this.svgImage,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double iconSize = screenWidth <= 400 ? 16.0 : 18.0;
    double text1FontSize = screenWidth <= 400 ? 11.0 : 13.0;
    double text2FontSize = screenWidth <= 400 ? 14.0 : 16.0;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          svgImage,
          height: iconSize,
          width: iconSize,
        ),
        SizedBox(width: 12.0), // Adjust the spacing as needed
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: TextStyle(
                fontSize: text1FontSize,
                color: Heading2,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              text2,
              style: TextStyle(
                fontSize: text2FontSize,
                color: Heading1,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 2,
              width: screenWidth * 0.6, // Adjust the width as needed
              color: Colors.black12,
            ),
          ],
        ),
      ],
    );
  }
}
