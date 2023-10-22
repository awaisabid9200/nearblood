import 'package:flutter/material.dart';
import 'package:nearblood/Constant/ProfileView/ContColor.dart';
import 'DonorList/DonorColors.dart';

class CustomFloatingActionButton extends StatelessWidget {

  final VoidCallback onPressed;

  const CustomFloatingActionButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Define sizes and offsets based on screen width
    double containerSize = screenWidth <= 320 ? 50.0 : 70.0;
    double iconSize = screenWidth <= 320 ? 30.0 : 38.62;
    double boxShadowSpreadRadius = screenWidth <= 320 ? 1 : 2;
    double boxShadowBlurRadius = screenWidth <= 320 ? 5 : 9;
    double boxShadowOffset = screenWidth <= 320 ? 2 : 3;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: containerSize,
        height: containerSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [BtnLin1, BtnLin2],
          ),
          boxShadow: [
            BoxShadow(
              color: Heading2,
              spreadRadius: boxShadowSpreadRadius,
              blurRadius: boxShadowBlurRadius,
              offset: Offset(0, boxShadowOffset),
            ),
          ],
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: iconSize,
        ),
      ),
    );
  }
}
