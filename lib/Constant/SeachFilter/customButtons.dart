import 'package:flutter/material.dart';

class CustomGradientButton2 extends StatelessWidget {
  final String text;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final double border;
  final VoidCallback onPressed;

  CustomGradientButton2({
    required this.text,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
    required this.border,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2], // Gradient colors (color1 and color2)
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(
            color: color3, // Border color (color3)
            width: border, // Border width
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color:color4, // Text color
              fontSize: 17.0,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    );
  }
}
