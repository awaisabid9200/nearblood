import 'package:flutter/material.dart';
import 'package:nearblood/Constant/ProfileView/ContColor.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset('assets/BG.png'),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.45), // Adjust the value as needed
              child: Center(
                child: Text(
                  'Login/Register',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: screenHeight * 0.02, // Adjust the value as needed
                    color: Heading1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
