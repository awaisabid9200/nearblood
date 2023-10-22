
import 'package:flutter/material.dart';
import 'package:nearblood/Constant/DonorList/DonorColors.dart';

class CustomBtnSimple extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomBtnSimple({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: 53,
        width: 294,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [BtnLin1,BtnLin2], // Customize gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30.0), // Customize button shape
        ),
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0), // Customize padding
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white, // Customize text color
            fontSize: 18.0, // Customize text size
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}