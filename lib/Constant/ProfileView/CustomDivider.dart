import 'package:flutter/material.dart';
import 'package:nearblood/Constant/ProfileView/ContColor.dart';

class CustomDivider extends StatelessWidget {
  final double height;
  final Color DividerColor;

  CustomDivider({
    this.height = 1.5, // Default height is 1.0
    required this.DividerColor, // Default color is grey
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: DividerColor,
    );
  }
}

