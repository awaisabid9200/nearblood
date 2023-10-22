import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nearblood/Constant/DonorList/DonorColors.dart';
import '../../Constant/CustomButton.dart';
import '../../Constant/ProfileView/ContColor.dart';
import '../../Constant/ProfileView/CustomDivider.dart';
import '../../Constant/ProfileView/CustomHorizontalBox.dart';
import '../../Constant/ProfileView/CustomTextImage.dart';
import '../../Constant/ProfileView/threeBoxes.dart';

class ProfileScreen2 extends StatefulWidget {
  const ProfileScreen2({super.key});

  @override
  State<ProfileScreen2> createState() => _ProfileScreen2State();
}

class _ProfileScreen2State extends State<ProfileScreen2> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define font sizes and spacing based on screen width
    double nameTextSize = screenWidth <= 320 ? 18 : 24;
    double locationTextSize = screenWidth <= 320 ? 12 : 14;
    double distanceTextSize = screenWidth <= 320 ? 12 : 14;
    double boxesTextSize = screenWidth <= 320 ? 11 : 14;

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
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      'assets/ProfileAssets/back.svg',
                      height: MediaQuery.of(context).size.width <= 320 ? 18 : 22.55,
                      width: MediaQuery.of(context).size.width <= 320 ? 18 : 22.55,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/ProfileAssets/share.svg',
                    height: MediaQuery.of(context).size.width <= 320 ? 21 : 28,
                    width: MediaQuery.of(context).size.width <= 320 ? 21 : 28,
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
                    radius: screenWidth <= 320 ? 78 : 88,
                    backgroundImage:
                    AssetImage('assets/ProfileAssets/profile.jpeg'),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 0,
                    child: CircleAvatar(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          'assets/ProfileAssets/Arabic.svg',
                          height: screenWidth <= 320 ? 28 : 34,
                          width: screenWidth <= 320 ? 28 : 34,
                        ),
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
                    color: Heading1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/ProfileAssets/location.svg',
                      height: screenWidth <= 320 ? 10 : 12,
                      width: screenWidth <= 320 ? 5.6 : 7.12,
                    ),
                    Text(
                      'as-Sinbillawayn, ad-daqahliyah',
                      style: TextStyle(
                        fontSize: locationTextSize,
                        color: Heading2,
                      ),
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
                SvgPicture.asset(
                  'assets/ProfileAssets/distance.svg',
                  height: screenWidth <= 320 ? 18 : 24,
                  width: screenWidth <= 320 ? 18 : 24,
                ),
                Positioned(
                  bottom: 3,
                  child: Text(
                    '725 km',
                    style: TextStyle(
                      color: Heading2,
                      fontSize: distanceTextSize,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 37,
            ),
            Container(
              height: screenWidth <= 320 ? 44 : 66,
              child: ListView(
                scrollDirection: Axis.horizontal, // Enable horizontal scrolling
                children: [
                  CustomHorizontalBox(
                    svgAsset: 'assets/ProfileAssets/2861107.svg',
                    text: 'Basic Info',
                    height: screenWidth <= 320 ? 12.9 : 19.37,
                    weight: screenWidth <= 320 ? 11.48 : 17.22,
                  ),
                  CustomHorizontalBox(
                    svgAsset: 'assets/ProfileAssets/2861107.svg',
                    text: 'Blood Donors',
                    height: screenWidth <= 320 ? 12.9 : 19.37,
                    weight: screenWidth <= 320 ? 11.48 : 17.22,
                  ),
                  CustomHorizontalBox(
                    svgAsset: 'assets/ProfileAssets/2861107.svg',
                    text: 'Hospital',
                    height: screenWidth <= 320 ? 12.9 : 19.37,
                    weight: screenWidth <= 320 ? 11.48 : 17.22,
                  ),
                  // Add more CustomHorizontalBox widgets as needed
                ],
              ),
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
                  svgImagePath:
                  'assets/ProfileAssets/Last Donation Date.svg',
                  text1: 'Last Donation Date',
                  text2: '20-05-2020',
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
                  svgImagePath: 'assets/ProfileAssets/Member Since.svg',
                  text1: 'Member Since',
                  text2: '14-04-2020',
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
            Container(
              height: 53,
              width: 53,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: BtnLin2,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26, // Use your desired shadow color
                    blurRadius: 5, // Adjust the blur radius as needed
                    spreadRadius: 1, // Adjust the spread radius as needed
                    offset: Offset(0, 3), // Adjust the offset (X, Y) as needed
                  ),
                ],
              ),
              child: SvgPicture.asset('assets/ProfileAssets/pencil.svg'),
            ),
            SizedBox(
              height: 21,
            ),
          ],
        ),
      ),
    );
  }
}
