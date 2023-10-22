import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nearblood/Constant/MainScreen/MainScreenColor.dart';
import '../../Constant/DonorList/DonorAppBar.dart';
import '../../Constant/DonorList/DonorColors.dart';
import '../../Constant/DonorList/DropScreen.dart';
import '../../Constant/FloatingButton.dart';
import '../../Model/DropModel.dart';

class DonorScreenList extends StatelessWidget {
  const DonorScreenList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Calculate text sizes and other properties based on screen width
    double containerHeight = screenWidth <= 320 ? 100 : 116;
    double containerPadding = screenWidth <= 320 ? 10 : 20;
    double avatarRadius = screenWidth <= 320 ? 30 : 30;
    double svgWidth = screenWidth <= 320 ? 25 : 35.35;
    double svgHeight = screenWidth <= 320 ? 32 : 45.45;
    double smallText = screenWidth <= 320 ? 10 : 12;
    double kmW = screenWidth <= 414 ? 15 : 15;
    double kmh = screenWidth <= 414 ? 10 : 15;
    double largeText = screenWidth <= 320 ? 10 : 16;

    return Scaffold(
      backgroundColor: BackColor,
      appBar: DonorAppBar(),
      body: Padding(
        padding: EdgeInsets.all(containerPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 38,
            ),
            DonorPointer(),
            SizedBox(
              height: 50,
            ),
            FittedBox(
              child: Text(
                'All Blood Donors',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: HeadingColor,
                ),
              ),
            ),
            SizedBox(
              height: 27,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: dummyData.length,
                itemBuilder: (context, index) {
                  final item = dummyData[index];
                  return Container(
                    margin: EdgeInsets.only(bottom: 15),
                    height: containerHeight,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: blur,
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: containerPadding),
                      child: ListTile(
                        leading: Stack(
                          children: [
                            CircleAvatar(
                              radius: avatarRadius,
                              backgroundImage: AssetImage(item['image']),
                            ),
                            Positioned(
                              top: 29,
                              right: 1,
                              child: CircleAvatar(
                                backgroundColor: BackColor,
                                radius: 10,
                                child: SvgPicture.asset(
                                  item['smallPic'],
                                  height: 18,
                                  width: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 17),
                          child: Text(
                            item['title'],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/DonorScreen/location.svg',
                                  width: 7.12,
                                  height: 11.39,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  item['subtitle'],
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  width: screenWidth <= 414 ? 25 : 36,
                                ),
                                Stack(
                                  children: [
                                    SvgPicture.asset(
                                      item['distance'],
                                      width: kmW,
                                      height: kmh,
                                    ),
                                    Positioned(
                                      bottom: screenWidth <= 414 ? 0 : 2,
                                      left: screenWidth <= 414 ? 7 : 13,
                                      child: Text(
                                        item['km'],
                                        style: TextStyle(fontSize: smallText),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/DonorScreen/views.svg',
                                  width: 7.12,
                                  height: 11.39,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  item['views'],
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  width: 8.78,
                                ),
                                SvgPicture.asset(
                                  'assets/DonorScreen/user.svg',
                                  width: 7.12,
                                  height: 11.39,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  item['user'],
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                        trailing: Stack(
                          children: [
                            SvgPicture.asset(
                              item['icon'],
                              width: svgWidth,
                              height: svgHeight,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              top: screenWidth <= 320 ? 15 : 20,
                              left: screenWidth <= 320 ? 5 : 8,
                              child: FittedBox(
                                child: Text(
                                  item['blood'],
                                  style: TextStyle(
                                    color: BackColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: largeText,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/ProfileScreen');
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/AddReminder');
        },
      ),
    );
  }
}
