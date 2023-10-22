import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nearblood/Constant/MainScreen/CustomAppBar.dart';
import 'package:nearblood/Constant/MainScreen/CustomCard.dart';

import '../../Constant/MainScreen/MainScreenColor.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    // Define font sizes and spacing based on screen width
    double appBarTextSize = screenWidth <= 320 ? 18 : 28;
    double headingTextSize = screenWidth <= 320 ? 24 : 37;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 58),
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              "assets/MainScreen/bg_watermark.svg",
              fit: BoxFit.cover,
              width: screenWidth,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 58),
                Center(
                  child: Text(
                    'GIVE THE GIFT OF LIFE',
                    style: TextStyle(
                        fontSize: appBarTextSize, color: Colors.black),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'DONATE',
                        style: TextStyle(
                          color: HeadingColor,
                          fontSize: headingTextSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'BLOOD',
                        style: TextStyle(
                          color: BloodColor,
                          fontSize: headingTextSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 57),
                GridView.count(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    CustomCard(
                      imagePath: 'assets/MainScreen/blood donor.svg',
                      title: 'Donors',
                      description: '30 in your city', onPressed: () {
                      Navigator.pushNamed(context, '/DonorScreenList');
                    },),
                    CustomCard(
                      imagePath: 'assets/MainScreen/Requests.svg',
                      title: 'Requests',
                      description: '20 in your city', onPressed: () {Navigator.pushNamed(
                        context, '/BloodRequest');},),
                    CustomCard(
                      imagePath: 'assets/MainScreen/blood-bank.svg',
                      title: 'Blood Bank',
                      description: '10 in your city', onPressed: () {},),
                    CustomCard(
                      imagePath: 'assets/MainScreen/hospital.svg',
                      title: 'Hospitals',
                      description: '35 in your city', onPressed: () {},),
                    CustomCard(
                      imagePath: 'assets/MainScreen/clinic.svg',
                      title: 'Clinics',
                      description: '45 in your city', onPressed: () {},),
                    CustomCard(
                      imagePath: 'assets/MainScreen/medicine.svg',
                      title: 'Pharmacy',
                      description: '20 in your city', onPressed: () {},),
                    CustomCard(
                      imagePath: 'assets/MainScreen/microscope.svg',
                      title: 'Labortary',
                      description: '10 in your city', onPressed: () {},),
                    CustomCard(
                      imagePath: 'assets/MainScreen/Blog.svg',
                      title: 'Blog',
                      description: '14 in your city', onPressed: () {},),
                    CustomCard(
                      imagePath: 'assets/MainScreen/emergency-call.svg',
                      title: 'Calls',
                      description: '24 in your city', onPressed: () {
                      Navigator.pushNamed(context, '/CallScreenList');
                    },),
                    CustomCard(
                      imagePath: 'assets/MainScreen/calendar.svg',
                      title: 'Reminders',
                      description: '17 in your city', onPressed: () {
                      Navigator.pushNamed(
                          context, '/ReminderScreen');
                    },),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
