import 'package:flutter/material.dart';
import 'package:nearblood/Constant/DonorList/DonorColors.dart';
import 'package:nearblood/Constant/SeachFilter/CustomBox2.dart';

import '../../Constant/CustomAppbar.dart';
import '../../Constant/DonorList/DropScreen.dart';
import '../../Constant/ProfileView/ContColor.dart';
import '../../Constant/SeachFilter/CheckBoxText.dart';
import '../../Constant/SeachFilter/CustomBox.dart';
import '../../Constant/SeachFilter/CustomBox3.dart';
import '../../Constant/SeachFilter/CustomContainer.dart';
import '../../Constant/SeachFilter/customButtons.dart';


class SearchFilter extends StatefulWidget {
  const SearchFilter({Key? key}) : super(key: key);

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: BackColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              CustomTextWithIcon(
                text: 'Search Filter',
                icon: Icons.close,
                iconColor: Heading1,
                iconSize: screenWidth <= 400 ? 30 : 35,
                subtitle: 'Search according To Your Need',
              ),
              SizedBox(
                height: 50,
              ),
              CustomSizedContainer(
                widthRatio: 0.9,
                heightRatio: 0.16,
                color: Box11,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 19, right: 19, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Type',
                        style: TextStyle(
                            fontSize: screenWidth <= 400 ? 10 : 12,
                            color: Heading2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: CustomBox(
                              color: Box11,
                              svgAsset: 'assets/BloodRequest/coin.svg',
                              text: 'All',
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Expanded(
                            child: CustomBox(
                              color: Box11,
                              svgAsset: 'assets/BloodRequest/coin.svg',
                              text: 'Free',
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Expanded(
                            child: CustomBox(
                              color: Box11,
                              svgAsset: 'assets/BloodRequest/coin.svg',
                              text: 'Paid',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              CustomSizedContainer(
                  widthRatio: 0.9,
                  heightRatio: 0.13,
                  color: Box11,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 16, right: 16, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Distance',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth <= 400 ? 10 : 12,
                                  color: Heading2),
                            ),
                            Text(
                              '3247 km',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth <= 400 ? 10 : 12,
                                  color: Heading2),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      thickness: 4,
                                      color: BtnLin2,
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      thickness: 4,
                                      height: 10,
                                      color: Box1,
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                  child: Icon(
                                    Icons.location_on,
                                    color: BtnLin2,
                                    size: screenWidth <= 400 ? 30 : 39,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 19,
              ),
              CustomSizedContainer(
                color: Box11,
                heightRatio: 0.25,
                widthRatio: 0.9,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 0, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Blood Group',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Heading2,
                            fontSize: screenWidth <= 400 ? 10 : 12),
                      ),
                      DonorPointer(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              CustomSizedContainer(
                widthRatio: 0.9,
                heightRatio: 0.25,
                color: Box22,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 19, right: 19, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sort By',
                        style: TextStyle(
                            fontSize: screenWidth <= 400 ? 10 : 12,
                            color: Heading2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomBox2(
                            color: Box2,
                            text: 'None',
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          CustomBox2(
                            color: Box2,
                            text: 'Aa-Zz',
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          CustomBox2(
                            color: Box2,
                            text: 'Zz-Aa',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenWidth <= 400 ? 8 : 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomBox2(
                            color: Box2,
                            text: 'Near By You',
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          CustomBox2(
                            color: Box2,
                            text: 'Populer',
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          CustomBox2(
                            color: Box2,
                            text: 'Recent',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              CustomSizedContainer(
                  color: Box11,
                  heightRatio: 0.6,
                  widthRatio: 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomBox3(
                          svgAsset: 'assets/BloodRequest/dropdown.svg',
                          text: 'Egypt',
                          color: Box11,
                          heading: 'Country'),
                      CustomBox3(
                          svgAsset: 'assets/BloodRequest/dropdown.svg',
                          text: 'as-Sinbillawayn',
                          color: Box11,
                          heading: 'State'),
                      CustomBox3(
                          svgAsset: 'assets/BloodRequest/dropdown.svg',
                          text: 'ad-daqahliyah',
                          color: Box11,
                          heading: 'City'),
                    ],
                  )),
              SizedBox(height: 19,),
              CheckBoxWithText(),
              SizedBox(height: screenWidth <= 400 ? 20 : 30,),
              Row(
                children: [
                  Expanded(
                    child: CustomGradientButton2(
                      text: 'Clear',
                      color1: BackColor, // Gradient start color
                      color2: BackColor, // Gradient end color
                      color3: Heading2, // Border color
                      color4: Heading2,
                      border: 0, // Border width
                      onPressed: () {
                        // Your action when the button is pressed
                      },
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: CustomGradientButton2(
                      text: 'Apply',
                      color1: BtnLin1, // Gradient start color
                      color2: BtnLin2, // Gradient end color
                      color3: BackColor,
                      color4: BackColor,// Border color
                      border: 0.0, // Border width
                      onPressed: () {
                        // Your action when the button is pressed
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

