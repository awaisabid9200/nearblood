import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'MainScreenColor.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight = 60.0; // Adjust the height as needed

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu,
            size: 28.71,
            color: IconColor,
          ),
          onPressed: () {
            // Handle menu icon tap
          },
        ),
        actions: [
          InkWell(
            onTap: () {
              // Handle second icon tap
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/MainScreen/notification.svg',
                width: 28.71, // Adjust the width to your desired size
                height: 28.71, // Adjust the height to your desired size
              ),
            ),
          ),
          SizedBox(width: 12,),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/ProfileScreen2');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/MainScreen/profile.svg',
                width: 28.71, // Adjust the width to your desired size
                height: 28.71, // Adjust the height to your desired size
              ),
            ),
          ),
        ],
      ),
    );
  }
}
