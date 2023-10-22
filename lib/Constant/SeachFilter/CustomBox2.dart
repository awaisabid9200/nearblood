import 'package:flutter/material.dart';

import '../ProfileView/ContColor.dart';

class CustomBox2 extends StatelessWidget {
  final String text;
  final Color color;

  CustomBox2({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth <= 430 ? 75 : 111;
    double fontSize = screenWidth <= 400 ? 12.0 : 14.0;

    return Expanded(
      child: Container(
        width: containerWidth,
        height: 46,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                color: Heading1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
