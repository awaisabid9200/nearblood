import 'package:flutter/material.dart';

class CustomSizedContainer extends StatelessWidget {
  final Color color;
  final double heightRatio; // Height as a ratio of screen height (0 to 1)
  final double widthRatio; // Width as a ratio of screen width (0 to 1)
  final Widget child;

  CustomSizedContainer({
    required this.color,
    required this.heightRatio,
    required this.widthRatio,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    double containerHeight = screenHeight * heightRatio;
    double containerWidth = screenWidth * widthRatio;

    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: child,

    );
  }
}
