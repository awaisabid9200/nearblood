import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), // Adjust the duration as needed
          () {
        // Navigate to the main screen or other screen
          Navigator.pushReplacementNamed(context, '/main');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenHeight = constraints.maxHeight;
          double screenWidth = constraints.maxWidth;

          return Stack(
            alignment: Alignment.bottomCenter,
            fit: StackFit.expand,
            children: <Widget>[
              SvgPicture.asset('assets/Heart_Shape.svg'),
              Positioned(
                top: screenHeight * 0.33, // Adjust the top position as needed
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/heart_text.png',
                      width: screenWidth * 0.7, // Adjust the width as needed
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}