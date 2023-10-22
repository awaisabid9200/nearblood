import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ContColor.dart';

class CustomHorizontalBox extends StatelessWidget {
  final String svgAsset;// SVG image asset path
  final double height;
  final double weight;
  final String text;

  CustomHorizontalBox({required this.svgAsset,required this.height,required this.weight,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      width: 172,
      height: 66, // Adjust the width as needed
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Box1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgAsset,
            height:height, // Adjust the height as needed
            width: weight,
          ),
          SizedBox(width: 8.0),
          Text(
            text,
            style: TextStyle(fontSize: 16.0,color: Heading1,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
