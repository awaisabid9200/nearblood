import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../MainScreen/MainScreenColor.dart';

class DonorPointer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    Widget createPointer(String text) {
      return Container(
        child: Stack(
          children: [
            SvgPicture.asset(
              'assets/DonorScreen/Drop.svg',
              width: screenWidth * 0.055,
              height: screenHeight * 0.065,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: screenHeight * 0.025,
              left: screenWidth * 0.011,
              right: screenWidth * 0.011,
              child: Center(
                child: FittedBox(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: HeadingColor,
                      fontSize: screenHeight * 0.020,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Conditionally create containers based on screen width
    Widget donorContainers;
    if (screenWidth <= 320) {
      donorContainers = Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                    child: createPointer('A+')),
                Container(
                  margin: EdgeInsets.only(top: screenHeight * 0.03, left: 5),
                  child: createPointer('B+'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                    child: createPointer('A-')),
                Container(
                  margin: EdgeInsets.only(top: screenHeight * 0.03, left: 5),
                  child: createPointer('B-'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                    child: createPointer('AB+')),
                Container(
                  margin: EdgeInsets.only(top: screenHeight * 0.03, left: 5),
                  child: createPointer('AB-'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                    child: createPointer('O+')),
                Container(
                  margin: EdgeInsets.only(top: screenHeight * 0.03, left: 5),
                  child: createPointer('O-'),
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      donorContainers = Center(
        child: Wrap(
          children: [
            createPointer('A+'),
            Container(
              margin: EdgeInsets.only(
                top: screenHeight * 0.03,
              ),
              child: createPointer('B+'),
            ),
            createPointer('A-'),
            Container(
              margin: EdgeInsets.only(
                top: screenHeight * 0.03,
              ),
              child: createPointer('B-'),
            ),
            createPointer('AB+'),
            Container(
              margin: EdgeInsets.only(
                top: screenHeight * 0.03,
              ),
              child: createPointer('AB-'),
            ),
            createPointer('O+'),
            Container(
              margin: EdgeInsets.only(
                top: screenHeight * 0.03,
              ),
              child: createPointer('O-'),
            ),
          ],
        ),
      );
    }
    return donorContainers;
  }
}
