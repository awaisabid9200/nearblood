import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nearblood/Constant/DonorList/DonorColors.dart';
import 'package:nearblood/Constant/ProfileView/ContColor.dart';

import 'CustomSwitch.dart';

class CustomContainerReminder extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;

  CustomContainerReminder({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
  });

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width;
    double containerHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(bottom: 19),
      width: containerWidth, // Adjust the width as needed based on screen size
      height: containerHeight*0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: BackColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 0,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(text1,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Heading2)),
                  Text(text2,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Heading1)),
                ],
              ),
              Column(
                children: [
                  Text(text1,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Heading2)),
                  Text(text2,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Heading1)),
                ],
              ),
              Stack(
                children: [
                  SvgPicture.asset(
                    'assets/DonorScreen/Drop_Filled.svg', // Replace with your SVG file path
                    width: 37.35, // Adjust the width as needed
                    height: 45.45, // Adjust the height as needed
                  ),
                  Positioned(
                    top: 18,
                    left: 5,
                    child: FittedBox(
                      child: Text(text5,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: BackColor)),
                    ),
                  )
                ],
              ),
            ],
          ),
          CustomSwitch(),
        ],
      ),
    );
  }
}
