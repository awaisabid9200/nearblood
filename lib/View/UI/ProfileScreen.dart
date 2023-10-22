import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nearblood/Constant/DonorList/DonorColors.dart';
import '../../Constant/CustomButton.dart';
import '../../Constant/ProfileView/ContColor.dart';
import '../../Constant/ProfileView/CustomDivider.dart';
import '../../Constant/ProfileView/CustomTextImage.dart';
import '../../Constant/ProfileView/threeBoxes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define font sizes and spacing based on screen width

    double nameTextSize = screenWidth <= 320 ? 18 : 24;
    double locationTextSize = screenWidth <= 320 ? 12 : 14;
    double distanceTextSize = screenWidth <= 320 ? 12 : 14;
    double iconWidth = screenWidth <= 320 ? 18.0 : 26.0;
    double iconHeight = screenWidth <= 320 ? 24.0 : 32.0;
    double viewsIconWidth = screenWidth <= 320 ? 24.0 : 34.0;
    double viewsIconHeight = screenWidth <= 320 ? 16.0 : 23.0;
    double donationsIconWidth = screenWidth <= 320 ? 22.0 : 30.0;
    double donationsIconHeight = screenWidth <= 320 ? 16.0 : 22.0;

    return Scaffold(
      backgroundColor: BackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/ProfileAssets/back.svg',
                    height: MediaQuery.of(context).size.width <= 320 ? 18 : 22.55,
                    width: MediaQuery.of(context).size.width <= 320 ? 18 : 22.55,
                  ),
                  SvgPicture.asset(
                    'assets/ProfileAssets/share.svg',
                    height: MediaQuery.of(context).size.width <= 320 ? 24 : 28,
                    width: MediaQuery.of(context).size.width <= 320 ? 24 : 28,
                  ),
                ],
              )
            ),
            SizedBox(
              height: 19,
            ),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width <= 320 ? 68 : 88,
                    backgroundImage: AssetImage('assets/ProfileAssets/profile.jpeg'),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.width <= 320 ? 10 : 14,
                    right: 0,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width <= 320 ? 16 : 20,
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset(
                        'assets/ProfileAssets/Arabic.svg',
                        height:  screenHeight <= 320 ? 26 : 34,
                        width: screenWidth <= 320 ? 26 : 34,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Column(
              children: [
                Text(
                  'Mina Kulas',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: nameTextSize,
                      color: Heading1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/ProfileAssets/location.svg',
                      height: 12,
                      width: 7.12,
                    ),
                    Text(
                      'as-Sinbillawayn, ad-daqahliyah',
                      style: TextStyle(fontSize: locationTextSize, color: Heading2),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset('assets/ProfileAssets/distance.svg'),
                Positioned(
                    bottom: 3,
                    child: Text(
                      '725 km',
                      style: TextStyle(color: Heading2, fontSize: distanceTextSize),
                    )),
              ],
            ),
            SizedBox(
              height: 37,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomColoredBox(
                  backgroundColor: Box1,
                  svgImage: SvgPicture.asset(
                    'assets/ProfileAssets/blood_type.svg',
                    width: iconWidth,
                    height: iconHeight,
                  ),
                  text: 'AB-',
                ),
                CustomColoredBox(
                  backgroundColor: Box2,
                  svgImage: SvgPicture.asset(
                    'assets/ProfileAssets/total_views.svg',
                    width: viewsIconWidth,
                    height: viewsIconHeight,
                  ),
                  text: '180',
                ),
                CustomColoredBox(
                  backgroundColor: Box3,
                  svgImage: SvgPicture.asset(
                    'assets/ProfileAssets/donations.svg',
                    width: donationsIconWidth,
                    height: donationsIconHeight,
                  ),
                  text: '15',
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            CustomDivider(
              DividerColor: DividerColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  flex: 1,
                  child: CustomTextWithImage(
                    svgImagePath: 'assets/ProfileAssets/gender.svg',
                    text1: 'Gender',
                    text2: 'Female',
                  ),
                ),
                Container(
                  height: 70,
                  color: DividerColor,
                  width: 1.5,
                ),
              ],
            ),
            Column(
              children: [
                CustomDivider(
                  DividerColor: DividerColor,
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextWithImage(
                  svgImagePath: 'assets/ProfileAssets/address.svg',
                  text1: 'Address',
                  text2: 'El-Senbellawein',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomDivider(
                  DividerColor: DividerColor,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                CustomTextWithImage(
                  svgImagePath: 'assets/ProfileAssets/Habbits.svg',
                  text1: 'Habbits',
                  text2: 'Gym, Football, Reading',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomDivider(
                  DividerColor: DividerColor,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                CustomTextWithImage(
                  svgImagePath: 'assets/ProfileAssets/Last Donation Date.svg',
                  text1: 'Last Donation Date',
                  text2: '20-05-2020',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomDivider(
                  DividerColor: DividerColor,
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomGradientButton(
                  text: '010 205 1745',
                  iconData: Icons.phone,
                  onPressed: () {
                    // Your action when the button is pressed
                  },
                  height: MediaQuery.of(context).size.width <= 320 ? 42 : 53,
                  weight: MediaQuery.of(context).size.width <= 320 ? 213 : 267,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.width <= 320 ? 42 : 53,
                  width: MediaQuery.of(context).size.width <= 320 ? 42 : 53,
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width <= 320 ? 10 : 13),
                  decoration: BoxDecoration(
                    color: BtnLin2,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset('assets/ProfileAssets/Navigation.svg'),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}

