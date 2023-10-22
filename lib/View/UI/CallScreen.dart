import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nearblood/Constant/MainScreen/MainScreenColor.dart';
import '../../Constant/CustomAppbar.dart';
import '../../Constant/DonorList/DonorAppBar.dart';
import '../../Constant/DonorList/DonorColors.dart';
import '../../Constant/DonorList/DropScreen.dart';
import '../../Constant/FloatingButton.dart';
import '../../Constant/ProfileView/ContColor.dart';
import '../../Model/DropModel.dart';

class CallScreenList extends StatefulWidget {
  const CallScreenList({super.key});

  @override
  State<CallScreenList> createState() => _CallListState();
}

class _CallListState extends State<CallScreenList> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double containerHeight = screenWidth <= 320 ? 100 : 116;
    double containerPadding = screenWidth <= 320 ? 10 : 20;
    double avatarRadius = screenWidth <= 320 ? 30 : 30;
    double svgWidth = screenWidth <= 320 ? 25 : 35.35;
    double svgHeight = screenWidth <= 320 ? 32 : 45.45;
    double smallText = screenWidth <= 320 ? 10 : 12;
    double kmW = screenWidth <= 320 ? 15 : 15;
    double kmh = screenWidth <= 320 ? 10 : 15;
    double largeText = screenWidth <= 320 ? 10 : 16;

    return Scaffold(
      backgroundColor: BackColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            // Content
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: EdgeInsets.all(containerPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextWithIcon(
                          text: 'Calls',
                          icon: Icons.keyboard_arrow_left,
                          iconColor: Heading1,
                          iconSize: 32,
                          subtitle: '20 Calls from last month',
                        ),
                        SizedBox(height: 38),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // List of items
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  final item = dummyData[index];
                  return Dismissible(
                    key: Key(item['title']),
                    background: buildSwipeActionContainer(),
                    child: Container(
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
                      child: buildListTile(item),
                    ),
                    onDismissed: (direction) {
                      if (direction == DismissDirection.endToStart) {
                        // Handle phone call action
                        // You can add your logic here to make a phone call
                      }
                    },
                  );
                },
                childCount: dummyData.length,
              ),
            ),
          ],
        ),
      ),
    );
  }


// Function to build the swipe action container
  Widget buildSwipeActionContainer() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.green, Colors.blue], // Customize your gradient colors
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.phone,
              color: Colors.white,
              size: 36,
            ),
            SizedBox(height: 8),
            Text(
              'Call',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to build the list tile
  Widget buildListTile(Map<String, dynamic> item) {

    final screenWidth = MediaQuery.of(context).size.width;
// Calculate text sizes and other properties based on screen width
    double containerPadding = screenWidth <= 320 ? 10 : 20;

    return Padding(
      padding: EdgeInsets.only(top: containerPadding),
      child: ListTile(
        leading: buildAvatar(item),
        title: buildTitle(item),
        subtitle: buildSubtitle(item),
        trailing: buildTrailing(item),
        onTap: () {
          // Handle item tap if needed
        },
      ),
    );
  }

  // Function to build the avatar
  Widget buildAvatar(Map<String, dynamic> item) {

    final screenWidth = MediaQuery.of(context).size.width;
// Calculate text sizes and other properties based on screen width
    double avatarRadius = screenWidth <= 320 ? 30 : 30;

    return Stack(
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
    );
  }

  // Function to build the title
  Widget buildTitle(Map<String, dynamic> item) {
    return Padding(
      padding: const EdgeInsets.only(top: 17),
      child: Text(
        item['title'],
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Function to build the subtitle
  Widget buildSubtitle(Map<String, dynamic> item) {

    final screenWidth = MediaQuery.of(context ).size.width;

    return Column(
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
              width: screenWidth <= 375 ? 10 : 36,
            ),
            buildDistance(item),
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
    );
  }

  // Function to build the distance
  Widget buildDistance(Map<String, dynamic> item) {

    final screenWidth = MediaQuery.of(context).size.width;

    double smallText = screenWidth <= 390 ? 10 : 12;
    double kmW = screenWidth <= 390 ? 15 : 15;
    double kmh = screenWidth <= 390 ? 10 : 15;

    return Stack(
      children: [
        SvgPicture.asset(
          item['distance'],
          width: kmW,
          height: kmh,
        ),
        Positioned(
          bottom: screenWidth <= 390 ? 0 : 2,
          left: screenWidth <= 390 ? 9 : 13,
          child: Text(
            item['km'],
            style: TextStyle(fontSize: smallText),
          ),
        ),
      ],
    );
  }

  // Function to build the trailing widget
  Widget buildTrailing(Map<String, dynamic> item) {

    final screenWidth = MediaQuery.of(context).size.width;

    double svgWidth = screenWidth <= 320 ? 25 : 35.35;
    double svgHeight = screenWidth <= 320 ? 32 : 45.45;
    double largeText = screenWidth <= 320 ? 10 : 16;

    return Stack(
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
    );
  }
}
